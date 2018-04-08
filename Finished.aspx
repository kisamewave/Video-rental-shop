<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Finished.aspx.cs" Inherits="Finished" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:timer runat="server" ID="timerRed" Interval="3000" OnTick="timerRed_Tick"></asp:timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>
    </form>
</body>
</html>
