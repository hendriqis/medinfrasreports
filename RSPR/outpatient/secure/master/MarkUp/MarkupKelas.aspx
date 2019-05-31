<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MarkupKelas.aspx.vb" Inherits="QIS.Web.secure.master.MarkUp.MarkupKelas" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Pengaturan Margin Penjualan Item - Berdasarkan Kelas</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body>
    <form id="frmMarkupKelas" runat="server">
    <table border="0" width="100%" cellspacing="0" cellpadding="2" height="100%">
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
            <td width="100%" valign="top" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Pengaturan Margin Penjualan Item - Berdasarkan Kelas
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol">
                                            <table width="100%">
                                                <tr>
                                                    <td width="50%" valign="top">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="20%">
                                                                    <asp:LinkButton ID="lbtnKodeKelas" CausesValidation="False" Text="Kode Kelas" runat="server" />
                                                                </td>
                                                                <td width="40%">
                                                                    <asp:TextBox ID="txtKodeKelas" runat="server" MaxLength="5" Width="100%" AutoPostBack="true" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rfvKode" runat="server" Display="dynamic" ErrorMessage="Kode Kelas"
                                                                        ControlToValidate="txtKodeKelas">**</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Nama Kelas
                                                                </td>
                                                                <td width="40%">
                                                                    <asp:TextBox ID="txtNamaKelas" runat="server" MaxLength="25" Width="100%" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rfvNama" runat="server" Display="dynamic" ErrorMessage="Nama Kelas"
                                                                        ControlToValidate="txtNamaKelas">**</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Mark Up (%)
                                                                </td>
                                                                <td width="40%">
                                                                    <asp:TextBox ID="txtMarkup" runat="server" MaxLength="3" Width="100%" />
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    &nbsp;
                                                                </td>
                                                                <td width="40%">
                                                                    <asp:CheckBox runat="server" ID="chkAktif" Text="Aktif" />
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table cellspacing="0" cellpadding="5" width="100%">
                                                <tr>
                                                    <td align="left">
                                                        <p>
                                                            <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
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

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>
