<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="_214Lab2.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="register" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="mb-3 text-center">New Customer Registration:</h3>

    <div class="form-group">
        <label class="control-label col-sm-2" for="username">
            User Name:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="Username" class="form-control" runat="server" CausesValidation="True" MaxLength="15" ToolTip="Must be at least 2 characters, containing letters, numbers only"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is Required" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="password">
            Password:
        </label>
        <div class="col-sm-5 form-control">
            <asp:TextBox ID="Password" TextMode="password" runat="server" maxlength="15" />
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="password1">
            Confirm Password:
        </label>
        <div class="col-sm-5 form-control">
            <asp:TextBox ID="Password1" runat="server" TextMode="password" maxlength="15" />
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="fname">
            First Name:
        </label>
        <div class="col-sm-5">
            <asp:TextBox ID="Fname"  class="form-control" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="First name is required" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="lname">
            Last Name:</label><div class="col-sm-5">
                <asp:TextBox ID="Lname"  class="form-control" runat="server" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Lastname is required" ControlToValidate="lname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="city">
            City:
        </label>
        <div class="col-sm-5">
            <asp:TextBox ID="City" runat="server" class="form-control" MaxLength="30" OnTextChanged="city_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="City is required" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="email">
            Email Address:</label>
        <div class="col-sm-5">
            <asp:TextBox type="email" ID="Email" class="form-control" runat="server" MaxLength="100" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please fill in your email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="phone">
            Contact Number:</label><div class="col-sm-5">
                <asp:TextBox ID="Phone" runat="server" class="form-control" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="phone" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
    </div>

    <div class="form-group">
        <div class="col-md-offset-3 col-md-9">
            <asp:Button ID="clear" runat="server" CausesValidation="false" CssClass="btn btn-primary" Text="Clear" OnClick="clear_Click" />

            <asp:Button ID="submit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="submit_Click" />
        </div>
    </div>


</asp:Content>
