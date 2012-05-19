<%@ Page Title="SuenoTrip.com | Your Price. Our Plan." Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

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
                            <td style="margin-top: 0; padding-top: 0px; padding-right: 120px; vertical-align: top;
                                width: 50%">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="labelSignUp" runat="server" Style="font-size: 1.9em; color: blue;
                                                font-family: Chaucer; padding-left: 100px; white-space: nowrap" Text="Sign-up for an exclusive preview." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 140px">
                                            <asp:TextBox ID="email" runat="server" Width="243px" Height="24px" BackColor="White"
                                                CausesValidation="True" MaxLength="50" placeholder="email@address.com" Style="text-align: center;
                                                vertical-align: middle; padding-top: 8px; padding-bottom: 6px; font-size: 1.2em">      </asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="labelErrorMessage" runat="server" Style="font-size: 1.4em; white-space: nowrap;
                                                color: red; font-family: Chaucer" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 140px">
                                            <asp:Button ID="Button1" runat="server" Text="sign me up" OnClick="Button1_Click"
                                                Width="251px" Height="44px" Style="font: 99% arial, helvetica, clean, sans-serif;
                                                font-size: 1.3em" />
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
