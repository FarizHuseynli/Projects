<%-- 
    Document   : login
    Created on : 07.12.2013, 13:14:33
    Author     : LocalAdmin
--%>
<%
response.setHeader("Cache-Control","no-store,no-chache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires",-1);

//check if user is already logged in
if(request.getRemoteUser()!=null)
{
    response.sendRedirect("logoutConfirmation.jsp");
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
    <!--<LINK REL=STYLESHEET
          HREF="../company-styles.css"
          TYPE="text/css">
    -->
    </head>
    <body>
        <TABLE BORDER=5 ALIGN="CENTER">
            <TR><TH CLASS="TITLE">LOG IN</TABLE>
        <P>
        <H3>Sorry you must login before accessing this resource</h3>
        <form action="j_security_check" method="POST">
            <table>
                <tr><td>User Name:<input type="text" name="j_username">
                <tr><td>Password:<input type="password" name="j_password">
                <tr><th><input type="submit" value="log in">
            </table>
        </form>
     </body>
</html>
      