<%@ Page Title="SuenoTrip.com | Your Price. Our Plan." Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register TagPrefix="mylist" TagName="tabslist" Src="~/tabControl.ascx" %>
<%@ Register TagPrefix="icons" TagName="fbicons" Src="~/socialNetwork.ascx" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContent">
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
                        <asp:Label ID="label2" runat="server" Style="font-size: 3.0em; color: blue;
                        font-family: Chaucer; padding-left: 380px; white-space: nowrap" Text="Your Price | Our Plan" />
                    <form id="form1" runat="server">
                    <table width="100%" style="margin-top: 30px">
                        <tr>
                            <td style="padding-left: 94px; margin-bottom: 100px; width: 15%; vertical-align: top">
                                <mylist:tabslist ID="Tabslist1" runat="server" />
                            </td>
                            <td style="margin-top: 0; padding-top: 0px; vertical-align: top; width: 70%; background: white">
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <img alt="" runat="server" src="~/Images/aboutUs.JPG" style="width: 100%; height: 180px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="labelSignUp" runat="server" Style="font-size: 1.9em; font-family: Chaucer;
                                                white-space: nowrap" Text="About Us" ForeColor="#FFCC00" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="label1" runat="server" Text="Each year thousands of travellers cancel their trip just because of one reason – Lack of Perfect Plan. There are so many people who are impassioned for traveling but are not sure of expenses that might incur while travelling on their own. We are a team of passionate travellers. We have rich experience of travelling more than 20 countries as backpackers. Exploring different places, we realized the fun and adventure people miss while travelling with standard inflexible itineraries. We are here to change the way people travel. We are the expert trip planners bringing you for the first time, one of its kind service where we would make your dream trip come true at the price YOU quote. "
                                                ForeColor="#336699" Style="font-size: 1.4em; font-family: Chaucer; padding-top: 20px;
                                                white-space: pre-wrap; z-index: 2; text-align: justify" />
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
