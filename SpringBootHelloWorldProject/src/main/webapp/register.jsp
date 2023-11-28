<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: "Work Sans", sans-serif;
            background-image: url('https://img.freepik.com/free-photo/beautiful-dark-golden-leaves-background-with-copy-space_24972-1986.jpg?w=740&t=st=1693337627~exp=1693338227~hmac=a72877e30cc005a859096ee3555242747220b1a099816951cf76d0903c59ab55'); /* Replace 'path_to_your_image' with the actual path to your image */
            background-size: cover; /* Adjust the background sizing as needed */
            background-repeat: no-repeat;
            box-sizing: border-box;
            margin: 0; /* Reset default margin to ensure the background covers the whole page */
            padding: 0; /* Reset default padding */
        }
:focus{
    outline: none;
}
.holder{
    width: 440px;
            background: rgba(255, 223, 186, 0.8); /* Light goldish background color */
            height: 600px;
            margin: 50px auto;
            outline: 5px solid #f2f2f2;
            border-radius: 10px;
}
.holder .parent{
    background-color: white;
            width: calc(100% - 50px);
            height: calc(100% - 50px);
            display: inline-block;
            margin-left: 25px;
            margin-top: 25px;
            border-radius: 7px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
.holder .parent h3{
    text-align: center;
    font-size: 25px;
    margin-bottom: 0;
}
form{
    display: block;
    border-bottom: 1px dashed #ccc;
    margin-left: 20px;
    margin-right: 20px;
}
form > div{
    margin: 20px;
    padding: 10px;
    border-bottom: 1px solid #ccc;
    position: relative;
}
form > div::before{
    content:"\f007";
    font-weight: 900;
    font-family: "Font Awesome 5 Free";
    position: absolute;
    color: #777;
    left: -1px;
}
form > div:nth-child(2):before{
    content:"\f2b6";
}
form > div:nth-child(3):before{
    content:"\f023";
}
form > div:nth-child(4):before{
    content:"\f023";
}
form div input{
    border: none;
    font-family: "Work Sans", sans-serif;
    font-size: 15px;
    margin-left: 10px;
}
div input + .border{
    position: absolute;
    left: 50%;
    bottom: -1px;
    background-color: #3498db;
    height: 1px;
    width: 0;
    transition: .3s;
    display: block;
}
div input:focus + .border{
    width: 100%;
    left: 0;
}
form .private-inp{
    border: none;
    font-family: "work sans",sans-serif;
    display: block;
    margin: auto;
    background: #1a1a1a; /* Blackish button background color */
    width: 90%;
    padding: 10px;
    border-radius: 7px;
    margin-bottom: 10px;
    color: white;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
}
form p{
    margin: 20px;
    text-align: center;
    font-size: 12px;
    color: #777;
    padding: 15px;
}
form p a{
    text-decoration: none;
    font-weight: bold;
    color: #2196f3ed;
}
.parent h4{
    text-align: center;
    color: #777;
}
.social{
    text-align: center;
    margin-top: -8px;
}
.social i{
    width: 20px;
    height: 20px;
    background: #3B5998;
    display: inline-block;
    padding: 10px;
    border-radius: 50%;
    color: white;
}
.social i:nth-child(2){
    background: #1DA1F2;
}
.social i:nth-child(3){
    background: #DB4437;
}
:focus::placeholder{
    opacity: 0;
    transition: .5s;
}
    </style>
</head>
<body>
    <div class="holder">
        <div class="parent">
            <h3>Sign Up</h3>
            <form method="POST" action="insertemp" enctype="multipart/form-data" onsubmit="return validateForm()">
                <div>
                    <input type="text" name="name" placeholder="Name *" required>
                    <span class="border"></span>
                </div>
                <div>
                    <input type="email" name="email" required pattern="[a-z0-9._%+-]+@gmail\.com" placeholder="Email *" required>
                    <span class="border"></span>
                </div>
                <div>
                    <input type="text" name="contact" placeholder="Phone Number *" required>
                    <span class="border"></span>
                </div>
                <div>
                    <input type="password" name="pass" id="password" placeholder="Password *" required>
                    <span class="border"></span>
                </div>
                <div>
                    <input type="password" name="repass" placeholder="Confirm Password *" required>
                    <span class="border"></span>
                </div>
                <div>
                    <input type="file" name="profilepic">
                    <span class="border"></span>
                </div>
                <input type="submit" value="REGISTER" class="private-inp">
                <p>
                    Have an Account?
                    <a href="login">Login Here</a>
                </p>
            </form>
            <h4>Or Register With</h4>
            <div class="social">
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-google-plus-g"></i>
            </div>
        </div>
    </div>

    <script>
        function validateForm() {
            var password = document.getElementById("password").value;

            // Password validation with regular expression
            var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/;

            if (!password.match(passwordPattern)) {
                alert("Password must contain at least 8 characters with at least one number and one symbol");
                return false;
            }

            return true;
        }
    </script>
    </body>
</html>
