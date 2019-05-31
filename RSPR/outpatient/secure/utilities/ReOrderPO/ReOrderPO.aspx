<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../incl/copyRightModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReOrderPO.aspx.vb" Inherits="QIS.Web.secure.utilities.ReOrderPO.ReOrderPO" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<html>
<head>
    <title>Re-Order Pemesanan Barang</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<div id="loadingmsg" style="position: absolute; z-index: 3; left: 240; top: 200;
    width: 200; height: 60; border-width: 1; border-style: ridge; background-color: #eeeeee">
    <center>
        <br />
        <br />
        <img src="/qislib/images/cursor_hourglas.gif"><font face='Verdana' size="1"> Loading,
            Please wait ... </font>
        <br />
        <br />
    </center>
</div>
<body ms_positioning="GridLayout">
    <form id="frmResepRj" runat="server">
    <table border="0" width="100%" cellspacing="2" cellpadding="0">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Re-Order Pemesanan Barang
                                        </td>
                                    </tr>
                                    <asp:Panel ID="pnlGrid" runat="server">
                                        <tr class="rbody">
                                            <td align="left" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="25%">
                                                            Tanggal Hari ini:<br />
                                                            <asp:Label ID="lblTgl" runat="server" />
                                                        </td>
                                                        <td width="25%">
                                                            Proses R.O.P.:
                                                            <br />
                                                            <asp:DropDownList ID="ddlprosesROP" runat="server" Width="100%" AutoPostBack="False">
                                                                <asp:ListItem Value="Statis" Text="Statis"></asp:ListItem>
                                                                <asp:ListItem Value="Dinamis" Text="Dinamis"></asp:ListItem>
                                                                <asp:ListItem Value="Semua" Text="Semua"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td width="25%">                                                           
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Gudang:<br />
                                                            <asp:DropDownList ID="ddlGudang" runat="server" Width="100%" AutoPostBack="True" />
                                                        </td>
                                                        <td width="25%">
                                                            Lokasi:<br />
                                                            <asp:DropDownList ID="ddlLokasi" runat="server" Width="100%" AutoPostBack="True" />
                                                        </td>
                                                        <td width="25%">
                                                            Group:<br />
                                                            <asp:DropDownList ID="ddlGroup" runat="server" Width="100%" AutoPostBack="True" />
                                                        </td>
                                                        <td align="right">
                                                            <br />
                                                            <asp:Button ID="btnReset" runat="server" Text="Reset" Width="100" CssClass="sbttn" Visible="False">
                                                            </asp:Button>
                                                            <asp:Button ID="btnHitungReorder" runat="server" Text="Hitung Re-Order" CssClass="sbttn">
                                                            </asp:Button>
                                                            <asp:Button ID="btnGeneratedPO" runat="server" Text="Proses PO" Width="100" CssClass="sbttn">
                                                            </asp:Button>
                                                            <asp:Button ID="btnCetak" runat="server" Text="Cetak" Width="100" CssClass="sbttn" Visible="false">
                                                            </asp:Button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <asp:Panel ID="List" runat="server" />
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlMesage" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="left" height="25">
                                                <asp:Label ID="lblMessage" runat="server" />
                                                <br />
                                                <br />
                                                <asp:Button ID="btnDone" runat="server" Text="Done" CssClass="sbttn" CausesValidation="False" Width="100">
                                                </asp:Button>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                </table>
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr>
                                        <td align="left">
                                            <p>
                                                <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                </asp:ValidationSummary>
                                            </p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

</body>
</html>

<script>
    if (document.all) document.all.loadingmsg.style.visibility = 'hidden';
</script>

<script>
    if (document.layers) document.loadingmsg.visibility = 'hidden'
</script>

<script>
    if (document.getElementById) document.getElementById('loadingmsg').style.visibility = 'hidden'
</script>

