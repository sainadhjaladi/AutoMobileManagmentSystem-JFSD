<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.ag-format-container {
  width: 1142px;
  margin: 0 auto;
}

body {
  background-color: #000;
}

.ag-courses_box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: start;
  -ms-flex-align: start;
  align-items: flex-start;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  padding: 50px 0;
}

.ag-courses_item {
  -ms-flex-preferred-size: calc(33.33333% - 30px);
  flex-basis: calc(33.33333% - 30px);
  margin: 0 15px 30px;
  overflow: hidden;
  border-radius: 28px;
  position: relative;
}

.ag-courses-item_link {
  display: block;
  padding: 30px 20px;
  background-color: #121212;
  overflow: hidden;
  position: relative;
}

.ag-courses-item_link:hover,
.ag-courses-item_link:hover .ag-courses-item_date {
  text-decoration: none;
  color: #FFF;
}

.ag-courses-item_link:hover .ag-courses-item_bg {
  -webkit-transform: scale(10);
  -ms-transform: scale(10);
  transform: scale(10);
}

.ag-courses-item_title {
  min-height: 87px;
  margin: 0 0 25px;
  overflow: hidden;
  font-weight: bold;
  font-size: 30px;
  color: #FFF;
  z-index: 2;
  position: relative;
}

.ag-courses-item_date-box {
  font-size: 18px;
  color: #FFF;
  z-index: 2;
  position: relative;
}

.ag-courses-item_date {
  font-weight: bold;
  color: #f9b234;
  -webkit-transition: color .5s ease;
  -o-transition: color .5s ease;
  transition: color .5s ease;
}

.ag-courses-item_bg {
  height: 128px;
  width: 128px;
  background-color: #f9b234;
  z-index: 1;
  position: absolute;
  top: -75px;
  right: -75px;
  border-radius: 50%;
  -webkit-transition: all .5s ease;
  -o-transition: all .5s ease;
  transition: all .5s ease;
}

.ag-courses_item:nth-child(2n) .ag-courses-item_bg {
  background-color: #3ecd5e;
}

.ag-courses_item:nth-child(3n) .ag-courses-item_bg {
  background-color: #e44002;
}

.ag-courses_item:nth-child(4n) .ag-courses-item_bg {
  background-color: #952aff;
}

.ag-courses_item:nth-child(5n) .ag-courses-item_bg {
  background-color: #cd3e94;
}

.ag-courses_item:nth-child(6n) .ag-courses-item_bg {
  background-color: #4c49ea;
}

.ag-courses_item_button {
  background-color: red;
  color: white;
  padding: 10px 20px;
  border-radius: 20px;
  text-align: center;
  font-weight: bold;
  font-size: 20px;
  text-decoration: none;
}

.center-button-container {
  text-align: center;
  margin-top: 30px;
}

.logout-button {
  text-align: center;
  margin-top: 30px;
  padding: 20px 0; /* Add some padding to the button container */
}

.logout-button a {
  background-color: red;
  color: white;
  padding: 15px 40px; /* Adjust the padding for the button size */
  border-radius: 20px;
  text-align: center;
  font-weight: bold;
  font-size: 24px;
  text-decoration: none;
}

</style>
</head>
<body>
<div class="ag-format-container">
  <div class="ag-courses_box">
    <div class="ag-courses_item">
      <a href="viewallcustomers" class="ag-courses-item_link">
        <div class="ag-courses-item_bg"></div>
        <div class="ag-courses-item_title">
          Number of Registered Customers
        </div>
      </a>
    </div>

    <div class="ag-courses_item">
      <a href="viewallfeedback" class="ag-courses-item_link">
        <div class="ag-courses-item_bg"></div>
        <div class="ag-courses-item_title">
          Collected Customers Feedbacks
        </div>
      </a>
    </div>

    <div class="ag-courses_item">
      <a href="viewallbookedservices" class="ag-courses-item_link">
        <div class="ag-courses-item_bg"></div>
        <div class="ag-courses-item_title">
          Number of Bookings for the Services
        </div>
      </a>
    </div>

    <div class="ag-courses_item">
      <a href="viewallparts" class="ag-courses-item_link">
        <div class="ag-courses-item_bg"></div>
        <div class="ag-courses-item_title">
          Number of Spare Parts Booked
        </div>
      </a>
    </div>
  </div>
  
  <div class="logout-button">
    <a href="/">Logout</a>
  </div>
</div>
</body>
</html>
