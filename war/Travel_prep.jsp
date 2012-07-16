<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<!doctype html>
<!-- The DOCTYPE declaration above will set the     -->
<!-- browser's rendering engine into                -->
<!-- "Standards Mode". Replacing this declaration   -->
<!-- with a "Quirks Mode" doctype is not supported. -->

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <!--                                                               -->
    <!-- Consider inlining CSS to reduce the number of requested files -->
    <!--                                                               -->
    <link type="text/css" rel="stylesheet" href="Travel_prep.css">

    <!--                                           -->
    <!-- Any title is fine                         -->
    <!--                                           -->
    <title>Travel Prep</title>
    
    <!--                                           -->
    <!-- This script loads your compiled module.   -->
    <!-- If you add any GWT meta tags, they must   -->
    <!-- be added before this line.                -->
    <!--                                           -->
    <script type="text/javascript" language="javascript" src="travel_prep/travel_prep.nocache.js"></script>
  </head>

  <!--                                           -->
  <!-- The body can have arbitrary html, or      -->
  <!-- you can leave the body empty if you want  -->
  <!-- to create a completely dynamic UI.        -->
  <!--                                           -->
  <body>

    <!-- OPTIONAL: include this if you want history support -->
    <iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position:absolute;width:0;height:0;border:0"></iframe>
    
    <!-- RECOMMENDED if your web app will not function without JavaScript enabled -->
    <noscript>
      <div style="width: 22em; position: absolute; left: 50%; margin-left: -11em; color: red; background-color: white; border: 1px solid red; padding: 4px; font-family: sans-serif">
        Your web browser must have JavaScript enabled
        in order for this application to display correctly.
      </div>
    </noscript>
	<% String pageUrl = request.getRequestURI() + "?" + request.getQueryString(); %>
	<table height=100% width=100% cellspacing=0 cellpadding=0 border=1>
		<tr>
			<td>
			<div align="right">
				<%
					UserService userService = UserServiceFactory.getUserService();
	        		if (request.getUserPrincipal() != null) {
	    		%>
	    			<%= request.getUserPrincipal().getName()%>&nbsp;<a href="<%= UserServiceFactory.getUserService().createLogoutURL(pageUrl) %>">Sign Out</a>
	    		<%
	        		} else {
	   			%>
						<a href="<%= UserServiceFactory.getUserService().createLoginURL(pageUrl) %>">Login</a>
	       		<%
	        		}
				%>
			</div>
			</td>
		</tr>
		<tr>
			<td><h1>Travel Prep</h1></td>
		</tr>
		<tr>
			<td>
		    <table align="center">
		      <tr>
		        <td colspan="2" style="font-weight:bold;">Please enter your name:</td>        
		      </tr>
		      <tr>
		        <td id="nameFieldContainer"></td>
		        <td id="sendButtonContainer"></td>
		      </tr>
		      <tr>
		        <td colspan="2" style="color:red;" id="errorLabelContainer"></td>
		      </tr>
		    </table>
			</td>
		</tr>
	</table>
  </body>
</html>
