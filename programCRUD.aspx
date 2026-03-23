<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="programCRUD.aspx.cs" Inherits="SendonWebSystem22526.programCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProgramID" DataSourceID="SqlDataSource1" Width="1141px"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
        <Columns>
            <asp:TemplateField HeaderText="NO."></asp:TemplateField>
            <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" InsertVisible="False" ReadOnly="True" SortExpression="ProgramID" />
            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="CollegeID" HeaderText="CollegeID" SortExpression="CollegeID" />
            <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" SortExpression="Deleted" Visible="False" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" class="btn btn-outline-primary" CommandName="Select" OnClick="btnEdit_Click"/>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-danger" CommandName="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>


    </asp:GridView>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add New Record</asp:LinkButton>
    
    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <asp:Label ID="Label1" runat="server" Text="Code"></asp:Label>
    <asp:TextBox ID="txtCode" runat="server" CssClass="form-control"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="College"></asp:Label>

        <asp:DropDownList ID="DDCollege" runat="server" DataSourceID="SqlDataSource1" DataTextField="Code" DataValueField="CollegeID"></asp:DropDownList>
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click"/>
    <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-outline-primary" OnClick="btnUpdate_Click"/>
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnCancel_Click"/>
    </asp:Panel>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblProgram] WHERE Deleted = 0" InsertCommand="INSERT INTO tblProgram(Code, Description, CollegeID, Deleted) VALUES (?,?,?,?)" UpdateCommand="UPDATE tblProgram SET Code = ?, Description = ?, CollegeID = ? WHERE (ProgramID = ?)" DeleteCommand="UPDATE tblProgram SET Deleted = ? WHERE (ProgramID = ?)">
        
        <DeleteParameters>
             <asp:Parameter Name="Deleted" DefaultValue="1" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:ControlParameter ControlID="txtCode" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDescription" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="DDCollege" Name="?" PropertyName="SelectedValue" />
            <asp:Parameter DefaultValue="0" Name="?" />
        </InsertParameters>

        <UpdateParameters>
            <asp:ControlParameter ControlID="txtCode" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDescription" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="DDCollege" Name="?" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="?" PropertyName="SelectedValue" />
        </UpdateParameters>

    </asp:SqlDataSource>
</asp:Content>
