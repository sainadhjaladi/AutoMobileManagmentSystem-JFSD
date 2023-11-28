<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>* {
        padding: 0%;
        margin: 0%;
      }
      body {
        box-sizing: border-box;
        background: url("https://source.unsplash.com/1600x900/?nature,water");
        background-size: cover;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        overflow: hidden;
      }
      .contact-container {
        position: relative;
        width: 700px;
        max-width: 700px;
        border-radius: 2rem;
        padding: 25px 40px 10px 40px;
        box-shadow: rgb(0 0 0) 10px 10px 10px;
        backdrop-filter: blur(3px);
        -webkit-backdrop-filter: blur(3px);
        background-color: rgba(255, 255, 255, 0.5);
        color: #333;
        height: auto;
      }
      .contact-container h2 {
        font-size: 50px;
        text-align: center;
        margin-bottom: 10px;
      }
      .container form {
        padding: 30px 0 0 0;
      }
      .container form .form-row {
        display: flex;
        margin: 32px 0;
      }
      form .form-row .inputBox {
        width: 100%;
        height: 40px;
        margin: 0 20px;
        position: relative;
      }
      form .form-row .textarea {
        height: 70px;
        font-size: 14px;
      }
      .inputBox input,
      .textarea textarea {
        height: 100%;
        width: 100%;
        border: none;
        font-size: 17px;
        border-bottom: 2px solid rgba(0, 0, 0, 0.12);
        background-color: rgba(255, 255, 255, 0.5);
        border-radius: 15px;
        outline: none;
      }
      .textarea textarea {
        resize: none;
        padding-top: 10px;
      }
      .inputBox input:focus ~ label,
      .textarea textarea:focus ~ label,
      .inputBox input:valid ~ label,
      .textarea textarea:valid ~ label {
        transform: translateY(-35px);
        font-size: 16px;
      }
      .inputBox label {
        position: absolute;
        bottom: 10px;
        font-size: 18px;
        pointer-events: none;
        transition: all 0.3s ease;
        left: 10px;
      }
      .textarea label {
        width: 100%;
        bottom: 40px;
      }
      .inputBox .underline {
        position: absolute;
        bottom: 0;
        height: 2px;
        width: 90%;
        background-color: rgba(255, 255, 255, 0.5);
        left: 15px;
      }
      .inputBox .underline::before,
      .inputBox .underline::after {
        position: absolute;
        content: "";
        height: 100%;
        width: 100%;
        background: rgb(88, 29, 59);
        transform: scaleX(0);
        transform-origin: center;
        transition: tarnsform 0.3s ease;
      }
      .inputBox input:focus ~ .underline::before,
      .underline::after,
      .textarea textarea:focus ~ .underline::before,
      .underline::after,
      .inputBox input:valid ~ .underline::before,
      .underline::after,
      .textarea textarea:valid ~ .underline::before,
      .underline::after {
        transform: scaleX(1);
      }
      .submit-btn {
        width: 100% !important;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      .submit-btn .inputBox {
        width: 30% !important;
      }
      .submit-btn .inputBox input {
        cursor: pointer;
        height: 3rem;
      }
      .submit-btn .inputBox input:hover {
        background-color: rgba(146, 146, 146, 0.5);
      }
      /*for mobile responsive*/
      @media screen and (max-width: 480px) {
        .contact-container {
          width: fit-content;
          margin: 10px;
        }
        .contact-container h2 {
          font-size: 2.7em;
          margin-bottom: 1rem;
        }
        .container form {
          padding: 1em 0 0 0;
        }
        .container form .form-row {
          display: flex;
          margin: 0;
          flex-direction: column;
          align-items: center;
        }
        form .form-row .inputBox {
          padding: 0.5rem;
          margin: 0.5rem;
        }
        .inputBox input,
        .textarea textarea {
          font-size: 20px;
          font-style: italic;
        }
        .inputBox label {
          bottom: 1rem;
          font-size: 1.8em;
          left: 17px;
        }
        .textarea label {
          bottom: 1rem;
        }
        .inputBox input:focus ~ label,
        .inputBox input:valid ~ label {
          transform: translateY(-2em);
          font-size: 1em;
          color: rgb(1, 26, 43);
        }
        .textarea textarea:focus ~ label,
        .textarea textarea:valid ~ label {
          transform: translateY(-4.5em);
          font-size: 1em;
          color: rgb(1, 26, 43);
        }
      }
      /*for tablet responsive*/
      @media screen and (min-width: 481px) and (max-width: 768px) {
        .contact-container {
          width: auto;
        }
      }
      </style>
</head>
<body>
    <html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>contact me </title>
  <link rel="stylesheet" href="css/contact.css">
</head>

<body>
  <section id="contactMe">
    <div class="contact-container">
      <div class="container ">
        <h2>FeedBack From Customer</h2>
        <form action="contactdetails" method="POST">
          <div class="form-row">
            <div class="inputBox">
              <input type="text" name="names" required />
              <div class="underline"></div>
              <label class="text">First Name</label>
            </div>
            <div class="inputBox">
              <input type="text" name="lnames" required />
              <div class="underline"></div>
              <label class="text">Last Name</label>
            </div>
          </div>
          <div class="form-row">
            <div class="inputBox">
              <input type="text" name="emails" required />
              <div class="underline"></div>
              <label class="text">Email</label>
            </div>
            <div class="inputBox">
              <input type="text" name="mobiles" required />
              <div class="underline"></div>
              <label class="text">Mobile No.</label>
            </div>
          </div>
          <div class="form-row">
            <div class="inputBox textarea">
              <textarea name = "message" required="required"></textarea>
              <div class="underline"></div>
              <label class="text">Type your message here</label>
            </div>
          </div>
          <div class="form-row submit-btn">
            <div class="inputBox">
              <div class="inner">
                <input type="submit" value="submit" />
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </section>
</body>

</html>
</body>
</html>