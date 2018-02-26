<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="FlightForTheFuture.RegForm" %>

<!DOCTYPE html>

<%--* Written By: Paul Smyth
     * Version 1.0
     * Date: 29/01/16
     * This is the Registration Form. It takes input from the user and performs 
     * client side checks to validate the data before proceding to the main menu.
     *--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link rel="stylesheet" href="RegistrationStyle.css" type="text/css" media="screen"/>
    <style type="text/css">
        #Select1 {
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="Images/futureLogo.jpg" />
        <br /> <br />
        <table border="0" >
            <tr>
                <td><asp:Label ID="lblUsername" runat="server" Text="User Name" /></td>
                <td><asp:TextBox ID="txtUsername" runat="server" Text="" /></td>
                <td><asp:RequiredFieldValidator ID="userNameRequiredFieldValidator" 
                        runat="server" 
                        ControlToValidate="txtUserName" 
                        ErrorMessage="1. Please enter a Username"
                        Text="1" 
                        ValidationGroup="regFormValidationGroup"> 
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="userNameRegularExpressionValidator" 
                        runat="server"
                        ControlToValidate="txtUserName" 
                        ErrorMessage="1. Username must be 7 characters long or more and only contain letters of the alphabet"
                        Text="1"
                        validationexpression="[a-zA-Z]{7,99}"
                        ValidationGroup="regFormValidationGroup">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblEmail" runat="server" Text="Email" /></td>
                <td><asp:TextBox ID="txtEmail" runat="server" Text="" /></td>
                <td>
                    <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" 
                        runat="server" 
                        ErrorMessage="2. Please enter a valid email address. ie, name@domain.com" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="txtEmail" 
                        Text="2" 
                        ValidationGroup="regFormValidationGroup"> </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" 
                        runat="server" 
                        ErrorMessage="2. Please enter a valid email address"
                        ControlToValidate="txtEmail" 
                        Text="2" 
                        ValidationGroup="regFormValidationGroup"> 
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblEmailMe" runat="server" Text="Allow Users to email me" /></td>
                <td><asp:CheckBox ID="cbEmailMe" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPassword" runat="server" Text="Password" /></td>
                <td><asp:TextBox ID="txtPassword" runat="server" Text="" TextMode="Password" /></td>
                <td><asp:RequiredFieldValidator ID="passwordRequiredFieldValidator" 
                        runat="server" 
                        ControlToValidate="txtPassword" 
                        ErrorMessage="3. Please enter a Password"
                        Text="3" 
                        ValidationGroup="regFormValidationGroup"> 
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="passwordRegularExpressionValidator" 
                        runat="server"
                        ControlToValidate="txtPassword" 
                        ErrorMessage="3. Password must be 7 characters long or more"
                        Text="3"
                        validationexpression="[\S]{7,99}" 
                        ValidationGroup="regFormValidationGroup">

                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPasswordVerify" runat="server" Text="Verify Password" /></td>
                <td><asp:TextBox ID="txtPasswordVerify" runat="server" Text="" TextMode="Password" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="verifyPassworRequiredFieldValidator" 
                        runat="server"
                        ControlToValidate="txtPasswordVerify" 
                        ErrorMessage="4. Please enter your password again to verify"
                        Text="4" 
                        ValidationGroup="regFormValidationGroup"> </asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="verifyPasswordCompareValidator" 
                        runat="server" 
                        ErrorMessage="4. Verify Password is incorrect. Please enter an identical Password." 
                        ControlToValidate="txtPasswordVerify"
                        ControlToCompare="txtPassword"
                        Text="4" 
                        ValidationGroup="regFormValidationGroup"> </asp:CompareValidator>
                    
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCountry" runat="server" Text="Country" /></td>
                <td>
                    <asp:DropDownList ID="ddlCountry" runat="server" >
                        <asp:ListItem>Click to select</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>New Zealand</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="countryCompareValidator" 
                        runat="server"
                        ControlToValidate="ddlCountry"
                        Operator="NotEqual"
                        ValueToCompare="Australia" 
                        ErrorMessage="5. Please select a country"
                        Text="5" 
                        ValidationGroup="regFormValidationGroup"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnSubmit" 
                        runat="server" 
                        Text="Submit" 
                        OnClick="btnSubmit_Click"
                        CausesValidation="true"
                        ValidationGroup="regFormValidationGroup" />
                    &nbsp &nbsp &nbsp
                    <asp:Button ID="btnCancel" 
                        runat="server" 
                        Text="Cancel" 
                        OnClick="btnCancel_Click" 
                        CausesValidation="false" /></td>
            </tr>
        </table>
        <br /> <br />
        <asp:Label ID="lblMessage" runat="server" Text="" />
        <br /> <br />
        <asp:ValidationSummary ID="regFormValidationSummary" 
            runat="server" 
            HeaderText="Please correct the following errors:"
            ValidationGroup="regFormValidationGroup"
             />
    </div> 
    </form>
</body>
</html>
