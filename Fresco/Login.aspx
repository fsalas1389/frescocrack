<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="cobranza.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <link href="dist/css/Login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="modal fade container" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="width: 80%">
		        <div class="loginmodal-container">
			        <h1>Iniciar Sesión</h1><br>
				    <asp:TextBox ID="txtUser" runat="server" placeholder="Usuario"></asp:TextBox>
				    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
				    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="Entrar" class="login loginmodal-submit" />
                    <asp:Label ID="lblError" runat="server" CssClass="login-error" ></asp:Label>
			    </div>
		    </div>
	    </div>
    </form>
</body>
</html>
