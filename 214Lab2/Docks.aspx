<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Docks.aspx.cs" Inherits="_214Lab2.Docks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Docks" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h3>Available Docks and Slips</h3>
    <div class="row align-content-center">
        
        <span class="m-4 text-center">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource0" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />                
                <asp:BoundField DataField="ID" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True"/>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:CheckBoxField DataField="WaterService" HeaderText="WaterService" SortExpression="WaterService" />
                <asp:CheckBoxField DataField="ElectricalService" HeaderText="ElectricalService" SortExpression="ElectricalService" />
            </Columns>
        </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:MarinaConnectionString %>" 
            SelectCommand="SELECT [ID], [Name], [WaterService], [ElectricalService] FROM [Dock]">            
           </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MarinaConnectionString %>" 
            SelectCommand="SELECT ID AS [SLIP ID], WIDTH AS [SLIP WIDTH] , LENGTH AS [SLIP LENGTH]
                            FROM SLIP  Where DockID in (Select ID from Dock Where ID=@ID)
                            And ID NOT IN (SELECT SLIPID FROM LEASE)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" DbType="Int32" Direction="Input" QueryStringField="DockID" ConvertEmptyStringToNull="true" />
            </SelectParameters>

        </asp:SqlDataSource>
        </span>
        <span class="m-4">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="true" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>
                <PagerSettings Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Prev" FirstPageText="First" LastPageText="Last" /> 

                <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
            </asp:GridView>
        </span>
        
        <br />
    </div>

</asp:Content>
