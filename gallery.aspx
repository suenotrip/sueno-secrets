<%@ Page Title="SuenoTrip.com | Your Price. Our Plan." Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

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
                <div style="margin-bottom: 650px">
                    <asp:Label ID="labelHeading" runat="server" Style="font-size: 3.9em; color: blue;
                        font-family: Chaucer; padding-left: 340px; white-space: nowrap" Text=" SuenoTrip.. Waking up soon..." />
                    <form id="form1" runat="server">
                    <table width="100%" style="margin-top: 100px">
                        <tr>
                            <td style="padding-left: 130px; margin-bottom: 100px; width: 30%">
                                <mylist:tabslist ID="Tabslist1" runat="server" />
                            </td>
                            <td style="margin-top: 0; padding-top: 0px; vertical-align: top; width: 50%">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="labelSignUp" runat="server" Style="font-size: 1.9em; font-family: Chaucer;
                                                padding-left: 120px; white-space: nowrap" Text="Gallery" ForeColor="#336699" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="label1" runat="server" Style="font-size: 1.4em; font-family: Chaucer;
                                                padding-left: 120px; padding-top: 20px; white-space: nowrap" Text="" ForeColor="#3366FF" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="margin-top: 0; padding-top: 0px; padding-left: 80px; vertical-align: top;
                                width: 20%">
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
