<?php

namespace App\Http\Controllers;

use App\Kyc;
use App\Admin;
use App\User;
use App\BasicSetting;
use App\GeneralSetting;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class KycController extends Controller
{
    public function __construct()
    {
        $data = [];
        $data['general'] = GeneralSetting::first();
        // $this->middleware('auth');
        $general_all = GeneralSetting::first();
        $this->site_title = $general_all->title;
        $this->gen_phone = $general_all->number;
        $this->gen_email = $general_all->email;
        $this->site_color = $general_all->color;

        View::share('site_title', $this->site_title);
        View::share('gen_phone', $this->gen_phone);
        View::share('gen_email', $this->gen_email);
        View::share('site_color', $this->site_color);
    }

    public function index(Request $request)
    {
        $query = Kyc::with('user')->orderBy('created_at', 'desc');

        if ($request->has('search') && $request->get('search') !== null) {
            $search = $request->get('search');
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%$search%")->orWhere('country', 'like', "%$search%");
            });
        }

        $kycs = $query->get();
         $adminUser = Auth::guard('admin')->user();


        $general = GeneralSetting::first();
        $basic = BasicSetting::first();
        return view('kyc.index', [
            'site_title' => $general->title,
            'general' => $general,
            'basic' => $basic,
            'page_title' => 'Show KYC',
            'admin' =>  $adminUser ? Admin::findOrFail($adminUser->id) : null,
            'kycs' => $kycs,
        ]);
    }

     public function userIndex(Request $request)
{
    $general   = GeneralSetting::first();
    $basic     = BasicSetting::first();
    $adminUser = Auth::guard('admin')->user();

    if ($adminUser) {
        // ✅ Admin sees all
        $kycs = Kyc::with('user')->orderBy('created_at', 'desc')->get();
    } else {
        // ✅ Normal user sees only their own
        $kycs = Kyc::with('user')
                   ->where('user_id', auth()->id())
                   ->orderBy('created_at', 'desc')
                   ->get();
    }

     //extra
        $this->data['member'] = User::findOrFail(Auth::user()->id);
        $this->data['namew'] = $this->data['member']->ID_Number;


    return view('kyc.index', [
        'site_title' => $general->title,
        'general'    => $general,
        'basic'      => $basic,
        'page_title' => 'Show KYC',
        'admin'      => $adminUser, // Admin model or null
        'kycs'       => $kycs,
          'member' => User::findOrFail(Auth::user()->id),
            'namew' => $this->data['member']->ID_Number,
             'withdrawalcnt' => DB::select("SELECT * FROM users WHERE ID_Number = ?", [$this->data['namew']])
    ]);
}

    public function create()
    {
        $users = User::all();

        $general_all = GeneralSetting::first();

        $data['site_title'] = $general_all->title;
        $data['general'] = $general_all;
        $data['basic'] = BasicSetting::first();
        $data['page_title'] = 'Create KYC';
        $data['admin'] = Auth::guard('admin')->user();
        $data['users'] = $users;
        $user = auth()->user();
        $data['member'] = User::findOrFail($user->id);
        $data['namew'] = $data['member']->ID_Number;
        $data['withdrawalcnt'] = DB::select('SELECT * FROM users WHERE ID_Number = ?', [$data['namew']]);

        return view('kyc.create', $data);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|exists:users,id',
            'name' => 'required|string',
            'country' => 'required|string',
            'proof' => 'required|image|mimes:jpeg,png,jpg|max:2048',
            'passport' => 'required|image|mimes:jpeg,png,jpg|max:2048',
            'details' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data = $validator->getData();

        $data['details'] = !empty($data['details']) ? json_decode($data['details'], true) : null;

        $data['proof'] = $request->file('proof')->store('kyc/proofs', 'public');
        $data['passport'] = $request->file('passport')->store('kyc/passports', 'public');

        $kyc = Kyc::create($data);

        return redirect()->route('kyc.show', $kyc->id)->with('success', 'KYC created successfully.');
    }

    public function show(Kyc $kyc)
    {
        $general_all = GeneralSetting::first();

        $data['site_title'] = $general_all->title;
        $data['general'] = $general_all;
        $data['basic'] = BasicSetting::first();
        $data['page_title'] = 'Show KYC';
        // $data['admin'] = Auth::guard('admin')->user();
        $users = User::all();
        $data['kyc'] = $kyc;
        $data['users'] = $users;
        $user = auth()->user();
        $data['member'] = User::findOrFail($user->id);
        $data['namew'] = $data['member']->ID_Number;
        $data['withdrawalcnt'] = DB::select('SELECT * FROM users WHERE ID_Number = ?', [$data['namew']]);

        return view('kyc.show', $data);
    }

    public function edit(Kyc $kyc)
    {
        $users = User::all();
        $general_all = GeneralSetting::first();

        $data['site_title'] = $general_all->title;
        $data['general'] = $general_all;
        $data['basic'] = BasicSetting::first();
        $data['page_title'] = 'Edit KYC';
        // $data['admin'] = Auth::guard('admin')->user();
        $data['users'] = $users;
        $data['kyc'] = $kyc; // include the KYC record to edit
        $data['users'] = $users;
        $user = auth()->user();
        $data['member'] = User::findOrFail($user->id);
        $data['namew'] = $data['member']->ID_Number;
        $data['withdrawalcnt'] = DB::select('SELECT * FROM users WHERE ID_Number = ?', [$data['namew']]);

        return view('kyc.edit', $data);
    }

    public function update(Request $request, Kyc $kyc)
    {
         $validator = Validator::make($request->all(),[
            'name' => 'required|string|max:255',
            'country' => 'required|string|max:100',
            'proof' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'passport' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'details' => 'nullable|array',
        ]);

        $validated =  $validator->getData();

        if ($request->hasFile('proof')) {
            if ($kyc->proof) {
                Storage::disk('public')->delete($kyc->proof);
            }
            $validated['proof'] = $request->file('proof')->store('kyc/proofs', 'public');
        }

        if ($request->hasFile('passport')) {
            if ($kyc->passport) {
                Storage::disk('public')->delete($kyc->passport);
            }
            $validated['passport'] = $request->file('passport')->store('kyc/passports', 'public');
        }

        $kyc->update($validated);

        return redirect()->route('kyc.show', $kyc->id)->with('success', 'KYC updated successfully.');
    }

    public function destroy(Kyc $kyc)
    {
        if ($kyc->proof) {
            Storage::disk('public')->delete($kyc->proof);
        }
        if ($kyc->passport) {
            Storage::disk('public')->delete($kyc->passport);
        }
        $kyc->delete();

        return redirect()->route('kyc.index')->with('success', 'KYC deleted successfully.');
    }
}
