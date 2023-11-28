<!DOCTYPE html>
<html>
<head>
	<title>Registration Form</title>
	<style type="text/css">
		body {
			background-image: url('book.jpg');
			background-size: cover;
			background-repeat: no-repeat;
			font-family: Arial, sans-serif;
		}
		form {
			margin: 50px auto;
			padding: 20px;
			width: 500px;
			background-color: rgba(255, 255, 255, 0.8);
			border-radius: 10px;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
		}
		h1 {
			text-align: center;
			color: #333;
		}
		label {
			display: block;
			margin-bottom: 8px;
			color: #333;
		}
		input[type="text"], select {
			width: 100%;
			padding: 12px;
			border-radius: 4px;
			border: none;
			background-color: #f1f1f1;
			margin-bottom: 20px;
			box-sizing: border-box;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border-radius: 4px;
			border: none;
			cursor: pointer;
		}
		input[type="submit"]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
<form action="insertvehicle" method="POST" >
	<h1>Automobile Booking</h1>
	
	<label for="name">Name:</label>
	<input type="text" id="name" name="name" placeholder="Enter your name" required>

	<label for="email">Email:</label>
	<input type="text" id="email" name="email" placeholder="Enter your email" required>

	<label for="phone">Phone Number:</label>
	<input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>

    <label for="vehicle_color">Vehicle color:</label>
    <select id="vehicle_color" name="vehicle_color">
        <option value="">--Please choose an option--</option>
        <option value="White">White</option>
        <option value="Black">Black</option>
        <option value="Blue">Blue</option>
        <option value="Grey">Grey</option>
        <option value="Red">Red</option>
    </select>

    <label for="delivery_address">Delivery address:</label>
    <input type="text" id="delivery_address" name="delivery_address" placeholder="Enter your delivery address" required>

    <label for="quantity">Quantity:</label>
    <select id="quantity" name="quantity">
        <option value="">--Please choose an option--</option>
        <option value=1>1</option>
        <option value=2>2</option>
        <option value=3>3</option>
    </select>

    <label for="payment_type">Payment type:</label>
    <select id="payment_type" name="payment_type">
        <option value="">--Please choose an option--</option>
        <option value=Cash>Cash</option>
        <option value=Card>Card</option>
        <option value=Netbanking>Netbanking</option>
        <option value=DD>DD</option>
    </select>

    <input type="submit" value="Submit">
	
</form>

</body>
</html>

