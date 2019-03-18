<html>
<head><title>Lab1 </title></head>
<link type="text/css" rel="stylesheet" href="index.css" />
<body>
<h1 style="text-align: center">WEB TECHNOLOGY LAB1</h1>

<div class="form">
    <form action="FormServlet" name="" method="post">
        <fieldset>
            <legend>Personal information:</legend>
            <table>
                <tr class="input"><td align=left>First Name</td><td><input type=text name="firstname" style="background-color:#FFF3F3;focus:background-color:white;"><font color=red> *</font></td></tr>
                <tr class="input"><td align=left>Last Name</td><td><input type=text name="lastname" style="background-color:#FFF3F3;"><font color=red> *</font></td></tr>
            </table>
        </fieldset>

        <fieldset>
            <legend>Birth Day:</legend>
            <table>
                <tr><td align=left>Birth Date</td><td><input type=text name="date" style="background-color:#FFF3F3;"></td></tr>
            </table>
        </fieldset>

        <fieldset>
            <legend>Sex:</legend>
            <table>
                Male<input type="radio" name="sex" value="male" style="float:center;"><br>
                Female<input type="radio" name="sex" value="female" style="float:center;">
            </table>
        </fieldset>
        <fieldset>
            <legend>Password:</legend>
            <table>
                Password:<input type="password" name="password">
            </table>
        </fieldset>
        <div class="input-group">
            <input type=submit name="submit" value="Envoyer" style="background-color:#FFF3F3;">
        </div>
        <caption>With<font color=red> * </font>terms must be filled</caption>
    </form>

</div>
</div>
</body>
</html>
