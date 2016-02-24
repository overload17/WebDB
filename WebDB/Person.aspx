<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Person.aspx.cs" Inherits="WebDB.Person" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 451px;
        }
    </style>
</head>
<body style="height: 446px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Groove" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="325px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataEntityConnectionString1 %>" DeleteCommand="DELETE FROM [persons] WHERE [Id] = @Id" InsertCommand="INSERT INTO [persons] ([Id], [fname], [lname], [age]) VALUES (@Id, @fname, @lname, @age)" SelectCommand="SELECT [Id], [fname], [lname], [age] FROM [persons]" UpdateCommand="UPDATE [persons] SET [fname] = @fname, [lname] = @lname, [age] = @age WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderStyle="Groove" CellPadding="6" CellSpacing="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" EnableTheming="True" ForeColor="#333333" GridLines="None" Height="180px" HorizontalAlign="Center" Width="166px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
            </EmptyDataTemplate>
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dataEntityConnectionString1 %>" DeleteCommand="DELETE FROM [persons] WHERE [Id] = @original_Id AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND (([lname] = @original_lname) OR ([lname] IS NULL AND @original_lname IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))" InsertCommand="INSERT INTO [persons] ([Id], [fname], [lname], [age]) VALUES (@Id, @fname, @lname, @age)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [persons] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [persons] SET [fname] = @fname, [lname] = @lname, [age] = @age WHERE [Id] = @original_Id AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND (([lname] = @original_lname) OR ([lname] IS NULL AND @original_lname IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_fname" Type="String" />
                <asp:Parameter Name="original_lname" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_fname" Type="String" />
                <asp:Parameter Name="original_lname" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
