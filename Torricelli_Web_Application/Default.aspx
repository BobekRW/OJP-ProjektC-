<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Torricelli_Web_Application.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wzór Torricellego</title>
    <style type="text/css">
        .auto-style1 {
            color: #00CC00;
            background-color: #000000;
            font-size: xx-large;
            margin-left: 350px;
        }
        #form1 {
            color: #00CC00;
            height: 979px;
            width:1374px;
            margin-left: 0px;
            background-color: #000000;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server">
    <div class="auto-style1">

        Wzór Torricellego</div>

         <br />
        <div style="margin-left:670px">Wyniki:</div>
       <div style="margin-left: 2px"> Wysokość wody w<br />beczce: [m]<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
        <div style="margin-left:670px">Maksymalna prędkośc: [m/s]</div>
        <br />
        <div style="margin-left:670px"><asp:Label ID="etykietaPredkosci" runat="server"></asp:Label></div>
         <br />
        <br />
        <div style="margin-left: 2px"> Wysokość wody nad <br />otworem: [m]<br /></div>
            <div style="margin-left: 2px"><asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Double"></asp:TextBox></div>
       <div style="margin-left:670px">Maksymalny zasięg strumienia: [m]</div>
        <br />
        <div style="margin-left:670px"><asp:Label ID="etykietaZasiegu" runat="server"></asp:Label></div>
         <br />
         <br />
        <div style="margin-left: 2px"> Wartość przyspieszenia <br />ziemskiego: [m/s<sup>2</sup>]<br /></div>
            <div style="margin-left: 2px"> <asp:TextBox ID="grawitacjaTextBox" runat="server" BackColor="#6699FF" BorderColor="Black" BorderStyle="Double" ForeColor="White">9,0865</asp:TextBox></div>
        <div style="margin-left:670px">Czas spadku strumienia: [s]</div>
        <br />
        <div style="margin-left:670px"><asp:Label ID="etykietaCzasu" runat="server"></asp:Label></div>
         <br />
        <br />
         <br />
        <div style="width: 57px; height: 32px; margin-left: 840px">
            <asp:Button ID="policzButton" runat="server" OnClick="policzButton_Click" Text="Policz" Height="33px" Width="57px" />
            <br />
            <br />
        </div>
        <div style="margin-left: 2px">Komentarze:</div>
        <br />
         <div style="margin-left: 2px"><asp:TextBox ID="nazwaUzytTextBox" runat="server"></asp:TextBox></div>
        <br />
        <div style="margin-left: 2px"> <asp:TextBox ID="komentarzTextBox" runat="server" Height="47px" TextMode="MultiLine" Width="893px"></asp:TextBox></div>
        <br />
        <div style="margin-left: 360px">
            <asp:Button ID="wyslijButton" runat="server" OnClick="wyslijButton_Click" Text="Dodaj Komentarz" style="text-align: center" />
        </div>
        <br />
        <br />
         <div style="margin-left: 2px"><asp:Label ID="Label1" runat="server"></asp:Label></div>
    </form>
</body>
</html>
