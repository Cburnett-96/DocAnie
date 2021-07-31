<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DocAnie.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <!-----Get in Touch---->
      <section id="Contact">
        <div class="container">
            <h1>Get in Touch</h1>
            <div class="row">
               <div class="col-md-6">
                      <address>
                            <strong>Dariel Polestico:</strong> <a href="mailto:dariel.polestico@lspu.edu.ph">dariel.polestico@lspu.edu.ph</a><br />
                            <strong>Marcela Jane taytayon:</strong> <a href="mailto:marcela.jane.taytayon@lspu.edu.ph">marcela.jane.taytayon@lspu.edu.ph</a><br />
                        </address>
                  </div>
                
               <div class="col-md-6 contact-info">
                   <div><b>Address:</b><i class="fa fa-map-marker"></i>Mabitac, Laguna:</div>
                   <div><b>Phone:</b><i class="fa fa-phone"></i>+1 1234567890</div>

                   <div><label><b>Get Social: </b></label> 
                     <a href="#">Facebook<i class="fa fa-facebook"></i></a>
                     <a href="#">Twitter<i class="fa fa-twitter"></i></a>
                     <a href="#">Instagram<i class="fa fa-instagram"></i></a>
                   </div>
             </div> 
            </div>
        </div>
    </section>
</asp:Content>
