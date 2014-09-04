<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffLogin.aspx.cs" Inherits="StaffManageSystem_StaffLogin" %>

<!DOCTYPE html>

<script language="C#" runat="server">

</script>    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../css/staffsystem.css" rel="stylesheet" type="text/css"/>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bootstrap.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container">
            <h1 style="text-align:center;margin-top:130px;">Allegra Hotels Management System</h1>
		    <div class="row" style="text-align:center;">
			    <img src="../img/HotelLogo.png" alt="Allegra Hotel"/>
		    </div>
            
		    <br />
            <div class="row" style="margin-left:300px; width: 304px;border-radius:4px;">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Style="width:200px;"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label>

                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Style="width:200px;"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" CssClass="btn"/>
                <br />
            </div>
            
		</div>
    </div>

        <div>
        </div>
    </form>
</body>
</html>
