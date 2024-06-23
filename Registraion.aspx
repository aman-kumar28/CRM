<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registraion.aspx.cs" Inherits="MasterPageDemo.Registraion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 285px;
        }
        .auto-style4 {
            width: 285px;
            height: 33px;
        }
        .auto-style5 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 style="color:blue;text-align:center;">Registration Form</h2>

 <br />
 
     <table class="auto-style2">
         <tr>
             <td class="auto-style3">Enter Name</td>
             <td>
                 <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Select Gender</td>
             <td>
                 <asp:RadioButton ID="RbtnMale" runat="server" GroupName="gender" Text="Male" />
&nbsp;
                 <asp:RadioButton ID="RbtnFemale" runat="server" GroupName="gender" Text="Female" ViewStateMode="Enabled" />
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Enter Contact No</td>
             <td>
                 <asp:TextBox ID="TxtContactNo" runat="server" TextMode="Number"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>Address</td>
             <td>
                 <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style4">Enter Email Address</td>
             <td class="auto-style5">
                 <asp:TextBox ID="TxtEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Enter Adhar No</td>
             <td>
                 <asp:TextBox ID="TxtAdharNo" runat="server" TextMode="Number"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Select Profile Pic</td>
             <td>
                 <asp:FileUpload ID="FUProfilePic" runat="server" />
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Enter Password</td>
             <td>
                 <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">Confirm Password</td>
             <td>
                 <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>
                 <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" />
             </td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
 
</asp:Content>
