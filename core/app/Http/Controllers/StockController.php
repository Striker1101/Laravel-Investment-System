<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Stock;
use Illuminate\Support\Facades\Auth;

class StockController extends Controller
{
    public function toggleStock(Request $request)
    {
        $user = Auth::user();
        $stockName = $request->input('stock_name');

        // Check if the stock already exists for the user
        $existingStock = $user->stocks()->where('name', $stockName)->first();

        if ($request->input('stock_status') == "on")
        {
            // Checkbox is checked - create stock if it doesn't exist
            if (!$existingStock)
            {
                $user->stocks()->create([
                    'name' => $stockName,
                    'amount' => $request->input('stock_amount'),
                    'wallet' => $request->input('stock_wallet')
                ]);
            }
        } else
        {
            // Checkbox is unchecked - delete stock if it exists
            if ($existingStock)
            {
                $existingStock->delete();
            }
        }

        return redirect()->back()->with('success', 'Stock updated successfully.');
    }

}
