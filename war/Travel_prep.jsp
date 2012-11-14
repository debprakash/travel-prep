<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.User" %>

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
	<script type="text/javascript">
	
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-33281154-3']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	
	</script>
	<script type="text/javascript"><!--
	google_ad_client = "ca-pub-1944794895294143";
	/* travel-prep-small */
	google_ad_slot = "8801617217";
	google_ad_width = 728;
	google_ad_height = 15;
	//-->
	</script>
	<script type="text/javascript"
	src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
	</script>
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
	<table height=100% width=100% cellspacing=0 cellpadding=0 border=0>
		<tr>
			<td>
			<div align="right">
				<%
					UserService userService = UserServiceFactory.getUserService();
	        		User user = userService.getCurrentUser();
	        	    if (user != null) {
	    		%>
	    			<%=user.getNickname()%>[<%= user.getEmail()%>]&nbsp;<a href="<%= UserServiceFactory.getUserService().createLogoutURL(request.getRequestURI()) %>">Sign-out</a>
	    		<%
	        		} else {
	   			%>
						<a href="<%= UserServiceFactory.getUserService().createLoginURL(request.getRequestURI()) %>">Login</a>
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
		        <td colspan="2" id="mapContainer">
		        </td>        
		      </tr>
		      <tr>
		        <td colspan="2" style="color:red;" id="errorLabelContainer"></td>
		      </tr>
		      <tr>
		      <td>
				<!-- Begin Official PayPal Seal -->
				<a href="https://www.paypal.com/us/verified/pal=debprakash%40gmail%2ecom" target="_blank">
				<img src="https://www.paypal.com/en_US/i/icon/verification_seal.gif" border="0" alt="Official PayPal Seal">
				</A>
				<!-- End Official PayPal Seal -->		      
		      </td>
		      </tr>
		    </table>
			</td>
		</tr>
	</table>
  </body>
</html>
