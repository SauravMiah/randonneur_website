<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BrevetResults.aspx.cs" Inherits="BrevetResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta content="text/html; charset=iso-8859-1" http-equiv="content-type" />
    <link href="CSS/ModelCaseStyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Home Page - DWA Model Case</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div_CONTAINER">


            <div id="div_HEADER">
                <div id="div_header_TEXT">
                    <h1>Brevet Results</h1>
                </div>

                <div id="div_header_LOGIN_STATUS">
                    <asp:Label ID="lbLoginInfo" runat="server"></asp:Label>
                    .<br />
                    <asp:LinkButton ID="btLogout" runat="server" CssClass="logout_link" OnClick="btLogout_Click">LOGOUT</asp:LinkButton>
                    <br />
                </div>
            </div>



            <div id="div_LEFT">
                <div id="div_NAV">
                    <asp:HyperLink ID="hyperLinkHomePage" runat="server" CssClass="current_page_link" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="hyperLinkRiderList" runat="server" NavigateUrl="~/RiderList.aspx">Rider List</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="hyperLinkBrevetResults" runat="server" NavigateUrl="~/BrevetResults.aspx">Brevet Results</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="hyperLinkBrevetRegistration" runat="server" NavigateUrl="~/BrevetRegistration.aspx">Brevet Registration</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="hyperLinkBrevetManagement" runat="server" NavigateUrl="~/BrevetManagement.aspx">Brevet Management</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="hyperLinkRiderManagement" runat="server" NavigateUrl="~/RiderManagement.aspx">Rider Management</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="hyperLinkClubManagement" runat="server" NavigateUrl="~/ClubManagementPage.aspx">Club Management</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="hyperLinkUpdateResults" runat="server" NavigateUrl="~/HomePage.aspx">Update Results</asp:HyperLink>
                    <br />
                </div>
            </div>



            <div id="div_CENTER">
                <div id="div_center_HEADER">
                    Select a Brevet
                </div>
                <br />
                <asp:ListBox ID="ListBoxBrevets" runat="server" Height="300px" Width="280px" AutoPostBack="True" OnSelectedIndexChanged="ListBoxBrevets_SelectedIndexChanged"></asp:ListBox>
                <br />
                <asp:Label ID="lbDistance" runat="server" Text="Distance (km)"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownDistance" runat="server" CssClass="seach_filters_dropdownlist" DataSourceID="SqlDataSource2" DataTextField="distance" DataValueField="distance">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [distance] FROM [Brevet] ORDER BY [distance]"></asp:SqlDataSource>
                <br />
                <asp:Label ID="lbYear" runat="server" Text="Year"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownListYear" runat="server" CssClass="seach_filters_dropdownlist" DataSourceID="SqlDataSource3" DataTextField="year" DataValueField="year">
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT DATEPART(yyyy, brevetDate) AS year FROM Brevet ORDER BY year"></asp:SqlDataSource>
                <br />
                <asp:Label ID="lbLocation" runat="server" Text="Location"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownListLocation" runat="server" DataSourceID="SqlDataSource1" DataTextField="location" DataValueField="location">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [location] FROM [Brevet] ORDER BY [location]"></asp:SqlDataSource>
                <asp:Button ID="btSearch" runat="server" OnClick="btSearch_Click" Text="Search Brevets" />
                <br />
            </div>



            <div id="div_RIGHT">
                <div id="div_right_HEADER">
                    Rider List
                </div>
                <asp:ListBox ID="ListBoxRiders" runat="server" Height="350px" Width="440px"></asp:ListBox>
                <br />

                <asp:Label ID="lbMessage" runat="server"></asp:Label>

                <br />
            </div>



            <div id="div_FOOTER">
                <div id="div_footer_W3C_ICONS">
                    <a href="http://validator.w3.org/check?uri=referer">
                        <img class="w3c_icon" src="images/valid-xhtml10.png" alt="Valid XHTML 1.0 Transitional" /></a>
                    <a href="http://jigsaw.w3.org/css-validator/">
                        <img class="w3c_icon" src="images/vcss.png" alt="Valid CSS!" /></a>
                </div>

                <div id="div_footer_AUTHOR">
                    Leonid Zadorozhnykh 2015 v1.0
                </div>
            </div>


        </div>
        <!-- End of div_CONTAINER -->
    </form>
</body>
</html>
