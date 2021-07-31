<%@ Page Title="Rice Content" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rice.aspx.cs" Inherits="DocAnie.Rice" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table, th, td {
            border: 2px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 5px;
            text-align: left;
        }
    </style>
    <br />
    <asp:Table ID="Table1" runat="server"></asp:Table>
    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <center>
                    <div class="card shadow" style="width: 20rem">
                           <div class="inner">
                                <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top align-self-sm-center">
                           </div>
                        </div>
                            </center>
                        <div class="card">
                            <div class="card-body">
                                <center>
                                <h3 class="text-info"><%#Eval("ricevarietyname") %></h3>
                                    </center>
                                <div class="row">
                                    <div class="col">
                                        <table style="width: 100%">
                                            <tr>
                                                <th class="text-success">Average Yield:</th>
                                                <td>
                                                    <p><%#Eval("AverageYield")%> t/ha</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-success">Maximum Yield:</th>
                                                <td>
                                                    <p class="text-justify"><%#Eval("MaximumYield")%> t/ha</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-success">Maturity:</th>
                                                <td>
                                                    <p><%#Eval("Maturity")%> days after seeding</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-success">Height:</th>
                                                <td>
                                                    <p><%#Eval("Height")%> cm</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-success">Reaction to pests & diseases:</th>
                                                <td>
                                                    <p><%#Eval("PestsDiseases")%></p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-success">Grain size:</th>
                                                <td>
                                                    <p><%#Eval("GrainSize")%></p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-success">Milling recovery:</th>
                                                <td>
                                                    <p><%#Eval("MillingRecovery")%>%</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-success">Eating quality:</th>
                                                <td>
                                                    <p><%#Eval("EatingQuality")%></p>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <center><a><asp:Button ID="btnplantnow" class="btn btn-danger" runat="server" Visible="false" Text="Plant Now!" OnClick="btnplantnow_Click" /></a></center>
            </div>
            <br />
            <a href="Default.aspx"><< Back to Home</a><br>
            <br>
        </div>
    </div>
</asp:Content>
