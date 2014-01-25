<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /><br /><br />
      <h3>Please Confirm Your Information</h3>
   <h2>Register Confirmation Page</h2>
    <table>
        <tr>    
            <td>
            Enter Last Name:
            </td>
             <td>
             <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>                   </td>
            <td>
                <asp:RequiredFieldValidator ID="NeedValidLastName" runat="server" ErrorMessage="You Must Enter Last Name" ControlToValidate="TxtFirstName" CssClass="error"></asp:RequiredFieldValidator>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="You Must Enter Valid First Name" ControlToValidate="TxtFirstName" CssClass="error"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <tr>
            <td>
            Enter Email Address:
            </td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></td>
             <td>
             
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="txtEmail" CssClass="error">
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="You Must Enter a Valid Phone Number" ControlToValidate="TxtPhone" CssClass="error"></asp:RequiredFieldValidator>
                </td>
        </tr>
            <tr>
            <td>
            Enter Password:
            </td>
            <td>
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You Must Enter a Password" ControlToValidate="TxtPass" CssClass="error"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                 <td>      
            Confirm Password:
            </td>
            <td>
             <asp:TextBox ID="TxtConfirm" TextMode="Password" runat="server"></asp:TextBox>
             </td>
            <asp:RequiredFieldValidator ID="Required3" runat="server" ErrorMessage="You must confirm the password" ControlToValidate="TxtConfirm" CssClass="error">
                    </asp:RequiredFieldValidator>
                   
             </tr>
             <tr>
             <td>
                 <asp:CompareValidator ID="CompareValid" runat="server" ErrorMessage="Your passwords don't match" ControlToValidate="TxtConfirm" CssClass="error" ControlToCompare="TxtPass">
                    </asp:CompareValidator>
                    </td>
                    </tr>
       
        <tr>
            
                <asp:Button ID="BtnConfirm" runat="server" Text="Confirm" OnClick="BtnConfirm_Click" />
           
        </tr>
          <tr>
            <td>
                <asp:Label ID="lblError" runat="server" Text="Lbl"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

