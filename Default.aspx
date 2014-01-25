<%@ Page Title="Registration for Community Assist" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  

<link href="Stylestyle.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Register</h2>
    <table>
        <tr>    
            <td>
            Enter Last Name:
            </td>
             <td>
             <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>            
             </td>
            <td>
                <asp:RequiredFieldValidator ID="NeedValidLastName" runat="server" ErrorMessage="You Must Enter Last Name" ControlToValidate="txtLastName" CssClass="error"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            Enter First Name:
            </td>
            <td>
                <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
            </td>
                      <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="You Must Enter Valid First Name" ControlToValidate="TxtFirstName" CssClass="error"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <tr>
            <td>
            Enter Email Address:
            </td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></td>
             <td>
             
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="TxtEmail" CssClass="error">
                   </asp:RequiredFieldValidator>
            </td>    
                
            <td>
                <asp:RegularExpressionValidator ID="RegExpressionValidEmail" runat="server" ErrorMessage="Must be a Valid Email" ControlToValidate="TxtEmail" ValidateRequestMode="Enabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error"></asp:RegularExpressionValidator>
            </td>
              
        </tr>
            <tr>
            <td>
            Enter Phone Number:
            </td>
            <td>
                <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPhone" CssClass="error" ErrorMessage="Please Enter Valid Phone #"></asp:RequiredFieldValidator>
                </td>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid Phone" ControlToValidate="TxtPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
           
        </tr>
            <tr>
            <td>
            Enter Password:
            </td>
            <td>
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You Must Enter a Password" ControlToValidate="TxtPassword" CssClass="error"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                    <td>      
            Confirm Password:
            </td>
            <td>
                <asp:TextBox ID="TxtConfirm" runat="server" TextMode="Password"></asp:TextBox>
            </td>
                <td>
                    <asp:RequiredFieldValidator ID="valid10" runat="server" ErrorMessage="You must confirm the password" ControlToValidate="TxtConfirm" CssClass="error">
                    </asp:RequiredFieldValidator>
                </td>
                
                    <asp:CompareValidator ID="CompareValid" runat="server" ErrorMessage="Your passwords don't match" ControlToValidate="TxtConfirm" CssClass="error" ControlToCompare="TxtPassword">
                    </asp:CompareValidator>
           
        </tr>
        <tr>
        <td>
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
        </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>

    </table>
</asp:Content>

