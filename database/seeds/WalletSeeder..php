<?php

use Illuminate\Database\Seeder;

class WalletSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
{
    $wallets = [
        ['name' => 'MetaMask', 'network' => 'Ethereum (ERC-20)'],
        ['name' => 'Trust Wallet', 'network' => 'Multi-Chain'],
        ['name' => 'Phantom', 'network' => 'Solana'],
        ['name' => 'Binance Chain', 'network' => 'BSC (BEP-20)'],
    ];

    foreach ($wallets as $wallet) {
        \App\Wallet::create($wallet);
    }
}
}
