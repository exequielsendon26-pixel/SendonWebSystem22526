<%@ Page Title="" Language="C#" MasterPageFile="~/MyPrelimSite.Master" AutoEventWireup="true" CodeBehind="MyPrelimSendon.aspx.cs" Inherits="SendonWebSystem22526.MyPrelimSendon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<main class="row">
    <hr />
    <h1 id="aspNetTitle">Student Info</h1>
    <hr />

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Index" DataSourceID="SqlDataSource1">
       <Columns>
           <asp:BoundField DataField="Index" HeaderText="Index" InsertVisible="False" ReadOnly="True" SortExpression="Index" />
           <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
           <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
           <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
           <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
           <asp:BoundField DataField="Bday" HeaderText="Bday" SortExpression="Bday" />
           <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
           <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" SortExpression="ProgramID" />
           <asp:BoundField DataField="YearLevel" HeaderText="YearLevel" SortExpression="YearLevel" />
           <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" SortExpression="Deleted" />
       </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblStudentInfo]"></asp:SqlDataSource>


</main>


<main class="row">
     <section class="col-md-6">
        <h3>College</h3>
        <hr />

         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="collegeID" DataSourceID="SqlDataSource2">
             <Columns>
                 <asp:BoundField DataField="collegeID" HeaderText="collegeID" InsertVisible="False" ReadOnly="True" SortExpression="collegeID" />
                 <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                 <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                 <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" SortExpression="Deleted" />
             </Columns>
         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCollege]"></asp:SqlDataSource>

    </section>
    
    <section class="col-md-6">
        <h3>Program</h3>
        <hr />

        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ProgramID" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" InsertVisible="False" ReadOnly="True" SortExpression="ProgramID" />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="CollegeID" HeaderText="CollegeID" SortExpression="CollegeID" />
                <asp:CheckBoxField DataField="Deleted" HeaderText="Deleted" SortExpression="Deleted" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblProgram]"></asp:SqlDataSource>

    </section>
</main>


</asp:Content>
        