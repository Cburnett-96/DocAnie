<%@ Page Title="Manage Rice Variety" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage Rice Variety.aspx.cs" Inherits="DocAnie.Manage_Rice_Variety" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <ul class="nav nav-tabs justify-content-center">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#add">Add Rice Variety</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#list">Rice Variety List</a>
        </li>
    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active show" id="add">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <center>
                           <h3>Add Rice Variety</h3>
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
                                        <label>Rice Variety Name:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtricevarname" runat="server" placeholder="Rice Variety Name"></asp:TextBox>
                                        </div>
                                        <label>Agro-ecological Zones:</label>
                                        <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="drpEkolohiya" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpEkolohiya_SelectedIndexChanged">
                                            <asp:ListItem Text="Select Ekolohiya"></asp:ListItem>
                                            <asp:ListItem Text="IRRIGATED" Value="IRRIGATED" />
                                            <asp:ListItem Text="GLUTINOUS" Value="GLUTINOUS" />
                                            <asp:ListItem Text="RAINFED" Value="RAINFED" />
                                            <asp:ListItem Text="COOL ELEVATED" Value="COOL ELEVATED" />
                                            <asp:ListItem Text="SALINE" Value="SALINE" />
                                            <asp:ListItem Text="UPLAND" Value="UPLAND" />
                                            </asp:DropDownList>
                                        <label id="breed" runat="server" visible="false">Breeding Type:</label>
                                            <asp:DropDownList class="form-control" ID="drpbreedIrrigated" runat="server" Visible="false">
                                            <asp:ListItem Text="Select Breed"/>
                                            <asp:ListItem Text="INBRED" Value="INBRED" />
                                            <asp:ListItem Text="HYBRID" Value="HYBRID" />
                                            </asp:DropDownList>
                                            <asp:DropDownList class="form-control" ID="drpbreedrainfed" runat="server" Visible="false">
                                            <asp:ListItem Text="Select Breed"/>
                                            <asp:ListItem Text="TRANSPLANTED" Value="TRANSPLANTED" />
                                            <asp:ListItem Text="DRYSEEDED" Value="DRYSEEDED" />
                                            </asp:DropDownList>
                                        </div>
                                        <label>Average Yield in [t/ha]:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtaveyield" runat="server" placeholder="t/ha" TextMode="Number" step="any"></asp:TextBox>
                                        </div>
                                        <label>Maximum yield in [t/ha]:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtmaxyield" runat="server" placeholder="t/ha" TextMode="Number" step="any"></asp:TextBox>
                                        </div>
                                        <label>Maturity in [days]:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtmaturity" runat="server" placeholder="days" TextMode="Number" step="any"></asp:TextBox>
                                        </div>
                                        <label>Height in [cm]:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtheight" runat="server" placeholder="cm" TextMode="Number" step="any"></asp:TextBox>
                                        </div>
                                        <label>Grain size:</label>
                                        <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="drpgrainsize" runat="server">
                                            <asp:ListItem Text="Select Grain size"/>
                                            <asp:ListItem Text="Long" Value="Long" />
                                            <asp:ListItem Text="Medium" Value="Medium" />
                                            <asp:ListItem Text="Short" Value="Short" />
                                            </asp:DropDownList>
                                        </div>
                                        <label>Milling recovery in [percentage/%]:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtmilrecovery" runat="server" placeholder="percentage/%" TextMode="Number" step="any"></asp:TextBox>
                                        </div>
                                        <label>Reaction to pests & diseases:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtpestdiseases" runat="server" placeholder="Pests & Diseases" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <label>Eating quality:</label>
                                        <div class="form-group">
                                            <asp:DropDownList class="form-control" ID="drpeatquality" runat="server">
                                            <asp:ListItem Text="Select Eating quality"/>
                                            <asp:ListItem Text="Hard" Value="Hard" />
                                            <asp:ListItem Text="Medium" Value="Medium" />
                                            <asp:ListItem Text="Soft" Value="Soft" />
                                            </asp:DropDownList>
                                        </div>
                                        <hr />
                                        <label>Upload Rice Variety Cover Image<a class="text-danger">(.png or .jpg image format only)</a></label>
                                        <br />
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <br />
                                        <asp:Button class="btn btn-success btn-md float-right" ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                                        <br />
                                        <hr />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="list">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <h3>My Product Lists</h3>
                                <div class="row">
                                    <div class="col">
                                        <label>Rice ID:</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtriceid" runat="server" placeholder="Rice ID"></asp:TextBox>
                                        </div>
                                        <asp:Button class="btn btn-success" ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                                        <hr />
                                        <asp:GridView class="table table-hover table-responsive-sm" ID="GridView1" runat="server">
                                            <EditRowStyle Font-Bold="True" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                        </asp:GridView>
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
