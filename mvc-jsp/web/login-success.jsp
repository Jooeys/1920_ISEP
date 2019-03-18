<%@page import="com.javatpoint.LoginBean"%>

<%--<%--%>
    <%--LoginBean bean=(LoginBean)request.getAttribute("bean");--%>
    <%--out.print("Welcome, "+bean.getFirstName()+bean.getLastName());--%>
    <%--out.print(bean.getLastName());--%>
    <%--out.print(bean.getDate());--%>
    <%--out.print(bean.getSex());--%>
    <%--out.print(bean.getPassword());--%>


<%--%>--%>

<html>
<head><title>Lab1 </title></head>
<link type="text/css" rel="stylesheet" href="index.css" />
<body>
<h1 style="text-align: center">WEB TECHNOLOGY LAB1</h1>
<p style="text-align: center;">You are successfully logged in!</p>
<p style="text-align: center;"> <% LoginBean bean=(LoginBean)request.getAttribute("bean");
    out.print("Welcome, "+bean.getFirstName()+bean.getLastName());%></p>

<div class="form">
    <form>
        <fieldset>
            <legend>Personal information:</legend>
            <table>
                <tr class="input"><td align=left>First Name:</td><td><%out.print(bean.getFirstName());%></td></tr>
                <tr class="input"><td align=left>Last Name:</td><td><%out.print(bean.getLastName());%></td></tr>
            </table>
        </fieldset>

        <fieldset>
            <legend>Birth Day:</legend>
            <table>
                <tr><td align=left>Birth Date:</td><td><%out.print(bean.getDate());%></td></tr>
            </table>
        </fieldset>

        <fieldset>
            <legend>Sex:</legend>
            <table>
                <tr><td align=left>Sex:</td><td><%out.print(bean.getSex());%></td></tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Password:</legend>
            <table>
                <tr><td align=left>Password</td><td><%out.print(bean.getPassword());%></td></tr>
            </table>
        </fieldset>
    </form>

</div>
</div>
</body>
</html>
