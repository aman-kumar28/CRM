<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="MasterPageDemo.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
            width: 367px;
        }
    .auto-style2 {
        width: 80%;
    }
    .auto-style3 {
        width: 435px;
    }
    .auto-style4 {
        height: 31px;
        width: 435px;
    }
    .auto-style5 {
        height: 35px;
        width: 367px;
    }
    .auto-style6 {
        height: 35px;
        width: 435px;
    }
    .auto-style7 {
        width: 367px;
    }
        .auto-style8 {
            height: 118px;
            width: 367px;
        }
        .auto-style9 {
            height: 118px;
            width: 435px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="color:blue;text-align:center;">Enquiry Form</h2>
    <br/>
    <table style="margin:0 auto;" class="auto-style2">
        <tr>
           <td class="auto-style7">Enter Name</td>
            <td class="auto-style3">
     <asp:TextBox ID="TextName" runat="server" Height="28px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
           <td class="auto-style1">Select Gender</td>
            <td class="auto-style4">
                <asp:RadioButton ID="RbtnMale" runat="server" GroupName="gender" Text="Male" />
&nbsp;
                <asp:RadioButton ID="RbtnFemale" runat="server" GroupName="gender" Text="Female" />
            </td>
        </tr>
        <tr>
           <td class="auto-style5">Enter Address</td>
            <td class="auto-style6">
                <asp:TextBox ID="Textaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
           <td class="auto-style1">Enter Contact No</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextContactNo" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextContactNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
           <td class="auto-style1">Enter Email Address</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextEmailAddress" runat="server" TextMode="Email" Height="30px" Width="141px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextEmailAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmailAddress" ErrorMessage="enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
           <td class="auto-style1">Enter Enquiry</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextEnquiry" runat="server" TextMode="MultiLine" Height="67px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextEnquiry" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
           <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        </table>
</asp:Content>
