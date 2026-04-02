<?php

namespace App\Http\Controllers;

use App\Wallet;
use App\UserWallet;
use Illuminate\Http\Request;
use App\GeneralSetting;

class WalletController extends Controller
{
    // --- ADMIN METHODS ---

     public function __construct()
    {
        $this->middleware('auth:admin');
        $general_all = GeneralSetting::first();
        $this->site_title = $general_all->title;
        $this->gen_phone = $general_all->number;
        $this->gen_email = $general_all->email;
        $this->site_color = $general_all->color;

        \Illuminate\Support\Facades\View::share('general', $general_all);
        \Illuminate\Support\Facades\View::share('site_title', $this->site_title);
        \Illuminate\Support\Facades\View::share('basic', \App\BasicSetting::first());
    }



    public function adminIndex()
    {
        $wallets = Wallet::all();
        $page_title = 'Create Wallets';
        return view('dashboard.wallets.index', compact('wallets', 'page_title'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'network' => 'required|string',
        ]);

        Wallet::create($request->all());
        return redirect()->back()->with('message', 'Wallet type added successfully.')->with('type', 'success');
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'network' => 'required|string',
        ]);

        $wallet = Wallet::findOrFail($id);
        $wallet->update($request->all());
        return redirect()->back()->with('message', 'Wallet type updated successfully.')->with('type', 'success');
    }

    public function destroy($id)
    {
        $wallet = Wallet::findOrFail($id);
        $wallet->delete();
        return redirect()->back()->with('message', 'Wallet type deleted successfully.')->with('type', 'success');
    }

    public function userWalletsIndex()
    {
        $userWallets = UserWallet::with(['walletType', 'user'])->get();
        $page_title = 'User Connected Wallets';
        return view('dashboard.wallets.user_wallets', compact('userWallets', 'page_title'));
    }
}