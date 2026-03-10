<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="CollegeCRUD.aspx.cs" Inherits="SendonWebSystem22526.CollegeCRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="collegeID" DataSourceID="SqlDataSource1" class="table table-hover" OnRowDeleted="GridView1_RowDeleted" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="No."></asp:TemplateField>
            <asp:BoundField DataField="collegeID" HeaderText="collegeID" InsertVisible="False" ReadOnly="True" SortExpression="collegeID" Visible="False" />
            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" SortExpression="Deleted" Visible="False" />
            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" 
                        class="btn btn-info" Height="35px" 
                        Width="60px" OnClick="btnEdit_Click" CommandName="Select"/>
                    <asp:Button ID="btnDelete" runat="server" 
                        CommandName="Delete" Text="Delete" 
                        class="btn btn-outline-danger" 
                        Height="35px" Width="70px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT collegeID, Code, Description, Deleted FROM tblCollege WHERE (Deleted = 0)" 
        InsertCommand="INSERT INTO tblCollege(Code, Description, Deleted) VALUES (?, ?, ?)" 
        DeleteCommand="UPDATE tblCollege SET Deleted = ? WHERE (collegeID = ?)" 
        OnInserted="SqlDataSource1_Inserted" UpdateCommand="UPDATE tblCollege SET Code = ?, Description = ? WHERE (collegeID = ?)" OnUpdated="SqlDataSource1_Updated" 
      >
        <DeleteParameters>
            <asp:Parameter DefaultValue="1" Name="?" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtCode" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDescription" Name="?" PropertyName="Text" />
            <asp:Parameter DefaultValue="0" Name="?" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtCode" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDescription" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="GridView1" Name="?" PropertyName="SelectedValue" />
        </UpdateParameters>
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
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-outline-primary" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-warning" OnClick="btnCancel_Click"/>
    </asp:Panel>




</asp:Content>
