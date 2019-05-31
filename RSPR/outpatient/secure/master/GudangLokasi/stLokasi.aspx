<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="stLokasi.aspx.vb" Inherits="QIS.Web.secure.master.GudangLokasi.stLokasi" %>

<html>
<head>
    <title>Pengaturan Otorisasi Transaksi Lokasi</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmStLokasi" runat="server">
    <table border="0" width="100%" cellspacing="0" cellpadding="3" height="100%">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top" height=" 100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="2" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Pengaturan Otorisasi Transaksi Lokasi
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="10%">
                                                            <asp:LinkButton ID="lbtnKodeStatus" CausesValidation="False" Text="Kode Status" runat="server" />
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeStatus" runat="server" AutoPostBack="true" Width="100%" MaxLength="5"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorKode" runat="server" Display="dynamic"
                                                                ErrorMessage="Kode Status" ControlToValidate="txtKodeStatus">**</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="10%">
                                                            Nama Status
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtNamaStatus" runat="server" Width="100%" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredfieldvalidatorNama" runat="server" Display="dynamic"
                                                                ErrorMessage="Nama Status" ControlToValidate="txtNamaStatus">**</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="10%">
                                                        </td>
                                                        <td width="40%">
                                                            <asp:CheckBox runat="server" ID="chkAvailable" Text="Available" Visible="False" />
                                                            <asp:CheckBox runat="server" ID="chkOverIssue" Text="Overissue" Visible="False" />
                                                            <asp:CheckBox runat="server" ID="chkDiscontinue" Text="Discontinue" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table cellspacing="0" cellpadding="5" width="100%">
                                                    <tr class="rbody">
                                                        <td class="rbodycol" align="middle" height="25">
                                                            <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="Gainsboro">
                                                                <tr>
                                                                    <td width="45%" align="center">
                                                                        <br />
                                                                        <font class="txtstrong">Daftar Transaksi</font>
                                                                        <br />
                                                                        <div style="overflow: auto; width: 100%; height: 500px;">
                                                                            <asp:CheckBoxList ID="cblTransaksi" runat="server" Width="100%" CellSpacing="0" CellPadding="0">
                                                                            </asp:CheckBoxList>
                                                                        </div>
                                                                    </td>
                                                                    <td width="10%" bordercolor="GhostWhite">
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Button ID="btnAdd" runat="server" Width="100%" Text="Add  >>" CssClass="sbttn"
                                                                                        CausesValidation="False"></asp:Button>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Button ID="btnRemove" runat="server" Width="100%" onkeydown="if (event.keyCode==13){event.returnValue=false}"
                                                                                        Text="<<  Remove" CssClass="sbttn" CausesValidation="False"></asp:Button>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                    <td align="center">
                                                                        <br />
                                                                        <font class="txtstrong">Transaksi yang Dilarang</font>
                                                                        <br />
                                                                        <div style="overflow: auto; width: 100%; height: 500px">
                                                                            <asp:CheckBoxList ID="cblTransaksiDlrng" runat="server" Width="100%" CellSpacing="0"
                                                                                CellPadding="0">
                                                                            </asp:CheckBoxList>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
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
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>
