<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MasterPageDemo.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 273px;
        }
        .auto-style3 {
            width: 273px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


        <h3 style="color:red;text-align:center">Customer Login</h3>
        <br/>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Enter user Id</td>
          
            <td>
                <asp:TextBox ID="TxtUserId" runat="server" Height="34px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUserId" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>

        </tr>
       
        <tr>
            <td class="auto-style3">Enter Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Height="32px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" Height="54px" Width="115px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    


</asp:Content>
