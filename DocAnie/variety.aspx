<%@ Page Title="PHILIPPINE SEEDBOARD (PSB)/ NSIC RICE VARIETIES LIST" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="variety.aspx.cs" Inherits="DocAnie.variety" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="product">
        <div class="container">
            <h1>PHILIPPINE SEEDBOARD (PSB)/ NSIC RICE VARIETIES LIST</h1>
        </div>
        <ul class="nav nav-tabs justify-content-center">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#list1">IRRIGATED</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list2">GLUTINOUS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list3">RAINFED</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list4">COOL ELEVATED</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list5">SALINE</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list6">UPLAND</a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade active show" id="list1">
                <br />
                <div class="container">
                    <center><h4>Breeding Type</h4></center>
                </div>
                <ul class="nav nav-tabs justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#breed1">INBRED</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#breed2">HYBRID</a>
                    </li>
                </ul>
                <div class="container">
                    <div id="myTabContent1" class="tab-content">
                        <div class="tab-pane fade active show" id="breed1">
                            <br />
                            <div class="row">
                                <asp:Repeater ID="Repeater_IRRIGATED_inbred" runat="server">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                        <div class="col-md-4">
                                            <div class="card shadow" style="width: 20rem">
                                                <div class="inner">
                                                    <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body text-justify">
                                                <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                                <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                                <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                                <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                                <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                            </div>
                                        </div>
                                        <hr />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="breed2">
                            <br />
                            <div class="row">
                                <asp:Repeater ID="Repeater_IRRIGATED_hybrid" runat="server">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                        <div class="col-md-4">
                                            <div class="card shadow" style="width: 20rem">
                                                <div class="inner">
                                                    <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body text-justify">
                                                <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                                <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                                <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                                <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                                <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                            </div>
                                        </div>
                                        <hr />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="list2">
                <br />
                <div class="row">
                    <asp:Repeater ID="Repeater_GLUTINOUS" runat="server">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                            <div class="col-md-4">
                                <div class="card shadow" style="width: 20rem">
                                    <div class="inner">
                                        <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body text-justify">
                                    <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                    <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                    <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                    <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                    <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                </div>
                            </div>
                            <hr />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="tab-pane fade" id="list3">
                <br />
                <div class="container">
                    <center><h4>Breeding Type</h4></center>
                </div>
                <ul class="nav nav-tabs justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#breed11">TRANSPLANTED</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#breed22">DRYSEEDED</a>
                    </li>
                </ul>
                <div class="container">
                    <div id="myTabContent11" class="tab-content">
                        <div class="tab-pane fade active show" id="breed11">
                            <br />
                            <div class="row">
                                <asp:Repeater ID="Repeater_RAINFED_trans" runat="server">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                        <div class="col-md-4">
                                            <div class="card shadow" style="width: 20rem">
                                                <div class="inner">
                                                    <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body text-justify">
                                                <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                                <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                                <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                                <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                                <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                            </div>
                                        </div>
                                        <hr />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="breed22">
                            <br />
                            <div class="row">
                                <asp:Repeater ID="Repeater_RAINFED_dry" runat="server">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                                        <div class="col-md-4">
                                            <div class="card shadow" style="width: 20rem">
                                                <div class="inner">
                                                    <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body text-justify">
                                                <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                                <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                                <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                                <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                                <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                            </div>
                                        </div>
                                        <hr />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="list4">
                <br />
                <div class="row">
                    <asp:Repeater ID="Repeater_COOL_ELEVATED" runat="server">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                            <div class="col-md-4">
                                <div class="card shadow" style="width: 20rem">
                                    <div class="inner">
                                        <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body text-justify">
                                    <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                    <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                    <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                    <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                    <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                </div>
                            </div>
                            <hr />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="tab-pane fade" id="list5">
                <br />
                <div class="row">
                    <asp:Repeater ID="Repeater_SALINE" runat="server">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                            <div class="col-md-4">
                                <div class="card shadow" style="width: 20rem">
                                    <div class="inner">
                                        <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body text-justify">
                                    <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                    <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                    <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                    <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                    <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                </div>
                            </div>
                            <hr />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="tab-pane fade" id="list6">
                <br />
                <div class="row">
                    <asp:Repeater ID="Repeater_UPLAND" runat="server">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                            <div class="col-md-4">
                                <div class="card shadow" style="width: 20rem">
                                    <div class="inner">
                                        <img src="../RiceVarietyImg/<%#Eval("riceimage")%>" class="card-img-top">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body text-justify">
                                    <h5 class="card-title"><%#Eval("ricevarietyname")%>"</h5>
                                    <p class="card-text"><a class="text-info">Maturity: </a><%#Eval("Maturity")%> days after seeding</p>
                                    <p class="card-text"><a class="text-info">Average yield: </a><%#Eval("AverageYield")%> t/ha</p>
                                    <p class="card-text"><a class="text-info">Reaction to pests & diseases: </a><%#Eval("PestsDiseases")%></p>
                                    <a><asp:Button ID="btnreadmore" class="btn btn-info" runat="server" Text="Read More" OnClick="btnreadmore_Click" /></a>
                                </div>
                            </div>
                            <hr />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
