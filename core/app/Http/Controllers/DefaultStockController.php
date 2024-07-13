<?php
namespace App\Http\Controllers;

use App\BasicSetting;
use App\DefaultStock;
use App\GeneralSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class DefaultStockController extends Controller
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
        return view('stock.index', $data);
    }

    public function active(Request $request)
    {

        $this->validate($request, [
            'id' => 'required',
        ]);

        $pp = DefaultStock::findOrFail($request->id);
        $pp->status = 1;
        $pp->save();


        session()->flash('message', 'Stock Activate Successfully.');
        Session::flash('type', 'success');
        Session::flash('title', 'Success');
        return redirect()->back();
    }
    public function deActive(Request $request)
    {

        $this->validate($request, [
            'id' => 'required',
        ]);

        $pp = DefaultStock::findOrFail($request->id);
        $pp->status = 0;
        $pp->save();


        session()->flash('message', 'Stock DeActivate Successfully.');
        Session::flash('type', 'success');
        Session::flash('title', 'Success');
        return redirect()->back();
    }

    public function editMethod($task_id)
    {
        $category = DefaultStock::find($task_id);
        return Response::json($category);
    }

    public function updateMethod(Request $request, $task_id)
    {
        $cat = DefaultStock::find($task_id);
        $rules = [
            'name' => 'required',
            'amount' => 'required',
            'symbol' => 'required',
            'wallet' => 'required',
            'rate' => 'required',
        ];
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails())
        {
            return redirect()->back();
        } else
        {
            $cat->name = $request->name;
            $cat->amount = $request->amount;
            $cat->symbol = $request->symbol;
            $cat->wallet = $request->wallet;
            $cat->rate = $request->rate;
            $cat->save();
            return Response::json($cat);
        }
    }

    public function storeMethod(Request $request)
    {

        $rules = [
            'name' => 'required',
            'amount' => 'required',
            'symbol' => 'required',
            'wallet' => 'required',
            'rate' => 'required',
        ];
        $validator = Validator::make(Input::all(), $rules);
        if ($validator->fails())
        {
            return redirect()->back();
        } else
        {
            $category = DefaultStock::create($request->all());
            return Response::json($category);
        }
    }

    public function deleteMethod(Request $request, $task_id)
    {

        $task = DefaultStock::findOrFail($task_id);
        $task->delete();
        return Response::json($task);
    }
}