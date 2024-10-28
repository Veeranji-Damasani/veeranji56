<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: linear-gradient(to bottom right, #4B0082, #E6E6FA);
            color: white;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin: 10px 0;
        }

        .contact-info {
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            width: 300px;
            margin: 20px 0;
        }

        .contact-info h2 {
            font-size: 24px;
            color: #4B0082;
            margin-bottom: 10px;
        }

        .contact-info p {
            color: #333;
            margin: 5px 0;
        }

        a {
            color: #FFD700; /* Gold color */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .home-link {
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>Contact Us</h1>
    <p>If you have any questions or need assistance, feel free to reach out to us.</p>

    <div class="contact-info">
        <h2>Get in Touch</h2>
        <p><strong>Email:</strong> <a href="mailto:info@dummybank.com">info@trustmotivebank.com</a></p>
        <p><strong>Toll-Free Number:</strong> 1-800-123-4567</p>
        <p><strong>Customer Support:</strong> 1-800-765-4321</p>
    </div>

    <p>Our team is here to help you with any inquiries or support you may need.</p>
    <p>Thank you for choosing Dummy Bank!</p>

    <a href="home.jsp" class="home-link">Go to Home Page?</a>
</body>
</html>
