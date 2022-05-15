<%@page import="com.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body style="background-color:#cff3fa";> 
<div class="container"><div class="row"><div class="col-6"> 
<center>
<h1 style="color:blue;">Billing Management </h1>
</center>
<form id="formItem" name="formItem" method="post" action="items.jsp">
 Bill Code: 
 <input id="itemCode" name="itemCode" type="text" 
 class="form-control form-control-sm">
 <br> Bill Holder Name: 
 <input id="itemName" name="itemName" type="text" 
 class="form-control form-control-sm">
 <br> Bill Amount: 
 <input id="itemPrice" name="itemPrice" type="text" 
 class="form-control form-control-sm">
 <br> Bill Description: 
 <input id="itemDesc" name="itemDesc" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidItemIDSave" 
 name="hidItemIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divItemsGrid">
 <%
 Item itemObj = new Item(); 
 out.print(itemObj.readItems()); 
 %>
</div>
</div> </div> </div> 
</body>
</html>