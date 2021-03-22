<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkout2.aspx.cs" Inherits="checkout2" %>

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
                <asp:Button ID="btnlogout" runat="server" onclick="btnlogout_Click" 
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
                    
                    </div>
                                   </div>
                


                            
                            <asp:Label ID="lblloginemailid" runat="server" Font-Bold="True" 
                    ForeColor="#9966FF" Height="40px" Width="150px"></asp:Label>
                


                            
                            <br />
                            <br />
                          

                            </div>

                                <div id="customer_details" class="col2-set">
                                    <div class="col-1">
                                        <div class="woocommerce-billing-fields">
                                            <h3>Billing Details</h3>
                                            <p id="billing_country_field" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
                                                <asp:DropDownList ID="ddlcountry" runat="server">
                                                    <asp:ListItem>India</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                               
                                            </p>

                                            <p id="billing_first_name_field" class="form-row form-row-first validate-required">
                                                
                                                <asp:TextBox ID="txtfirstname" placeholder="First Name*" runat="server"></asp:TextBox>
                                              </p>

                                            <p id="billing_last_name_field" class="form-row form-row-last validate-required">
                                                
                                                <asp:TextBox ID="txtlastname" placeholder="Last Name*" runat="server"></asp:TextBox>
                                            </p>
                                            <div class="clear"></div>

                                            <p id="billing_company_field" class="form-row form-row-wide">
                                                <asp:TextBox ID="txtcompany" placeholder="Company Name*" runat="server"></asp:TextBox>
                                            </p>

                                            <p id="billing_address_1_field" class="form-row form-row-wide address-field validate-required">
                                                
                                                <asp:TextBox ID="txtaddress" placeholder="Address*" runat="server"></asp:TextBox></p>

                                            <p id="billing_address_2_field" class="form-row form-row-wide address-field">
                                                <asp:TextBox ID="txtaddress2" placeholder="Apartment, suite, unit etc. (optional)" runat="server"></asp:TextBox></p>

                                            <p id="billing_city_field" class="form-row form-row-wide address-field validate-required" data-o_class="form-row form-row-wide address-field validate-required">
                                                
                                               <asp:TextBox ID="txtbillingcity" placeholder="Town / City*" runat="server"></asp:TextBox></p>

                                            <p id="billing_state_field" class="form-row form-row-first address-field validate-state" data-o_class="form-row form-row-first address-field validate-state">
                                                <asp:TextBox ID="txtbillingstate" placeholder="State / Country*" runat="server"></asp:TextBox></p>
                                            <p id="billing_postcode_field" class="form-row form-row-last address-field validate-required validate-postcode" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                                
                                                <asp:TextBox ID="txtbillingpostcode" placeholder="Postcode / Zip*" 
                                                    runat="server" MaxLength="6"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invailid Pincode" ControlToValidate="txtbillingpostcode" ValidationExpression="\d{6}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                                            </p>
                                            

                                            <div class="clear"></div>

                                            <p id="billing_email_field" class="form-row form-row-first validate-required validate-email">
                                                
                                                <asp:TextBox ID="txtemailaddress" placeholder="Email Address*" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invailid Email-Id" ControlToValidate="txtemailaddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                                            </p>

                                            <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                                                
                                                <asp:TextBox ID="txtmobileno" placeholder="Mobile Number*" runat="server" 
                                                    MaxLength="10"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invailid Mobile Number" ControlToValidate="txtmobileno" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                                            </p>
                                            <div class="clear">
                                                <table class="nav-justified">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>


                                            

                                        </div>
                                    </div>

                                    <div class="col-2">
                                        <div class="woocommerce-shipping-fields">
                                            <h3 id="ship-to-different-address">
                        <label class="checkbox" for="ship-to-different-address-checkbox">Ship to a BILLING address</label>
                        <asp:CheckBox ID="Checkbox" runat="server" AutoPostBack="True" 
                                                    oncheckedchanged="Checkbox_CheckedChanged" /></h3>
                                            <div class="shipping_address" style="display: block;">
                                                <p id="P1" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem>India</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                               
                                            </p>

                                            <p id="P2" class="form-row form-row-first validate-required">
                                                
                                                <asp:TextBox ID="txtfirstname2" placeholder="First Name*" runat="server"></asp:TextBox>
                                              </p>

                                            <p id="P3" class="form-row form-row-last validate-required">
                                                
                                                <asp:TextBox ID="txtlastname2" placeholder="Last Name*" runat="server"></asp:TextBox>
                                            </p>
                                            <div class="clear"></div>

                                            <p id="P4" class="form-row form-row-wide">
                                                <asp:TextBox ID="txtcompany2" placeholder="Company Name*" runat="server"></asp:TextBox>
                                            </p>

                                            <p id="P5" class="form-row form-row-wide address-field validate-required">
                                                
                                                <asp:TextBox ID="txtaddress3" placeholder="Address*" runat="server"></asp:TextBox></p>

                                            <p id="P6" class="form-row form-row-wide address-field">
                                                <asp:TextBox ID="txtaddress4" 
                                                    placeholder="Apartment, suite, unit etc. (optional)" runat="server"></asp:TextBox></p>

                                            <p id="P7" class="form-row form-row-wide address-field validate-required" data-o_class="form-row form-row-wide address-field validate-required">
                                                
                                               <asp:TextBox ID="txtbillingcity2" placeholder="Town / City*" runat="server"></asp:TextBox></p>

                                            <p id="P8" class="form-row form-row-first address-field validate-state" data-o_class="form-row form-row-first address-field validate-state">
                                                <asp:TextBox ID="txtbillingstate2" placeholder="State / Country*" runat="server"></asp:TextBox></p>
                                            <p id="P9" class="form-row form-row-last address-field validate-required validate-postcode" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                                
                                                <asp:TextBox ID="txtbillingpostcode2" placeholder="Postcode / Zip*" 
                                                    runat="server" MaxLength="6"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invailid Pincode" ControlToValidate="txtbillingpostcode2" ValidationExpression="\d{6}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                                            </p>

                                            <div class="clear"></div>

                                            <p id="P10" class="form-row form-row-first validate-required validate-email">
                                                
                                                <asp:TextBox ID="txtemailaddress2" placeholder="Email Address*" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invailid Email-Id" ForeColor="#FF3300" ControlToValidate="txtemailaddress2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </p>

                                            <p id="P11" class="form-row form-row-last validate-required validate-phone">
                                                
                                                <asp:TextBox ID="txtmobileno2" placeholder="Mobile Number*" runat="server" 
                                                    MaxLength="10"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invailid Mobile Number" ControlToValidate="txtmobileno2" ForeColor="#FF3300" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                                            </p>
                                            <div class="clear"></div>


                                            </div>





                                            <p id="order_comments_field" class="form-row notes">
                                                <label class="" for="order_comments">Order Notes</label>
                                                <asp:TextBox ID="txtordercomment" 
                                                    placeholder="Notes about your order, e.g. special notes for delivery." 
                                                    runat="server" TextMode="MultiLine"></asp:TextBox></p>


                                        </div>

                                    </div>

                                </div>

                                

                                    <div id="payment">
                                        <ul class="payment_methods methods">
                                            <li class="payment_method_bacs">
                                                <asp:RadioButton ID="rbpaytm" runat="server" GroupName="g1" /><label for="payment_method_bacs">Paytm Details</label>
                                                <div class="payment_box payment_method_bacs">
                                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                                </div>
                                            </li>
                                            <li class="cheque_payment">
                                                <asp:RadioButton ID="rbtCOD" runat="server" GroupName="g1" /><label for="payment_method_cheque">
                                                Cash On Delivery</label>
                                                <div style="display:none;" class="payment_box payment_method_cheque">
                                                    <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                </div>
                                            </li>
                                            <li class="bank_detail">
                                                <asp:RadioButton ID="rbbankdetails" runat="server" GroupName="g1" />
                                                
                                                <label for="payment_method_paypal">Bank Detail
                                                </label>
                                                <div style="display:none;" class="payment_box payment_method_paypal">
                                                    <p>Pay via Bank Accuont; you can pay with your credit card if you don’t have a account.</p>
                                                </div>
                                            </li>
                                        </ul>

                                        <div class="form-row place-order">

                                           <asp:Button ID="txtplaceorder" runat="server" Text="Place Order" CssClass="btn" onclick="txtplaceorder_Click" />

                                        </div>

                                        <div class="clear"></div>

                                    </div>
                                </div>
                            </form>

                        </div>                       
                    </div>                    
                </div>
            </div>
        </div>
    </div>


    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>u<span>Stora</span></h2>
                        <p>A comparison shopping website, sometimes called a price comparison website, Price Analysis tool, comparison shopping agent, shopbot or comparison shopping engine, is a vertical search engine that shoppers use to filter and compare products based on price, features, reviews and other criteria. Most comparison shopping sites aggregate product listings from many different retailers but do not directly sell products themselves instead mostly they make use of affiliate marketing to earn. There is a huge contribution of comparison shopping websites in the expansion of current E-commerce industry.</p>
                        <div class="footer-social">
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
                            <li>My account</li>
                            <li>Order history</li>
                            <li>Wishlist</li>
                            <li>Contact</li>
                            <li>Front page</li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li>Pillows</li>
                            <li>Mattresses</li>
                            <li>Cushions</li>
                            <li>Designer Cushions</li>
                            <li>Sofa Cush</li>
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
                        <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.iqrasoftwares.com" target="_blank">Himanshu,Prince</a></p>
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
