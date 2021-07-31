<%@ Page Title="Calendar & Event" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="DocAnie.calendar" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="card-body text-justify">
    <center>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#2D2D30" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="290px" NextPrevFormat="FullMonth" Width="350px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
        <br />
<asp:DataGrid id="DataGrid1" runat="server" BorderColor="#DEDFDE" ForeColor="Black" BackColor="White"
							BorderWidth="1px" CellPadding="4" BorderStyle="None" GridLines="Vertical" AutoGenerateColumns="False">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CE5D5A"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
							<ItemStyle BackColor="#F7F7DE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#6B696B"></HeaderStyle>
							<FooterStyle BackColor="#CCCC99"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="ricevarietyname" HeaderText="Rice Variety Name" />
                                <asp:BoundColumn DataField="HarvestDate" HeaderText="Harvest Date" />
							</Columns>
							<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#F7F7DE" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid>
        </center>
                </div>
            </div>
        </div>
    <hr />
    <section>
        <div class="left">
            <div class="content">
                <h1>Upcoming Events!</h1>
                <p>
                    Growing your own food is here  to stay 
                    Agri experts see more elbow room for policy reforms to drive biz opportunities
                    Curling leaves: A snake plant problem
                    Three lessons that we can learn from successful family farms 
                    DA signs memorandum of understanding with a private company to promote new initiative to rebuild Philippine hog industry from effects of ASF.
                </p>
            </div>
        </div>
        <div class="events">
            <ul>
                <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("RiceID")%>'></asp:Label>
                    <asp:Label ID="Label2" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                <li>
                    <div class="time">
                        <h4><%#Eval("HarvestDate","{0:dd}")%></h4>
                            <span><%#Eval("HarvestDate","{0:MMMM}")%></span>
                        <br />
                        <span><%#Eval("HarvestDate","{0:yyyy}")%></span>
                        <p class="text-success">To be Harvest</p>
                    </div>
                    <div class="details">
                        <h3 class="text-info"><%#Eval("ricevarietyname")%></h3>
                        <p class="text-justify">
                           <p class="text-success">Reaction to pests & diseases: </p><%#Eval("PestsDiseases")%>
                        </p>
                        <p>
                           This Rice have <%#Eval("MillingRecovery")%>% percentage of milling recovery.
                        </p>
                        <br />
                         <asp:Button ID="btnreadmore" class="btn btn-info  float-right" runat="server" Text="View Details" OnClick="btnreadmore_Click" />
                    <br />
                    </div>
                    <div style="clear: both;"></div>
                </li>
                </ItemTemplate>
            </asp:Repeater>
            </ul>
        </div>
    </section>
    
</asp:Content>
