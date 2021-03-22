<%@ Page Language="C#" AutoEventWireup="true" CodeFile="placeorder.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
        .style2
        {
            width: 875px;
        }
        .style3
        {
            height: 20px;
            width: 875px;
        }
    </style>
  </head>
  <body><form id="Form1" runat="server">
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                      <ul>
                            
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                               
                               
                            </li>

                            <li class="dropdown dropdown-small">
                               
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                         <li ><a href="index.aspx">Home</a></li>
                             
                        <li><a href="cart.aspx">Cart</a></li>
                        <li class="active"><a href="checkout.aspx">Checkout</a></li>
                            
                        <li><a href="contact.aspx">Contact</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->

    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                </div>
                <asp:Button ID="txtlogout" runat="server" onclick="txtlogout_Click" 
                    Text="logout" />
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        
                    <asp:Panel ID="pnlpaytm" runat="server" Visible="False">
                        <table class="nav-justified">
                            <tr>
                                <td class="style2">
                                    <asp:Image ID="Image2" runat="server" Height="79px" 
                                        ImageUrl="~/img/paytm-payment.png" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <h2>
                                        Paytm Mobile No : 7275675028</h2>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Button ID="Button5" runat="server" CssClass="btn" onclick="Button5_Click" 
                                        Text="Confirm Order" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <br />
                                </td>
                            </tr>
                            </asp:Panel>
                            <tr>
                                <td class="style2">
                                    <asp:Panel ID="pnlCOD" runat="server" Visible="False">
                                        <table class="nav-justified">
                                            <tr>
                                                <td class="style1">
                                                    <h2>
                                                        CASH On DELIVERY</h2>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button2" runat="server" CssClass="btn" Text="Confirm Order" 
                                                        onclick="Button2_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Panel ID="pnlbankdetail" runat="server" Visible="False">
                                        <table class="nav-justified">
                                            <tr>
                                                <td>
                                                    <h3>
                                                        <asp:Image ID="Image3" runat="server" Height="79px" 
                                                            ImageUrl="~/img/bank-details.png" />
                                                    </h3>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Bank Name : HDFC</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Branch Name : Kakadeo</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Account Type : Current</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Account Holder Name : Supper Appex</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Account No. : 8917817181</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    IFSC Code : HDFC9187191</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button4" runat="server" CssClass="btn" onclick="Button4_Click" 
                                                        Text="Confirm Order" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    
                        
                    </div>
                    
                </div>
                </div>                       
                    </div>                    
                </div>
                <div>
                </div>
    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>u<span>Stora</span></h2>
                        <p>A comparison shopping website, sometimes called a price comparison website, Price Analysis tool, comparison shopping agent, shopbot or comparison shopping engine, is a vertical search engine that shoppers use to filter and compare products based on price, features, reviews and other criteria. Most comparison shopping sites aggregate product listings from many different retailers but do not directly sell products themselves instead mostly they make use of affiliate marketing to earn. There is a huge contribution of comparison shopping websites in the expansion of current E-commerce industry.<div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order history</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Vendor contact</a></li>
                            <li><a href="#">Front page</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="#">Mobile Phone</a></li>
                            <li><a href="#">Home accesseries</a></li>
                            <li><a href="#">LED TV</a></li>
                            <li><a href="#">Computer</a></li>
                            <li><a href="#">Gadets</a></li>
                        </ul>                        
                    </div>
                </div>
                
                
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.iqrasoftwares.com" target="_blank">iqrasoftwares.com</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
 </form> </body>
</html>
