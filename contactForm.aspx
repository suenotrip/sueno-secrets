<%@ Page Title="SuenoTrip.com | Your Price. Our Plan." Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="contactForm.aspx.cs" Inherits="contactForm" %>

<%@ Register TagPrefix="mylist" TagName="tabslist" Src="~/tabControl.ascx" %>
<%@ Register TagPrefix="icons" TagName="fbicons" Src="~/socialNetwork.ascx" %>
<%@ Register TagPrefix="map" TagName="gmap" Src="~/newGMap.ascx" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContent">
 <script src="Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.validate.js" type="text/javascript"></script>
    <script src="Scripts/jquery.blockUI.js" type="text/javascript"></script>
<script type="text/javascript">
    $.validator.setDefaults({
        submitHandler: function () {
            $.blockUI({
                message: "<div style='color:White;'><h1>Thank you!</h1><br/><span style='font-size:12px;'>We'll get in touch with you asap.</span></div>",
                fadeIn: 500,
                fadeOut: 500,
                timeout: 3000,
                showOverlay: false,
                centerX: true,
                centerY: true,
                css: {
                    width: '350px',
                    right: '10px',
                    border: 'none',
                    padding: '5px',
                    backgroundColor: '#000',
                    '-webkit-border-radius': '10px',
                    '-moz-border-radius': '10px',
                    opacity: .6,
                    color: '#fff'
                }
            });
            this.document.form.submit();
        }
    });

    $().ready(function () {
        // validate the comment form when it is submitted
        $("#contactme").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }
            }
        });
    });
</script>   
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="BodyContent">

<table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="left" style="text-align: left; background-image: url(Images/HomeImage4.JPG);
                background-repeat: no-repeat; z-index: -1; width: 100%; height: 100%; position: absolute;
                overflow: hidden">
                <div style="margin-bottom: 650px; margin-top:50px">
                    <asp:Label ID="labelHeading" runat="server" Style="font-size: 3.0em; color: blue;
                        font-family: Chaucer; padding-left: 210px; white-space: nowrap" Text="SuenoTrip.com" />
                        <asp:Label ID="label4" runat="server" Style="font-size: 3.0em; color: blue;
                        font-family: Chaucer; padding-left: 380px; white-space: nowrap" Text="Your Price | Our Plan" />
                    <form id="contactme" action="contact.ashx" runat="server">
                    <table width="100%" style="margin-top: 30px">
                        <tr>
                            <td style="padding-left: 94px; margin-bottom: 100px; width: 15%; vertical-align: top">
                                <mylist:tabslist ID="Tabslist1" runat="server" />
                            </td>
                            <td style="margin-top: 0; padding-top: 0px; vertical-align: top; width: 70%">
                                <table border="2px" width="100%"; style="border-style:ridge">
                                    
                                    <tr>
                                        
                                        <td width="50%">
                                        <%--Google map--%>
                                        <map:gmap ID="map1" runat="server" />
                                        </td>
                                        <td width="50%" style="background-color:White">
                                         <table style="border-width: 1px;
	border-spacing: 2px;
	border-color: gray;
	border-collapse:separate;
	margin-right:50px;
	background-color: white" >
                <tr>
                    <td>
                        <label for="name">Name<em>*</em></label>
                    </td>
                    <td>
                        <input id="Text1" name="name" class="txtField required"/>                    
                    </td>
                </tr>
                <tr>
                    <td><label for="email">E-mail<em>*</em></label></td>
                    <td>
                        <input id="Text2" name="email" class="txtField  required" />
                    </td>
                </tr>
                <tr>
                    <td><label for="Phone">Phone</label></td>
                    <td><input id="Text3" name="phone" class="txtField" /></td>
                </tr>
                <tr>
                    <td><label for="Message">Message<em>*</em></label></td>                    
                    <td><textarea name="message" rows="5" cols="20" class="txtField required" id="Textarea2"></textarea></td>
                </tr>
                <tr>
                    <td style="text-align:right;"><input name="submit" type="submit" value="submit" /></td>
                </tr>
            </table>    
                                        </td>
                                    </tr>
                                    
                                   
                                </table>


                            </td>
                            <td style="margin-top: 0; padding-top: 0px; vertical-align: top; width: 15%">
                                <icons:fbicons ID="icon" runat="server" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </td>
        </tr>
    </table>


            
     
        </asp:Content>
<%--</body>
</html>--%>
