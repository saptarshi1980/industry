
<!DOCTYPE html>
<html>
<head>
    <title>The Durgapur Projects Limited</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link href="js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="styles.css">
   	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   	<script src="script.js"></script>
   	
 
<!--  <script>
var map;
function initialize() {
    var myLatlng = new google.maps.LatLng(23.50517, 87.29157);
    var myOptions = {
        zoom: 12,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    TestMarker();
}

// Function for adding a marker to the page.
function addMarker(location) {
    marker = new google.maps.Marker({
        position: location,
        map: map
    });
}

// Testing the addMarker function
function TestMarker() {
       CentralPark = new google.maps.LatLng(23.50517, 87.29157);
       addMarker(CentralPark);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script> -->
<style>
div.header {
    background-color:#5882FA;
    color:white;
    margin:20px;
    padding:20px;
} 

div.footer {
    background-color:#5882FA;
    color:white;
    margin:20px;
    padding:20px;
} 
.style1 {
	font-size: medium;
	font-weight: bold;
}
</style>
   
</head>
<body bgcolor="#FFF8DC" >
 <div class="header">
    <div id="logo" align="center">
    <table>
    <tr>
    <td><img src="logo.jpg" /></td>
         
    </table>
 </div>
 </div>
 </div>
  <div id="menumain" align="center">
  
  <div id='cssmenu'align="right">
<ul>
   <li><a href='index.jsp'><span>Home</span></a></li>
   <li class='active has-sub'><a href='#'><span>New Connection</span></a>
      <ul>
         <li class='last'><a href="CaptchaHandler"><span>Apply For New Industrial Connection</span></a> <!-- NewConnHandle -->r
         <!-- <li class='has-sub'><a href='#'><span>About DPL</span></a> -->
            <!-- <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul> -->
         </li>
         <li class='last'><a href="ConsFirstHandler"><span>View Current Status Of Your Application </span></a>
         <!-- <li class='has-sub'><a href='#'><span>Mission</span></a> -->
            <!-- <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul> -->
         </li>
      </ul>
   </li>
    <li class='active has-sub'><a href='#'><span>Administration</span></a>
      <ul>
         <li class='last'><a href="PowerDepttHandler"><span>Deptt Of Power</span></a>
         <!-- <li class='has-sub'><a href='#'><span>About DPL</span></a> -->
            <!-- <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul> -->
         </li>
         <li class='last'><a href="DPLHandler"><span>DPL </span></a>
         <!-- <li class='has-sub'><a href='#'><span>Mission</span></a> -->
            <!-- <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul> -->
         </li>
      </ul>
   </li>
   
</div>
  <br><br> <br><br> <br><br>
  </div>    
    <!--  <table align="center"><tr><td><a href="NewConnHandler"><img src="link.jpg"></a></td></tr><tr><td align="center"><img src="images.png"></td></tr></table><br><br> -->
    <div id="sliderFrame" >
        <table border="2">
        <tr><td>
        <div id="slider">
            <img src="imgs/1.jpg" alt="Eco Friendly Power Generation" />
            <img src="imgs/2.jpg" alt="An Industry for Indusrty" />
            <img src="imgs/3.jpg" alt="Eco Friendly Power Generation" />
            <img src="imgs/4.jpg" alt="Eco Friendly Coke Generation" />
            <img src="imgs/5.jpg" alt="Water Treatment" />
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
        </td>
        </tr>
        
        
</table>
</div>
<div class="footer">
<table align="center">
<tr><td><div align="center" class="style1">Portal Developed and Maintained by IT Cell, The Durgapur Projects Limited.</div></td>
</tr>
<tr><td><div align="center" class="style1">In case of any issue, please write to admin@dpl.net.in</div></td>
</tr>
</table>

</div>
</body>
</html>
