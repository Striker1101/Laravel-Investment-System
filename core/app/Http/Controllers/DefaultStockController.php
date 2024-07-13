<?php
namespace App\Http\Controllers;

use App\BasicSetting;
use App\DefaultStock;
use App\GeneralSetting;
use App\ManualBank;
use App\ManualCrypto;
use App\ManualPayment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class ManualPaymentController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function getMethod()
    {
        $data['general'] = GeneralSetting::first();
        $data['basic'] = BasicSetting::first();
        $data['site_title'] = $data['general']->title;
        $data['page_title'] = "Manage Bank";
        $data['stock'] = DefaultStock::all();
        return view('bank.manage-bank', $data);
    }

}