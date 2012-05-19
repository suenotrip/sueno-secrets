<%@ Page Title="SuenoTrip.com | Your Price. Our Plan." Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="team" %>

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
                        <asp:Label ID="label4" runat="server" Style="font-size: 3.0em; color: blue;
                        font-family: Chaucer; padding-left: 380px; white-space: nowrap" Text="Your Price | Our Plan" />
                    <form id="form1" runat="server">
                    <table width="100%" style="margin-top: 30px">
                        <tr>
                            <td style="padding-left: 94px; margin-bottom: 100px; width: 15%; vertical-align: top">
                                <mylist:tabslist ID="Tabslist1" runat="server" />
                            </td>
                            <td style="margin-top: 0; padding-top: 0px; vertical-align: top; width: 70%">
                                <table border="2px" width="100%"; style="border-style:ridge">
                                    
                                    <tr>
                                        <td style="border-style: ridge">
                                            <img id="Img1" alt="" runat="server" src="~/Images/varunCOO.JPG" style="width: 300px;
                                                height: 180px" />
                                        </td>
                                        <%--<td style="border-style: none">
                                            <asp:Label ID="labelSignUp" runat="server" Style="font-size: 2.5em; font-family: Chaucer;
                                                padding-left: 140px; white-space: nowrap; text-align: center" Text="Team" ForeColor="#CC0000" />
                                        </td>--%>
                                        <td style="border-style: ridge">
                                            <img id="Img2" alt="" runat="server" src="~/Images/amitCTO.JPG" style="width: 300px;
                                                height: 180px; padding-left: 160px" />
                                        </td>
                                    </tr>
                                    <tr style="background: white; border-style:none">
                                        <td style="margin-right:100px; border-style:none; width:50%">
                                            <asp:Label ID="label1" runat="server" Text=" Varun Choudhary " ForeColor="#336699"
                                                Style="font-size: 1.8em; font-family: Chaucer; padding-top: 20px;padding-left:60px; white-space: pre-wrap;
                                                z-index: 2; text-align: left" /><br />

                                                <asp:Label ID="labelCoo" runat="server" Text="Co-Founder" ForeColor="#9933FF" Style="font-size: 1.5em; font-family: Chaucer; padding-top: 20px;padding-left:140px; white-space: pre-wrap;
                                                z-index: 2" /> <br />
                                                <asp:Label ID="labelCooDetails" runat="server" Text="Varun was born and raised in Kolkata. He graduated from IIT Roorkee in 2010 with a degree in Electrical Engineering. He found his passion for travelling during his undergraduate days when he travelled all over Europe, from Canary Islands to Helsinki. He worked as Researcher in Belgium for a period before taking the entrepreneurial leap with SuenoTrip.<br/>In his free time he loves watching movies and playing Foosball.  " ForeColor="#00CCFF" Style="font-size: 1.1em; font-family: Chaucer; padding-top: 20px; white-space: pre-wrap;
                                                z-index: 2; text-align:justify;overflow:hidden" />
                                        </td>
                                        <%--<td style="border-style:none; width:2px">
                                        </td>--%>
                                        <td style="text-align: right; border-style:none; width:50%">
                                            <asp:Label ID="label2" runat="server" Text="Amit Kumar" ForeColor="#336699" Style="font-size: 1.8em;
                                                font-family: Chaucer; padding-top: 20px; padding-right:80px; z-index: 2" /><br />
                                                <asp:Label ID="label3" runat="server" Text="Co-Founder" ForeColor="#9933FF" Style="font-size: 1.5em; font-family: Chaucer; padding-right:80px; padding-top: 20px; white-space: pre-wrap;
                                                z-index: 2" /><br /> 
                                                <asp:Label ID="label5" runat="server" Text="After his early days in Patna, Amit went on to get a degree in Electrical Engineering from IIT Roorkee in 2010. He is a passionate traveller and has taken many off beaten tracks during his Eurotrips. He worked as Research Scholar in Delft University for few months. He co-founded SuenoTrip in 2012 to change the way people travel now.<br/>He loves photography and playing cricket." ForeColor="#00CCFF" Style="font-size: 1.1em; font-family: Chaucer; padding-top: 20px; white-space: pre-wrap;
                                                z-index: 2; text-align: justify; overflow:hidden" />
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
