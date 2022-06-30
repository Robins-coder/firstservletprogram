<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sample</title>


</head>
<body>

<h1>hi robins</h1>
<button  name="name" id="adduser">AddUser</button>
<br>
<table id="usernameid">Name</table>

<script type="text/javascript" src="js/jquery-3.6.0.js"></script>

<script>


$("#adduser").click(function()
{
	adduser("ram");
});



adduser=function(name)
{

	  var object={
		 "url":"/user?name="+name,
		 "method":"POST"
	  };
	  
	  $.ajax(object).done(function(response){
		  console.log(response);
	       
		  response=JSON.parse(response);
		  var html1=response.name;
	      console.log(response.name);
	      $("#usernameid").append(html1);
	  });
	
};


functionuser=function(){
		
		var object={
				"url":"/user",
		        "method":"GET"
		};
		
		$.ajax(object).done(function(response){
          
			/* 
			 user=JSON.parse(response);
				
		      for(i=0;i<user.length;i++)
		      {
		    	var users =user[i];
		    	console.log(users);
		      } */
			
           renderUsers(response);
		  //console.log("hi===>"+response);
		
		});
		
		};

		functionuser();		
  renderUsers=function(user){
             
	      var html1=""; 
	      user=JSON.parse(user);
	
	      for(i=0;i<user.length;i++)
	      {
	    	var users =user[i];
	    	html1+="<tr><td>"+users.name+"<td></tr>";
	    	//console.log(users);
	      }
	      
	      $("#usernameid").html(html1);
};		 
		
		
</script>

</body>
</html>