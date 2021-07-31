<%@ Page Title="RICE MANAGEMENT" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rice Management.aspx.cs" Inherits="DocAnie.Rice_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdn.ckeditor.com/ckeditor5/27.0.0/classic/ckeditor.js"></script>
    <section id="product">
        <div class="container">
            <h4>RICE MANAGEMENT</h4>
            <h6>The references contained in this section are rice management produced by the International Rice Research Institute. Each fact sheet is designed to provide quick answers to each of the categories displayed below.</h6>
        </div>
        <br />
        <ul class="nav nav-tabs justify-content-center">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#list1">Nutrient Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list2">Pest Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list3">Water Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list4">Harvest Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#list5">Postharvest Management</a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade active show" id="list1">
                <br />
                <iframe class="embed-responsive" height="600" src="https://www.pinoyrice.com/palaycheck/nutrient-management/"></iframe>
                </div>
            <div class="tab-pane fade" id="list2">
                <br />
                <iframe class="embed-responsive" height="600" src="https://www.pinoyrice.com/palaycheck/pest-management/"></iframe>
                </div>
            <div class="tab-pane fade" id="list3">
                <br />
                <iframe class="embed-responsive" height="600" src="https://www.pinoyrice.com/palaycheck/water-management/"></iframe>
                </div>
            <div class="tab-pane fade" id="list4">
                <br />
                <iframe class="embed-responsive" height="600" src="https://www.pinoyrice.com/palaycheck/harvest-management/"></iframe>
                </div>
            <div class="tab-pane fade" id="list5">
                <br />
                <iframe class="embed-responsive" height="600" src="https://www.pinoyrice.com/palaycheck/postharvest-management/"></iframe>
                </div>
            </div>
        </section>

</asp:Content>
