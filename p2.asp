<html>
<head>
    <title>Lab 5 - Part 2</title>
</head>
<body align="center">
        <% 
			Session("TimeVisited") = Time()
			Response.write(Session("TimeVisited"))
Response.write(" on " & Date())
			
			
			if Request.Cookies("count")<>"1" then Response.Cookies("count") = "0" end if
			visits = Request.Cookies("count")


if Request.Cookies("count")<>"0" then Response.write("<br>You're back eh? You remember how this thing works right?") end if
if Request.Cookies("count")="0" then Response.Cookies("count")="1" & Response.write("<br>I see this is you first time here, use the radio buttons to pick a background or use QueryString. The variable is 'b' ") end if


			Response.write("<br>" & Request.Cookies("count"))
			
			Response.Cookies("count").expires= dateAdd("n", 1, Now())
	
		
			%>
		
		<h1> Background Requester </h1>
        
		
           <br>
		<form>
			<input type=radio name=b value='red'> Red <br>
			<input type=radio name=b value='blue'>Blue <br>
			<input type=radio name=b value='secret'> ?	<br><br>
			
			<input type=submit value='Submit'>
		</form>
		
		<br>
		
		<p> (hint: the values should be 'red', 'blue', or 'secret')</p>
		<% 
				bg = Request.QueryString("b")
				
				if bg="red" then response.write("<body background='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuX_JycBi89UWHJIAraMdWsA-46VUocqIOrJmGqL68TPRtLa1-cA'> </body>") end if
				if bg="blue" then response.write("<body background='http://www.freevectors.me/wp-content/uploads/2015/08/Light-blue-pattern-seamless-background-vector.jpg'> </body>") end if
				if bg="secret" then response.write("<body background='https://i.ytimg.com/vi/TD5teiYcpzo/maxresdefault.jpg'> </body>") end if
				
		%>

</body>
</html>