<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lease_Slip.aspx.cs" Inherits="_214Lab2.Lease_Slip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="Lease ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SlipID" HeaderText="SlipID" SortExpression="SlipID" />
            <asp:BoundField DataField="Name" HeaderText="Dock Name" SortExpression="Name" />
            <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
            <asp:BoundField DataField="Width" HeaderText="Slip Width" SortExpression="Width" />
            <asp:BoundField DataField="Length" HeaderText="Slip Length" SortExpression="Length" />
            <asp:BoundField DataField="WaterService" HeaderText="WaterService" SortExpression="WaterService" />
            <asp:BoundField DataField="ElectricalService" HeaderText="ElectricalService" SortExpression="ElectricalService" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MarinaConnectionString %>" 
        SelectCommand="SELECT lease.[ID]
	                  ,lastname
	                  ,firstname      
	                  ,[Name]	  
	                  ,[SlipID]
	                  ,[Width]
	                  ,[Length] 
                      ,[WaterService]
                      ,[ElectricalService]
                      FROM [Marina].[dbo].[Lease]
                      join   customer on customer.ID=lease.CustomerID
                      join slip on slip.ID= lease.SlipID
                      join Dock on dock.ID=slip.DockID ">

    </asp:SqlDataSource>
</asp:Content>
