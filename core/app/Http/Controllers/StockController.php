<?php

namespace App\Http\Controllers;

use App\DefaultStock;
use Illuminate\Http\Request;
use App\Stock;
use Illuminate\Support\Facades\Auth;

class StockController extends Controller
{
    public function toggleStock(Request $request)
    {
        // Retrieve authenticated user
        $user = Auth::user();

        // Find the DefaultStock by ID
        $defaultStock = DefaultStock::findOrFail($request->input('stock_id'));

        // Check if the user already has this stock
        $userStock = $user->stocks()->where('stock_id', $defaultStock->id)->first();

        if (!$userStock)
        {
            // If user doesn't have this stock, create it with amount 0
            $user->stocks()->attach($defaultStock->id, ['amount' => 0]);
            return redirect()->back()->with('success', 'Stock added successfully.');
        }

        // If the user already has this stock, check if amount is greater than 0
        if ($userStock->amount > 0)
        {
            return redirect()->back()->with('error', $defaultStock->name . ' has ' . $userStock->amount . ' units, withdraw before deleting.');
        }

        // If amount is 0, delete the stock relationship
        $user->stocks()->detach($defaultStock->id);
        return redirect()->back()->with('success', 'Stock deleted successfully.');
    }


}
