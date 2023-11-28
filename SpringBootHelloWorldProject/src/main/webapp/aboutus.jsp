<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"/>
    <title>About Us</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://img.freepik.com/free-photo/abstract-flowing-lines-background_1048-6819.jpg?w=740&t=st=1693363406~exp=1693364006~hmac=76bc58fc5f414c52d3e7e02e886f2930cbe4bf65456f8d2665061331b722146d');
            background-repeat: no-repeat;
            background-size: cover;
        }

        .navbar {

            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
            padding: 0 20px;
            position: relative;
        }

        .card {
            width: calc(25% - 30px);
            height: 400px;
            padding: 20px;
            border-radius: 10px;
            background-color: #e6e6e6;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s, filter 0.3s, z-index 0.3s;
        }

        .card:hover {
            background-color: #fff;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            transform: scale(1.1);
            z-index: 2;
        }

        .card h3 {
            margin-top: 0;
            color: #333;
        }

        .card p {
            color: #666;
        }

        .card img {
            width: 80%;
            max-height: 200px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .card .button {
            margin-top: auto;
            background-color: #333;
            color: #fff;
            padding: 8px 16px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .card .button:hover {
            background-color: #555;
        }

        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            width: 80%;
            max-height: 80%;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow-y: auto;
        }

        .modal img {
            max-width: 100%;
            max-height: 80%;
            object-fit: cover;
            border-radius: 10px;
        }

        .modal .close {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 24px;
            color: #555;
            cursor: pointer;
        }
    </style>
    <script>
        function showModal(imageSrc, title) {
            document.getElementById('modalImage').src = imageSrc;
            document.getElementById('myModal').style.display = 'flex';
        }

        function closeModal() {
            document.getElementById('myModal').style.display = 'none';
        }
    </script>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <div class="navbar">
        <center><h1>About Us</h1></center>
    </div>
    <div class="card-container">
        <div class="card">
                <h1>Our Story</h1>
                    <img src="https://img.freepik.com/free-photo/happy-customer-car-dealership-with-seller_23-2149106141.jpg?w=360&t=st=1692614086~exp=1692614686~hmac=b7094767cced32e397893bdaa0d424b3f5cfebde2c49081242ab98e468e4d20f" width="800" height="800" alt="Card Image"/>
                    <h3>We provide Vehicle Diagnostics</h3>
                    <a href="ourstory.html" class="button">Learn More</a>
                </a>
            </div>
            <div class="card">
                
                    <img src="https://img.freepik.com/free-photo/mission-goals-target-aspirations-motivation-strategy-concept_53876-124797.jpg?w=1380&t=st=1692614896~exp=1692615496~hmac=a9e750221035d562b2e3d8eff90f651647865da7c1893add387f0273f7f50fbb" width="800" height="800" alt="Card Image"/>
                    <h3>Scheduled Maintenance of your vehicle</h3>
                    <a href="mission.html" class="button">Learn More</a>
                </a>
            </div>
            <div class="card">
                
                    <img src="https://img.freepik.com/free-photo/mechanic-showing-check-list-customer_1170-1259.jpg?w=1060&t=st=1692615162~exp=1692615762~hmac=7d113a1a3f6284af9db4b12f6df091d4071ae611a39b2de4216db1873d877f11" width="800" height="800" alt="Card Image"/>
                    <h3>Make your vehiclelook clean</h3>
                    <a href="ourservices.html" class="button">Learn More</a>
                </a>
            </div>
            <div class="card">
                
                    <img src="https://img.freepik.com/free-photo/happy-couple-car-showroom-dealership_23-2149117143.jpg?w=1060&t=st=1692615237~exp=1692615837~hmac=6e68b7e06aa0edf6a0ad6d36e54407aa1e7565103a3e4392961cadbaf9b2a781" width="800" height="800" alt="Card Image"/>
                    <h3>Our Team</h3>
                    <a href="ourteam.html" class="button">Learn More</a>
                </a>
            </div>
            <div class="card">
                
                    <img src="https://img.freepik.com/free-photo/happy-couple-car-showroom-dealership_23-2149117143.jpg?w=1060&t=st=1692615237~exp=1692615837~hmac=6e68b7e06aa0edf6a0ad6d36e54407aa1e7565103a3e4392961cadbaf9b2a781" width="800" height="800" alt="Card Image"/>
                    <h3>Industry Experience</h3>
                    <a href="industry.html" class="button">Learn More</a>
                </a>
            </div>
            <div class="card">
                
                    <img src="https://img.freepik.com/free-photo/young-happy-couple-signing-documents-while-being-with-car-mechanic-repair-shop_637285-4257.jpg?w=1060&t=st=1692615431~exp=1692616031~hmac=fdc3f02b523a24a09e456637067aabb820c6828a005f85d0e0f3bb5f549efe2c" width="800" height="800" alt="Card Image"/>
                    <h3>Customer Satisfaction</h3>
                    <a href="customer.html" class="button">Learn More</a>
                </a>
            </div>
            <div class="card">
                
                    <img src="https://img.freepik.com/free-photo/businesswoman-getting-out-from-car_53876-101863.jpg?w=1380&t=st=1692615502~exp=1692616102~hmac=80c1a87bcab2233c62316b62d03412b1667b6d752a27541071fb64c03f1d1ef2" width="800" height="800" alt="Card Image"/>
                    <h3>Privacy and Security</h3>
                    <a href="privacy.html" class="button">Learn More</a>
                </a>
            </div>
            <div class="card">
               
                    <img src="https://img.freepik.com/free-photo/customer-talking-with-mechanic-workshop_329181-11855.jpg?w=1060&t=st=1692615873~exp=1692616473~hmac=8e4ff4e8e9276b20e9a861264c18e11f9b76024cd957561a09214615e095c7d1" width="800" height="800" alt="Card Image"/>
                    <h3>Testimonials and Reviews</h3>
                    <a href="terms.html" class="button">Learn More</a>
                </a>
            </div>
    </div>
</body>
</html>
