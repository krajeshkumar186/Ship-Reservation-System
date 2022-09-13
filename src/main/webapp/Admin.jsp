<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Page</title>
<style>
body {
  width: 500px;
  margin: 0 auto;
  padding: 50px;
}

div.elem-group {
  margin: 20px 0;
}

div.elem-group.inlined {
  width: 49%;
  display: inline-block;
  float: left;
  margin-left: 1%;
}

label {
  display: block;
  font-family: 'Nanum Gothic';
  padding-bottom: 10px;
  font-size: 1.25em;
}

input, select, textarea {
  border-radius: 2px;
  border: 2px solid #777;
  box-sizing: border-box;
  font-size: 1.25em;
  font-family: 'Nanum Gothic';
  width: 100%;
  padding: 10px;
}

div.elem-group.inlined input {
  width: 95%;
  display: inline-block;
}

textarea {
  height: 250px;
}

hr {
  border: 1px dotted #ccc;
}

button {
  height: 50px;
  background: orange;
  border: none;
  color: white;
  font-size: 1.25em;
  font-family: 'Nanum Gothic';
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  border: 2px solid black;
}
</style>

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
</style>
</style>
</head>
<body>
<ul>
  <li><a href="#home">Add</a></li>
  
  <li><a href="#news">Remove</a></li>
  <li><a href="#contact">Modify</a></li>
  <li><a href="#contact">View</a></li>
  <li style="float:right"><a class="active" href="Homepage.jsp">Logout</a></li>
</ul>
<form action="Msg.jsp" method="post">
  <div class="elem-group">
    <label for="name">ShipName</label>
    <input type="text" id="name" name="visitor_name" placeholder="John Doe" pattern=[A-Z\sa-z]{3,20} required>
  </div>
  <div class="elem-group">
    <label for="email">Ship Price </label>
    <input type="text" id="email" name="visitor_email" placeholder="2000-50000" required>
  </div>
  
   <div class="elem-group">
    <label for="phone">From</label>
    <input type="text" id="phone" name="visitor_phone" placeholder="India" pattern=[A-Z\sa-z]{3,20} required>
  </div>
  <div class="elem-group">
    <label for="phone">To</label>
    <input type="text" id="phone" name="visitor_phone" placeholder="Srilanka" pattern=[A-Z\sa-z]{3,20} required>
  </div>
  <hr>
  <div class="elem-group inlined">
    <label for="adult">Adults</label>
    <input type="number" id="adult" name="total_adults" placeholder="2" min="1" required>
  </div>
  <div class="elem-group inlined">
    <label for="child">Children</label>
    <input type="number" id="child" name="total_children" placeholder="2" min="0" required>
  </div>
  <div class="elem-group inlined">
    <label for="Date of Travel">Availability From </label>
    <input type="date" id="checkin-date" name="checkin" required>
  </div>
  <div class="elem-group inlined">
    <label for="Date of Return">Availability To</label>
    <input type="date" id="checkout-date" name="checkout" required>
  </div>
  <div class="elem-group">
    <label for="Shiptype">Shiptype</label>
    <select id="room-selection" name="room_preference" required>
        <option value="">Choose a Type of Ship</option>
        <option value="connecting">Cheap</option>
        <option value="adjoining">Luxury</option>
        <option value="adjacent">Official</option>
    </select>
  </div>
  <hr>
  <div class="elem-group">
    <label for="message">Anything Else?</label>
    <textarea id="message" name="visitor_message" placeholder="Tell us anything else that might be important." required></textarea>
  </div>
  <button type="submit" onclick="popupfunction()">Add Ship</button>
 </form>
<script>
function popupfunction() {
  let person = prompt("Please enter your name", "");
  document.getElementById("Adding Success");
}
<script>
var currentDateTime = new Date();
var year = currentDateTime.getFullYear();
var month = (currentDateTime.getMonth() + 1);
var date = (currentDateTime.getDate() + 1);

if(date < 10) {
  date = '0' + date;
}
if(month < 10) {
  month = '0' + month;
}

var dateTomorrow = year + "-" + month + "-" + date;
var checkinElem = document.querySelector("#checkin-date");
var checkoutElem = document.querySelector("#checkout-date");

checkinElem.setAttribute("min", dateTomorrow);

checkinElem.onchange = function () {
    checkoutElem.setAttribute("min", this.value);
}
</script>



</body>
</html>