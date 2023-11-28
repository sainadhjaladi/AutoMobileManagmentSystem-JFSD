<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #3498db; /* Background color */
        }

        .card {
            width: 400px; /* Card width */
            padding: 20px;
            text-align: center;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .success-message {
            font-size: 24px;
            color: #27ae60; /* Green color for success */
        }

        .tick-mark {
            font-size: 48px;
            color: #27ae60; /* Green color for tick mark */
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="tick-mark">&#10004;</div>
        <div class="success-message">Service Request Booked Successfully</div>
    </div>
</body>
</html>
