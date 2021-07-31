<%@ Page Title="History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="DocAnie.History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <center>
        <h1>
            History
        </h1>
    </center>
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <asp:Repeater ID="Repeater_History" runat="server">
                            <ItemTemplate>
                                <div>
                                    <b>
                                        <asp:Label ID="Label1" runat="server"><span class="text-success">Plant Date: </span></asp:Label></b>&nbsp;<asp:Label ID="Label2" runat="server" Text='<%#Eval("PlantDate","{0:MMMM dd yyyy}") %>'>'></asp:Label><br />
                                    <asp:Label ID="Label3" runat="server"><span class="text-success">Variety Name: </span></asp:Label><span><%#Eval("ricevarietyname") %></span><br />
                                    <asp:Label ID="Label4" runat="server"><span class="text-success">Harvest Date: </span></asp:Label></b>&nbsp;<asp:Label ID="Label5" runat="server" Text='<%#Eval("HarvestDate","{0:MMMM dd yyyy}") %>'>'></asp:Label><br />
                                </div>
                                <hr />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
