<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Information</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<style>
  body {
    font-family: 'Poppins', Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-image: url('oji.jpg');
    background-size: cover;
  }
  .container {
    background-color: rgb(252, 188, 59);
    border-radius: 10px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    padding: 20px;
    max-width: 800px;
    width: 100%;
  }
  h1 {
    color: #333;
    text-align: center;
    margin-bottom: 20px;
  }
  .contact-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }
  .contact {
    position: relative;
    width: calc(33.33% - 20px);
    margin-bottom: 20px;
    overflow: hidden;
    border: 1px solid #ddd;
    border-radius: 10px;
    background-color: rgba(255, 255, 255, 0.8);
    transition: transform 0.3s ease;
  }
  .contact:hover {
    transform: translateY(-10px);
  }
  .contact img {
    width: 100%;
    height: 100%;
    display: block;
    object-fit: cover;
    border-radius: 10px 10px 0 0;
  }
  .details {
    position: absolute;
    bottom: -100%;
    left: 0;
    width: 100%;
    padding: 10px;
    background-color: #e74d3ca8;
    color: white;
    border-radius: 0 0 10px 10px;
    transition: bottom 0.3s ease;
  }
  .contact:hover .details {
    bottom: 0;
  }
  .name {
    font-weight: bold;
    font-size: 16px;
    margin-bottom: 5px;
  }
  .role,
  .id,
  .phone {
    font-size: 14px;
  }
</style>
</head>
<body>
<div class="container">
  <h1>Contact Information</h1>
  <div class="contact-list">
    <div class="contact">
      <img src="sak.jpg" alt="Person 1">
      <div class="details">
        <div class="name">Sainadh</div>
        <div class="role">Software Engineer</div>
        <div class="id">ID: 210030202</div>
        <div class="id">email: sainadhjaladi01@gmail.com</div>
        <div class="phone">Phone: 6309619294</div>
      </div>
    </div>
    <div class="contact">
      <img src="dav.jpg" alt="Person 2">
      <div class="details">
        <div class="name">Jason David</div>
        <div class="role">Product Manager</div>
        <div class="id">ID: 2100031356</div>
        <div class="id">email: jasondavid@gmail.com</div>
        <div class="phone">Phone: 7989418145</div>
      </div>
    </div>
    <div class="contact">
      <img src="rak.jpg" alt="Person 3">
      <div class="details">
        <div class="name">Abdul Rohan</div>
        <div class="role">Sales Representative</div>
        <div class="id">ID: 2100031492</div>
        <div class="id">email: abdulrohan@gmail.com</div>
        <div class="phone">Phone: 9573655948</div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
