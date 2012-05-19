<%@ Control Language="C#" AutoEventWireup="true" CodeFile="socialNetwork.ascx.cs"
    Inherits="socialNetwork" %>
<table>
    <tr>
        <td>
            <asp:HyperLink ID="hyperlink1" ImageUrl="~/Images/facebook-wood.png" NavigateUrl="http://www.facebook.com/suenotrip"
                Target="_new" runat="server" CssClass="HyperlinkCssClass" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="hyperlink2" ImageUrl="~/Images/linkedin.png" NavigateUrl="http://www.linkedin.com/company/suenotrip"
                Target="_new" runat="server" CssClass="HyperlinkCssClass" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="hyperlink3" ImageUrl="~/Images/twitter.png" NavigateUrl="http://www.twitter.com/suenotrip"
                Target="_new" runat="server" CssClass="HyperlinkCssClass" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="hyperlink4" ImageUrl="~/Images/mail-wood.png" NavigateUrl="mailto:info@suenotrip.com"
                 runat="server" CssClass="HyperlinkCssClass" />
        </td>
    </tr>
</table>