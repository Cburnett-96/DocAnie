<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="DocAnie.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
                <div class="row">
                    <div class="col-md-12 mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <center>
                           <h3>Administrator Login</h3>
                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label>Admin ID</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="userid" runat="server" placeholder="Admin ID"></asp:TextBox>
                                        </div>
                                        <label>Password</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <br />
</asp:Content>
