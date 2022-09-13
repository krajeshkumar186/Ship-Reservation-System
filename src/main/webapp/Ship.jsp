<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -20px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: light-black	;
  padding: 5px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
</style>
</head>
<body>

<!-- MAIN (Center website) -->
<div class="main">

<h1>Ship Details</h1>
<hr>

<h2>PORTFOLIO</h2>

<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')">Cheap Ship</button>
  <button class="btn" onclick="filterSelection('cars')"> Luxury</button>
  <button class="btn" onclick="filterSelection('people')"> Official</button>
  <a href="Homepage.jsp"><button class="btn" > Logout</button></a>
</div>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column nature">
    <div class="content">
      <a href="Booking.jsp"><img src="cheap1.jpg" alt="Mountains" style="width:100%" ></a>
      <h4>Cheap Ships</h4>
      <p>Cost 2000 to 5000.</p>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <a href="Booking.jsp"><img src="cheap2.jpg" alt="Lights" style="width:100%"></a>	
      <h4>Cheap Ships</h4>
      <p>Cost 2000 to 5000.</p>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <a href="Booking.jsp"><img src="cheap3.jpg" alt="Nature" style="width:100%"></a>
      <h4>Cheap Ships</h4>
      <p>Cost 2000 to 5000.</p>
    </div>
  </div>
  
  <div class="column cars">
    <div class="content">
     <a href="Booking.jsp"><img src="Luxury1.jpg" alt="Car" style="width:100%"></a> 
     <h4>Luxury Ships</h4>
      <p>Cost 10000 to 20000.</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <a href="Booking.jsp"><img src="Luxury2.jpg" alt="Car" style="width:100%"></a> 
      <h4>Luxury Ships</h4>
      <p>Cost 10000 to 20000.</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <a href="Booking.jsp"><img src="Luxury3.jpg" alt="Car" style="width:100%"></a> 
     <h4>Luxury Ship</h4>
      <p>Cost 10000 to 20000.</p>
    </div>
  </div>

  <div class="column people">
    <div class="content">
     <a href="Booking.jsp"><img src="Official1.jpg" alt="Car" style="width:100%"></a>
      <h4>Official Ships</h4>
      <p>Cost 20000 to 50000.</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
     <a href="Booking.jsp"><img src="Official2.jpg" alt="Car" style="width:100%"></a>
     <h4>Official Ships</h4>
      <p>Cost 20000 to 50000.</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
     <a href="Booking.jsp"><img src="Official3.jpg" alt="Car" style="width:100%"></a>
      <h4>Official Ships</h4>
      <p>Cost 20000 to 50000.</p>
    </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>
    