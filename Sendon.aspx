<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Sendon.aspx.cs" Inherits="SendonWebSystem22526.Sendon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <%--Header--%>
        <section>
            <hr />
            <h1 id="aspNetTitle">ASP.NET</h1>
            <hr />
        </section>

        <%--1st Row--%>
        <div class="row">
            <section class="col-md-4">
                <h3>Label/Textbox/Button</h3>
                <hr />

                <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                <asp:Textbox class="form-control" ID="txtUsername" runat="server" ></asp:Textbox> <br /><br />
                <asp:Button class="btn btn-success" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/> <br />
                <asp:Label ID="lblDisplayMsg" runat="server" Text=""></asp:Label>
                    

            </section>
            <section class="col-md-4">
                <h3>Hyperlink</h3>
                <hr />
            </section>
            <section class="col-md-4">
                <h3>Radiobutton</h3>
                <hr />
            </section>
        </div>



    </main>



</asp:Content>
