<%@ Page Title="Login or Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login_Signup.aspx.cs" Inherits="DocAnie.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <ul class="nav nav-tabs justify-content-center">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#login">Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#signup">Sign Up</a>
        </li>
    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active show" id="login">
            <br />
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <div class="alert alert-dismissible alert-success">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong>Input your credentials to use our website.</strong> - <a class="alert-link">Don't have an account? Click Signup tab to register to our website.</a>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                           <h3>Farmer User Login</h3>
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
                                        <label>User ID</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="userid" runat="server" placeholder="User ID"></asp:TextBox>
                                        </div>
                                        <label>Password</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="btnlogin" runat="server" Text="Login" OnClick="loginbtn_Click" />
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        <div class="tab-pane fade" id="signup">
            <br />
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="alert alert-dismissible alert-success">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong>Input your credentials to use our website.</strong>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                           <h4>Create your Profile</h4>
                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Full Name</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtname" runat="server" placeholder="First/Middle/Last Name"></asp:TextBox>
                                        <label>Gender</label>
                                            <asp:DropDownList class="form-control" ID="txtgender" runat="server">
                                                <asp:ListItem Text="Select" Value="N/A" />
                                                <asp:ListItem Text="Male" Value="Male" />
                                                <asp:ListItem Text="Female" Value="Female" />
                                            </asp:DropDownList>
                                        <label>Age</label>
                                            <asp:TextBox CssClass="form-control" ID="txtdob" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
                                        <label>Contact No</label>
                                            <asp:TextBox CssClass="form-control" ID="txtcontact" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                        <label>Email Address</label>
                                            <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                        <label>Full Address</label>
                                            <asp:TextBox CssClass="form-control" ID="txtaddress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>New User ID</label>
                                        <div class="form-group">
                                            <asp:TextBox class="form-control" ID="useridsignup" runat="server" placeholder="New User ID"></asp:TextBox>
                                        <label>New Password</label>
                                            <asp:TextBox class="form-control" ID="passwordsignup" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 mx-auto">
                                        <center>
                           <div class="form-group">
                               <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnsignup" runat="server" Text="Sign Up" OnClick="btnsignup_Click"/>
                           </div>
                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
</asp:Content>
