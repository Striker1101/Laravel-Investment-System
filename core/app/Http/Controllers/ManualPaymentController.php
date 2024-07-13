<?php

namespace App\Http\Controllers;

use App\BasicSetting;
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
        $data['bank'] = ManualBank::all();
        $data['crypto'] = ManualCrypto::all();
        return view('bank.manage-bank', $data);
    }
    public function storeMethod(Request $request)
    {

        $rules = array(
            'name' => 'required|unique:manual_banks,name',
            'acc_name' => 'required',
            'acc_number' => 'required',
            'acc_code' => 'required',
            'fix' => 'required',
            'percent' => 'required',
            'minimum' => 'required',
            'maximum' => 'required',
        );
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails())
        {
            return redirect()->back();
        } else
        {
            $category = ManualBank::create($request->all());
            return Response::json($category);
        }
    }

    public function storeMethodCrypto(Request $request)
    {
        $rules = [
            'name' => 'required',
            'wallet_address' => 'required',
            'wallet_type' => 'required',
            'fix' => 'required',
            'percent' => 'required',
            'minimum' => 'required',
            'maximum' => 'required',
        ];
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails())
        {
            return response()->json(['errors' => $validator->errors()], 400);
        }


        $category = ManualCrypto::create($request->all());
        return Response::json($category);

    }
    public function editMethod($task_id)
    {
        $category = ManualBank::find($task_id);
        return Response::json($category);
    }

    public function editMethodCrypto($task_id)
    {
        $category = ManualCrypto::find($task_id);
        return Response::json($category);
    }
    public function updateMethod(Request $request, $task_id)
    {
        $cat = ManualBank::find($task_id);
        $rules = array(
            'name' => 'required|unique:manual_banks,name,' . $cat->id,
            'acc_name' => 'required',
            'acc_number' => 'required',
            'acc_code' => 'required',
            'fix' => 'required',
            'percent' => 'required',
            'minimum' => 'required',
            'maximum' => 'required',
        );
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails())
        {
            return redirect()->back();
        } else
        {
            $cat->name = $request->name;
            $cat->acc_name = $request->acc_name;
            $cat->acc_number = $request->acc_number;
            $cat->acc_code = $request->acc_code;
            $cat->minimum = $request->minimum;
            $cat->maximum = $request->maximum;
            $cat->save();
            return Response::json($cat);
        }
    }

    public function updateMethodCrypto(Request $request, $task_id)
    {
        $cat = ManualCrypto::find($task_id);
        if (!$cat)
        {
            return response()->json(['error' => 'Task not found'], 404);
        }

        $rules = [
            'name' => 'required',
            'wallet_address' => 'required',
            'wallet_type' => 'required',
            'fix' => 'required',
            'percent' => 'required',
            'minimum' => 'required',
            'maximum' => 'required',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails())
        {
            return response()->json(['errors' => $validator->errors()], 400);
        }

        $cat->name = $request->name;
        $cat->wallet_address = $request->wallet_address;
        $cat->wallet_type = $request->wallet_type;
        $cat->fix = $request->fix;
        $cat->percent = $request->percent;
        $cat->minimum = $request->minimum;
        $cat->maximum = $request->maximum;
        $cat->save();

        return response()->json($cat);
    }
    public function manualActive(Request $request)
    {

        $this->validate($request, [
            'id' => 'required',
        ]);
        switch ($request->type)
        {
            case 'crypto':
                $pp = ManualCrypto::findOrFail($request->id);
                $pp->status = 1;
                $pp->save();
                break;
            default:
                $pp = ManualBank::findOrFail($request->id);
                $pp->status = 1;
                $pp->save();
                break;
        }

        session()->flash('message', 'Payment Method Activate Successfully.');
        Session::flash('type', 'success');
        Session::flash('title', 'Success');
        return redirect()->back();
    }
    public function manualDeActive(Request $request)
    {

        $this->validate($request, [
            'id' => 'required',
        ]);
        switch ($request->type)
        {
            case 'crypto':
                $pp = ManualCrypto::findOrFail($request->id);
                $pp->status = 0;
                $pp->save();
                break;
            default:
                $pp = ManualBank::findOrFail($request->id);
                $pp->status = 0;
                $pp->save();
                break;
        }
        session()->flash('message', 'Payment Method DeActivate Successfully.');
        Session::flash('type', 'success');
        Session::flash('title', 'Success');
        return redirect()->back();
    }

    public function submitGrowth(Request $request)
    {
        $this->validate($request, [
            'growth' => 'required',
        ]);

        $growth = $request->growth;
        $month = date('m');
        $nextmonth = date('m', strtotime("first day of +1 month"));
        $year = date('Y');
        $Percentage_Growth = $growth / 100;

        $cnt = DB::select("select * from statements where month = ? AND year = ?", [$month, $year]);


        // dd($cnt);
        if (!empty($cnt))
        {

            foreach ($cnt as $cn)
            {
                $NetBalance = $cn->Opening_Balance - $cn->Withdrawal;
                $GrowthAmount = $NetBalance * $Percentage_Growth;
                $Gross = $GrowthAmount + $NetBalance;
                $CommissionAmount = $GrowthAmount * $cn->Commission;
                $Closing_Balance = $Gross - $CommissionAmount;
                $PayoutAmount = $Closing_Balance - $cn->Added_Fund;
                $freqid = $cn->user_id;
                $NextMonthOpening_Balance = $Closing_Balance + $cn->Closing_Added_Fund;


                DB::update("update statements set Percentage_Growth=?,Closing_Balance=?,Gross=?,Payout=?,Net_Balance=?,Growth_Amount=?,Commission_Amount=?,Next_Month_Opening_Balance=? WHERE 
                          user_id=?", [$growth, $Closing_Balance, $Gross, $PayoutAmount, $NetBalance, $GrowthAmount, $CommissionAmount, $NextMonthOpening_Balance, $freqid]);

                $defaultt = 1;
                $defaultt_Balance = 0;
                $Commission = 0.2;


                DB::insert(
                    "insert into statements (id, user_id, month, year, Opening_Balance, Added_Fund, Growth_Added_Fund, Closing_Added_Fund, Percentage_Growth, Closing_Balance, Commission, Gross, Withdrawal, Payout, Net_Balance, Growth_Amount, Commission_Amount, Next_Month_Opening_Balance) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                    [NULL, $freqid, $nextmonth, $year, $NextMonthOpening_Balance, $defaultt_Balance, $defaultt_Balance, $defaultt_Balance, $defaultt, $defaultt_Balance, $Commission, $defaultt_Balance, $defaultt_Balance, $PayoutAmount, $defaultt_Balance, $defaultt_Balance, $defaultt_Balance, $defaultt_Balance]
                );

                session()->flash('message', 'Growth Successfully Added to User Accounts.' . $freqid . ' month ' . $month . ' year ' . $year);
                Session::flash('type', 'success');
                Session::flash('title', 'Success');
                return redirect()->back();
            }

        } else
        {
            session()->flash('message', 'Empthy');
            Session::flash('type', 'error');
            Session::flash('title', 'Error');
            return redirect()->back();
        }

    }
}
