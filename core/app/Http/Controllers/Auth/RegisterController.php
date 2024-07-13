<?php

namespace App\Http\Controllers\Auth;

use App\BasicSetting;
use App\GeneralSetting;
use App\Mail\verifyEmail;
use App\Notification;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;


class RegisterController extends Controller
{

    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/user/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $basic = BasicSetting::first();
        if ($basic->reCaptcha_status == 1)
        {
            Config::set('captcha.secret', $basic->secret_key);
            Config::set('captcha.sitekey', $basic->site_key);
        }
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'reference' => 'sometimes',
            'g-recaptcha-response' => 'captcha',
            'country' => 'required',
            'ID_Number' => 'required'
        ]);
    }

    protected function getCurrencySymbol($country)
    {
        switch ($country)
        {
            case 'South Africa':
                return 'ZAR';
            case 'Afghanistan':
                return 'AFN';
            case 'Albania':
                return 'ALL';
            case 'Algeria':
                return 'DZD';
            case 'American Samoa':
                return 'USD';
            case 'Andorra':
                return 'EUR';
            case 'Angola':
                return 'AOA';
            case 'Anguilla':
            case 'Antigua & Barbuda':
                return 'XCD';
            case 'Argentina':
                return 'ARS';
            case 'Armenia':
                return 'AMD';
            case 'Aruba':
                return 'AWG';
            case 'Australia':
                return 'AUD';
            case 'Austria':
                return 'EUR';
            case 'Azerbaijan':
                return 'AZN';
            case 'Bahamas':
                return 'BSD';
            case 'Bahrain':
                return 'BHD';
            case 'Bangladesh':
                return 'BDT';
            case 'Barbados':
                return 'BBD';
            case 'Belarus':
                return 'BYN';
            case 'Belgium':
                return 'EUR';
            case 'Belize':
                return 'BZD';
            case 'Benin':
                return 'XOF';
            case 'Bermuda':
                return 'BMD';
            case 'Bhutan':
                return 'BTN';
            case 'Bolivia':
                return 'BOB';
            case 'Bonaire':
                return 'USD';
            case 'Bosnia & Herzegovina':
                return 'BAM';
            case 'Botswana':
                return 'BWP';
            case 'Brazil':
                return 'BRL';
            case 'British Indian Ocean Ter':
                return 'USD';
            case 'Brunei':
                return 'BND';
            case 'Bulgaria':
                return 'BGN';
            case 'Burkina Faso':
                return 'XOF';
            case 'Burundi':
                return 'BIF';
            case 'Cambodia':
                return 'KHR';
            case 'Cameroon':
                return 'XAF';
            case 'Canada':
                return 'CAD';
            case 'Canary Islands':
                return 'EUR';
            case 'Cape Verde':
                return 'CVE';
            case 'Cayman Islands':
                return 'KYD';
            case 'Central African Republic':
                return 'XAF';
            case 'Chad':
                return 'XAF';
            case 'Channel Islands':
                return 'GBP';
            case 'Chile':
                return 'CLP';
            case 'China':
                return 'CNY';
            case 'Christmas Island':
                return 'AUD';
            case 'Cocos Island':
                return 'AUD';
            case 'Colombia':
                return 'COP';
            case 'Comoros':
                return 'KMF';
            case 'Congo':
                return 'CDF';
            case 'Cook Islands':
                return 'NZD';
            case 'Costa Rica':
                return 'CRC';
            case 'Cote DIvoire':
                return 'XOF';
            case 'Croatia':
                return 'HRK';
            case 'Cuba':
                return 'CUP';
            case 'Curaco':
                return 'ANG';
            case 'Cyprus':
                return 'EUR';
            case 'Czech Republic':
                return 'CZK';
            case 'Denmark':
                return 'DKK';
            case 'Djibouti':
                return 'DJF';
            case 'Dominica':
                return 'XCD';
            case 'Dominican Republic':
                return 'DOP';
            case 'East Timor':
                return 'USD';
            case 'Ecuador':
                return 'USD';
            case 'Egypt':
                return 'EGP';
            case 'El Salvador':
                return 'USD';
            case 'Equatorial Guinea':
                return 'XAF';
            case 'Eritrea':
                return 'ERN';
            case 'Estonia':
                return 'EUR';
            case 'Ethiopia':
                return 'ETB';
            case 'Falkland Islands':
                return 'FKP';
            case 'Faroe Islands':
                return 'DKK';
            case 'Fiji':
                return 'FJD';
            case 'Finland':
                return 'EUR';
            case 'France':
                return 'EUR';
            case 'French Guiana':
                return 'EUR';
            case 'French Polynesia':
                return 'XPF';
            case 'French Southern Ter':
                return 'EUR';
            case 'Gabon':
                return 'XAF';
            case 'Gambia':
                return 'GMD';
            case 'Georgia':
                return 'GEL';
            case 'Germany':
                return 'EUR';
            case 'Ghana':
                return 'GHS';
            case 'Gibraltar':
                return 'GIP';
            case 'Great Britain':
                return 'GBP';
            case 'Greece':
                return 'EUR';
            case 'Greenland':
                return 'DKK';
            case 'Grenada':
                return 'XCD';
            case 'Guadeloupe':
                return 'EUR';
            case 'Guam':
                return 'USD';
            case 'Guatemala':
                return 'GTQ';
            case 'Guinea':
                return 'GNF';
            case 'Guyana':
                return 'GYD';
            case 'Haiti':
                return 'HTG';
            case 'Hawaii':
                return 'USD';
            case 'Honduras':
                return 'HNL';
            case 'Hong Kong':
                return 'HKD';
            case 'Hungary':
                return 'HUF';
            case 'Iceland':
                return 'ISK';
            case 'India':
                return 'INR';
            case 'Indonesia':
                return 'IDR';
            case 'Iran':
                return 'IRR';
            case 'Iraq':
                return 'IQD';
            case 'Ireland':
                return 'EUR';
            case 'Isle of Man':
                return 'GBP';
            case 'Israel':
                return 'ILS';
            case 'Italy':
                return 'EUR';
            case 'Jamaica':
                return 'JMD';
            case 'Japan':
                return 'JPY';
            case 'Jordan':
                return 'JOD';
            case 'Kazakhstan':
                return 'KZT';
            case 'Kenya':
                return 'KES';
            case 'Kiribati':
                return 'AUD';
            case 'Korea North':
                return 'KPW';
            case 'Korea Sout':
                return 'KRW';
            case 'Kuwait':
                return 'KWD';
            case 'Kyrgyzstan':
                return 'KGS';
            case 'Laos':
                return 'LAK';
            case 'Latvia':
                return 'EUR';
            case 'Lebanon':
                return 'LBP';
            case 'Lesotho':
                return 'LSL';
            case 'Liberia':
                return 'LRD';
            case 'Libya':
                return 'LYD';
            case 'Liechtenstein':
                return 'CHF';
            case 'Lithuania':
                return 'EUR';
            case 'Luxembourg':
                return 'EUR';
            case 'Macau':
                return 'MOP';
            case 'Macedonia':
                return 'MKD';
            case 'Madagascar':
                return 'MGA';
            case 'Malaysia':
                return 'MYR';
            case 'Malawi':
                return 'MWK';
            case 'Maldives':
                return 'MVR';
            case 'Mali':
                return 'XOF';
            case 'Malta':
                return 'EUR';
            case 'Marshall Islands':
                return 'USD';
            case 'Martinique':
                return 'EUR';
            case 'Mauritania':
                return 'MRU';
            case 'Mauritius':
                return 'MUR';
            case 'Mayotte':
                return 'EUR';
            case 'Mexico':
                return 'MXN';
            case 'Midway Islands':
                return 'USD';
            case 'Moldova':
                return 'MDL';
            case 'Monaco':
                return 'EUR';
            case 'Mongolia':
                return 'MNT';
            case 'Montserrat':
                return 'XCD';
            case 'Morocco':
                return 'MAD';
            case 'Mozambique':
                return 'MZN';
            case 'Myanmar':
                return 'MMK';
            case 'Nambia':
                return 'NAD';
            case 'Nauru':
                return 'AUD';
            case 'Nepal':
                return 'NPR';
            case 'Netherland Antilles':
                return 'ANG';
            case 'Netherlands':
                return 'EUR';
            case 'Nevis':
                return 'XCD';
            case 'New Caledonia':
                return 'XPF';
            case 'New Zealand':
                return 'NZD';
            case 'Nicaragua':
                return 'NIO';
            case 'Niger':
                return 'XOF';
            case 'Nigeria':
                return 'NGN';
            case 'Niue':
                return 'NZD';
            case 'Norfolk Island':
                return 'AUD';
            case 'Norway':
                return 'NOK';
            case 'Oman':
                return 'OMR';
            case 'Pakistan':
                return 'PKR';
            case 'Palau Island':
                return 'USD';
            case 'Palestine':
                return 'ILS';
            case 'Panama':
                return 'PAB';
            case 'Papua New Guinea':
                return 'PGK';
            case 'Paraguay':
                return 'PYG';
            case 'Peru':
                return 'PEN';
            case 'Phillipines':
                return 'PHP';
            case 'Pitcairn Island':
                return 'NZD';
            case 'Poland':
                return 'PLN';
            case 'Portugal':
                return 'EUR';
            case 'Puerto Rico':
                return 'USD';
            case 'Qatar':
                return 'QAR';
            case 'Republic of Montenegro':
                return 'EUR';
            case 'Republic of Serbia':
                return 'RSD';
            case 'Reunion':
                return 'EUR';
            case 'Romania':
                return 'RON';
            case 'Russia':
                return 'RUB';
            case 'Rwanda':
                return 'RWF';
            case 'St Barthelemy':
                return 'EUR';
            case 'St Eustatius':
                return 'USD';
            case 'St Helena':
                return 'SHP';
            case 'St Kitts-Nevis':
                return 'XCD';
            case 'St Lucia':
                return 'XCD';
            case 'St Maarten':
                return 'ANG';
            case 'St Pierre & Miquelon':
                return 'EUR';
            case 'St Vincent & Grenadines':
                return 'XCD';
            case 'Saipan':
                return 'USD';
            case 'Samoa':
                return 'WST';
            case 'Samoa American':
                return 'USD';
            case 'San Marino':
                return 'EUR';
            case 'Sao Tome & Principe':
                return 'STN';
            case 'Saudi Arabia':
                return 'SAR';
            case 'Senegal':
                return 'XOF';
            case 'Serbia':
                return 'RSD';
            case 'Seychelles':
                return 'SCR';
            case 'Sierra Leone':
                return 'SLL';
            case 'Singapore':
                return 'SGD';
            case 'Slovakia':
                return 'EUR';
            case 'Slovenia':
                return 'EUR';
            case 'Solomon Islands':
                return 'SBD';
            case 'Somalia':
                return 'SOS';
            case 'Spain':
                return 'EUR';
            case 'Sri Lanka':
                return 'LKR';
            case 'Sudan':
                return 'SDG';
            case 'Suriname':
                return 'SRD';
            case 'Swaziland':
                return 'SZL';
            case 'Sweden':
                return 'SEK';
            case 'Switzerland':
                return 'CHF';
            case 'Syria':
                return 'SYP';
            case 'Tahiti':
                return 'XPF';
            case 'Taiwan':
                return 'TWD';
            case 'Tajikistan':
                return 'TJS';
            case 'Tanzania':
                return 'TZS';
            case 'Thailand':
                return 'THB';
            case 'Togo':
                return 'XOF';
            case 'Tokelau':
                return 'NZD';
            case 'Tonga':
                return 'TOP';
            case 'Trinidad & Tobago':
                return 'TTD';
            case 'Tunisia':
                return 'TND';
            case 'Turkey':
                return 'TRY';
            case 'Turkmenistan':
                return 'TMT';
            case 'Turks & Caicos Is':
                return 'USD';
            case 'Tuvalu':
                return 'AUD';
            case 'Uganda':
                return 'UGX';
            case 'Ukraine':
                return 'UAH';
            case 'United Arab Erimates':
                return 'AED';
            case 'United Kingdom':
                return 'GBP';
            case 'United States of America':
                return 'USD';
            case 'Uruguay':
                return 'UYU';
            case 'Uzbekistan':
                return 'UZS';
            case 'Vanuatu':
                return 'VUV';
            case 'Vatican City State':
                return 'EUR';
            case 'Venezuela':
                return 'VES';
            case 'Vietnam':
                return 'VND';
            case 'Virgin Islands (Brit)':
                return 'USD';
            case 'Virgin Islands (USA)':
                return 'USD';
            case 'Wake Island':
                return 'USD';
            case 'Wallis & Futana Is':
                return 'XPF';
            case 'Yemen':
                return 'YER';
            case 'Zaire':
                return 'CDF';
            case 'Zambia':
                return 'ZMW';
            case 'Zimbabwe':
                return 'ZWL';
            default:
                return ''; // default to empty string for unknown countries
        }
    }


    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */

    protected function create(array $data)
    {
        $basic = BasicSetting::first();
        $status = $basic->verify_status == 1 ? '0' : '1';
        $image25 = 'user-default.png';
        $currency = $this->getCurrencySymbol($data['country']);
        if ($basic->reference_id == $data['reference'])
        {
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'phone' => $data['phone'],
                'address' => $data['address'],
                'country' => $data['country'],
                'zip' => $data['zip'],
                'under_reference' => $data['reference'],
                'password' => bcrypt($data['password']),
                'verifyToken' => Str::random(40),
                'reference' => Str::random(12),
                'status' => $status,
                'image' => $image25,
                'ID_Number' => $data['ID_Number'],
                'currency' => $currency

            ]);
        } else
        {
            $us = User::whereReference($data['reference'])->count();
            $reference_user = User::whereReference($data['reference'])->first();
            if ($us != 0)
            {
                $user = User::create([
                    'name' => $data['name'],
                    'email' => $data['email'],
                    'country' => $data['country'],
                    'zip' => $data['zip'],
                    'phone' => $data['phone'],
                    'address' => $data['address'],
                    'under_reference' => $data['reference'],
                    'password' => bcrypt($data['password']),
                    'verifyToken' => Str::random(40),
                    'reference' => Str::random(12),
                    'status' => $status,
                    'image' => $image25,
                    'ID_Number' => $data['ID_Number'],
                    'currency' => $currency

                ]);

                // Update the referencer's balance
                $oldBonus = $reference_user->bonus;
                $newBouns = $oldBonus + $basic->reference_bonus;
                $reference_user->reference_bonus = $newBouns;
                $reference_user->save();

                // Create a new reference entry
                DB::table('references')->insert([
                    'user_id' => $reference_user->id,
                    'old_balance' => $oldBonus,
                    'new_balance' => $newBouns,
                    'details' => "{$data['name']} was referred by {$reference_user->name}",
                    'reference_id' => $user->reference,
                    'under_reference' => $reference_user->under_reference,
                    'balance' => $reference_user->amount,
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                ]);

                //send bonus email to referal 
                $this->sendBonusEmail($reference_user);

            } else
            {
                return false;
            }
        }

        //update the user country currency


        $thisUser = User::findOrFail($user->id);
        $this->sendWelcomeEmail($thisUser);
        if ($basic->verify_status == 1)
        {
            $this->sendVerificationEmail($thisUser);
        }
        return $user;
    }
    public function sendVerificationEmail($thisUser)
    {
        $general = GeneralSetting::first();

        $hh = ['s_title' => $general->title, 's_footer' => $general->footer_bottom_text];

        $mail_val = [
            'email' => $thisUser['email'],
            'name' => $thisUser['name'],
            'g_email' => $general->email,
            'g_title' => $general->title,
            'subject' => 'Verify Account',
        ];

        // Capture the email content
        $content = view('emails.auth.verify-email', [
            'email' => $thisUser['email'],
            'verifyToken' => $thisUser['verifyToken'],
            'site_title' => $hh['s_title'],
            'site_footer' => $hh['s_footer']
        ])->render();

        Mail::send('emails.auth.verify-email', [
            'email' => $thisUser['email'],
            'verifyToken' => $thisUser['verifyToken'],
            'name' => $thisUser['name'],
            'site_title' => $hh['s_title'],
            'site_footer' => $hh['s_footer']
        ], function ($m) use ($mail_val) {
            $m->from($mail_val['g_email'], $mail_val['g_title']);
            $m->to($mail_val['email'], $mail_val['name'])->subject($mail_val['subject']);
        });


        // Save the notification details
        Notification::create([
            'content' => $content,
            'status' => 0, // Assuming 0 means unread
            'gene' => 'message',
            'type' => 'inbox',
            'icon' => 'fa fa-envelope-o', // You can set the appropriate icon
            'user_id' => $thisUser['id'],
            'tag' => 'white' // Default tag
        ]);
    }

    private function sendWelcomeEmail($thisUser)
    {
        $general = GeneralSetting::first();

        $hh = ['s_title' => $general->title, 's_footer' => $general->footer_bottom_text];

        $mail_val = [
            'email' => $thisUser['email'],
            'name' => $thisUser['name'],
            'g_email' => $general->email,
            'g_title' => $general->title,
            'subject' => 'Welcome Email',
        ];
        Mail::send('emails.auth.welcome', [
            'email' => $thisUser['email'],
            'site_title' => $hh['s_title'],
            'name' => $thisUser['name'],
            'site_footer' => $hh['s_footer']
        ], function ($m) use ($mail_val) {
            $m->from($mail_val['g_email'], $mail_val['g_title']);
            $m->to($mail_val['email'], $mail_val['name'])->subject($mail_val['subject']);
        });

        // Capture the email content
        $content = view('emails.auth.welcome', [
            'email' => $thisUser['email'],
            'name' => $thisUser['name'],
            'site_title' => $hh['s_title'],
            'site_footer' => $hh['s_footer']
        ])->render();

        Notification::create([
            'content' => $content,
            'status' => 0, // Assuming 0 means unread
            'gene' => 'message',
            'type' => 'inbox',
            'icon' => 'entypo-heart ', // You can set the appropriate icon
            'user_id' => $thisUser['id'],
            'tag' => 'white' // Default tag
        ]);

    }

    private function sendBonusEmail($thisUser)
    {
        $general = GeneralSetting::first();

        $hh = ['s_title' => $general->title, 's_footer' => $general->footer_bottom_text];

        $mail_val = [
            'email' => $thisUser['email'],
            'name' => $thisUser['name'],
            'g_email' => $general->email,
            'g_title' => $general->title,
            'subject' => 'Referral Bonus',
        ];
        Mail::send('emails.auth.referral', [
            'email' => $thisUser['email'],
            'name' => $thisUser['name'],
            'site_title' => $hh['s_title'],
            'site_footer' => $hh['s_footer']
        ], function ($m) use ($mail_val) {
            $m->from($mail_val['g_email'], $mail_val['g_title']);
            $m->to($mail_val['email'], $mail_val['name'])->subject($mail_val['subject']);
        });

        // Capture the email content
        $content = view('emails.auth.welcome', [
            'email' => $thisUser['email'],
            'name' => $thisUser['name'],
            'site_title' => $hh['s_title'],
            'site_footer' => $hh['s_footer']
        ])->render();

        Notification::create([
            'content' => $content,
            'status' => 0, // Assuming 0 means unread
            'gene' => 'message',
            'type' => 'inbox',
            'icon' => 'entypo-info', // You can set the appropriate icon
            'user_id' => $thisUser['id'],
            'tag' => 'white' // Default tag
        ]);
    }
    public function verifyDone($email, $verifyToken)
    {
        $user = User::where(['email' => $email, 'verifyToken' => $verifyToken])->first();
        if ($user)
        {
            User::where(['email' => $email, 'verifyToken' => $verifyToken])->update(['status' => 1, 'verifyToken' => null]);
            Session::flash('type', 'success');
            Session::flash('message', 'Your Account Verified Successfully. Please Log In Now.');
            return redirect()->route('login');
        } else
        {
            Session::flash('type', 'danger');
            Session::flash('message', 'Opps..! Something is Wrong.');
            return redirect()->route('login');
        }
    }
}
