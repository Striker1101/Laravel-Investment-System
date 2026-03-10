<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to {{ $site_title }}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .email-container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            text-align: center;
            padding: 20px 0;
        }

        .header img {
            max-width: 100px;
        }

        .content {
            padding: 20px;
            text-align: left;
        }

        .footer {
            text-align: center;
            padding: 10px 0;
            color: #777;
            font-size: 12px;
        }
    </style>
</head>

<body>
    <div class="email-container">
        <div class="header">
            <h1>Welcome to {{ $site_title }}</h1>
        </div>
        <div class="content">
            <p>Dear {{ $name }},</p>
            <p>Welcome to {{ $site_title }}! We are excited to have you on board.</p>
            <p>At {{ $site_title }}, we offer a comprehensive investment platform where you can trade all kinds of
                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading
                facilities and tools.</p>
            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),
                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>
            <p>We are committed to providing you with the best possible trading experience. If you have any questions or
                need assistance, our support team is always here to help.</p>
            <p>Thank you for choosing {{ $site_title }}. We look forward to a successful journey together!</p>
            <p>Best regards,</p>
            <p>The {{ $site_title }} Team</p>
        </div>
        <div class="footer">
            <p>{{ $site_footer }}</p>
        </div>
    </div>
</body>

</html>
