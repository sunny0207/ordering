<style>

* {
    margin:0;
    padding:0;
 }
 </style>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
   
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: middle;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #1abc9c;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
</style>
</head>
<link rel="stylesheet" type="text/css" href="common.css"></link>
<div>
	<div id="header" style="height:18%;width:100%">
		<jsp:include page="header.jsp" />
	</div>
	
	<div id="body" style="height:77%;width:100%;overflow:scroll;">
	
	
<body>

<div class="tab" style="display:block height:7%width:100%" align="center">
  <button class="tablinks" onclick="openCity(event, 'Personal')">Personal Information</button>
  <button class="tablinks" onclick="openCity(event, 'Billing')">Billing Information</button>
  <button class="tablinks" onclick="openCity(event, 'Revieworder')">Order Review</button>
   <button class="tablinks" onclick="openCity(event, 'Confirmorder')" >Order Confirmation</button>
</div>

<div id="Personal"  style="display:none" class="tabcontent form-style-5">
  <form>
<fieldset>
<legend> Personal Information</legend>
<input type="text" name="field1" placeholder="FirstName *">
<input type="text" name="field1" placeholder="LastName *">
<input type="text" name="field1" placeholder="Date Of Birth*">
<input type="email" name="field2" placeholder="Email *">
<input type="text" name="field1" placeholder="Address Lane1 *">
<input type="text" name="field1" placeholder="Address Lane2 *">
<input type="text" name="field1" placeholder="City*">
<input type="text" name="field1" placeholder="State*">
<input type="text" name="field1" placeholder="zip*">
<p><input type="button" onclick="showbilling()" value="Continue"  style="font-size:unset" />
<input type="button" onclick="showplans()" value="Previous" style="font-size:unset"/></p>
</form>
</div>

<div id="Billing" style="display:none" class="tabcontent form-style-5">
<form>
<fieldset>
<legend><span class="number">1</span> Billing Type</legend>
<input type="text" name="field1" placeholder="Debit/CreditCardNo *">
<input type="text" name="field1" placeholder="ExpiryDate*">
<input type="text" name="field1" placeholder="Cvv*">
<legend><span class="number">2</span> Billing Information</legend>
<input type="text" name="field1" placeholder="CardHolderName*">
<input type="email" name="field2" placeholder="CardHolderEmail *">
<input type="text" name="field1" placeholder="CardHolderAddress Lane1 *">
<input type="text" name="field1" placeholder="CardHolderAddress Lane2 *">
<input type="text" name="field1" placeholder="City*">
<input type="text" name="field1" placeholder="State*">
<input type="text" name="field1" placeholder="zip*">
<input type="button" onclick="showreview()" value="Continue"style="font-size:unset" /> 
<input type="button" onclick="showpersonal()" value="Previous"style="font-size:unset" />
</form>
</div>

<div id="Revieworder" style="display:none" class="tabcontent form-style-5">
 <form>
<fieldset>
<legend><span class="number">1</span> Insurance Type</legend>
<legend><span class="number">2</span> Personal Information</legend>
<legend><span class="number">3</span> Billing Information</legend>
<label for="job">Terms Of Use:</label>
<select id="job" name="field4">
<option  value="C:\Users\sonny\OneDrive\Desktop\Insurance Design\Terms of Use.txt" width="50" height="50"></object>
<input type="button" onclick="showConfirmOrder()" value="Pay" style="font-size:unset"/>
<input type="button" onclick="showbilling()" value="Previous"style="font-size:unset" />
</div>
<div id="Confirmorder" style="display:none" class="tabcontent form-style-5">
 <form>
<fieldset>

<input type="submit" onclick="showplans()" value="Continue Shopping" style="font-size:unset">
</form>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
function showpersonal()
{
	document.getElementById("Personal").style.display="block";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="none";
}
function showbilling()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="block";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="none";
}
function showreview()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="block";
	document.getElementById("Confirmorder").style.display="none";
}
function showConfirmOrder()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="block";
}
function showplans()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="none";
}

</script>
     
</body>

	</div>
	<div id="footer"  style="height:5%;width:100%">
		<jsp:include page="footer.jsp" />
	</div>
</div> 