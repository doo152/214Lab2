<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="_214Lab2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="register" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="mb-3 text-center">New Customer Registration:</h3>

    <div class="row ">
        <div class="col-mb-6 mb-3">
            User Name:
            <div class="input-group">
                <asp:TextBox ID="username" runat="server" CausesValidation="True" MaxLength="15" ToolTip="Must be at least 2 characters, containing letters, numbers only"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is Required" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-6 mb-3">
            Password: 
            <div class="input-group">
                <input id="Password" type="password" maxlength="15" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password must be filled"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-6 mb-3">
            Confirm Password: 
                <div class="input-group">
                    <input id="Password1" type="password" maxlength="15" /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please verify password"></asp:RequiredFieldValidator>
                </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-6 mb-3">
            First Name:<div class="input-group">
                <asp:TextBox ID="fname" runat="server" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="First name is required" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-6 mb-3">
            Last Name:<div class="input-group">
                <asp:TextBox ID="lname" runat="server" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Lastname is required" ControlToValidate="lname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-6 mb-3">
            City:<div class="input-group">
                <asp:TextBox ID="city" runat="server" MaxLength="30" OnTextChanged="city_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="City is required" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-6 mb-3">
            Email Address:
            <div class="input-group">
                <asp:TextBox ID="email" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please fill in your email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-6 mb-3">
            Contact Number:<div class="input-group">
                <asp:TextBox ID="phone" runat="server" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="phone" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-mb-3 mb-3">
            <asp:Button ID="clear" runat="server" Text="Clear" OnClick="clear_Click" />
        </div>
        <div class="col-mb-3 mb-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <div class="col-mb-3 mb-3">
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
        </div>
    </div>


</asp:Content>
