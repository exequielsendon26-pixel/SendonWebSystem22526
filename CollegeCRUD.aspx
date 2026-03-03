<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="CollegeCRUD.aspx.cs" Inherits="SendonWebSystem22526.CollegeCRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="collegeID" DataSourceID="SqlDataSource1" class="table table-hover" OnRowDeleted="GridView1_RowDeleted">
        <Columns>
            <asp:TemplateField HeaderText="No.">
                <ItemTemplate>
                   <%#  Container.DataItemIndex + 1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No."></asp:TemplateField>
            <asp:BoundField DataField="collegeID" HeaderText="collegeID" InsertVisible="False" ReadOnly="True" SortExpression="collegeID" Visible="False" />
            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" SortExpression="Deleted" Visible="False" />
            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" CommandArgument="Select" Text="Edit" class="btn btn-info" Height="35px" Width="60px"/>
                    <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" class="btn btn-outline-danger" Height="35px" Width="70px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT collegeID, Code, Description, Deleted FROM tblCollege WHERE (Deleted = 0)" 
        InsertCommand="INSERT INTO tblCollege(Code, Description, Deleted) VALUES (?, ?, ?)" DeleteCommand="UPDATE tblCollege SET Deleted = ? WHERE (collegeID = ?)" OnInserted="SqlDataSource1_Inserted" 
      >
        <DeleteParameters>
            <asp:Parameter DefaultValue="1" Name="?" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtCode" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDescription" Name="?" PropertyName="Text" />
            <asp:Parameter DefaultValue="0" Name="?" />
        </InsertParameters>
    </asp:SqlDataSource>





    <asp:LinkButton ID="lbtnAddNewRecord" runat="server" OnClick="lbtnAddNewRecord_Click">Add New Record</asp:LinkButton>
    <br />
    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="form-control btn btn-success"></asp:Label>


    <asp:Panel ID="pnlAddNewRecord" runat="server" Visible="False">
        <asp:Label ID="Label1" runat="server" Text="Code"></asp:Label>
        <asp:TextBox ID="txtCode" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="form-control" OnClick="btnSave_Click" />
    </asp:Panel>




</asp:Content>
