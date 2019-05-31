<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="masterzataktif.aspx.vb"
    Inherits="QIS.Web.secure.master.InventoryItem.MasterZatAktif.masterzataktif" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>
<html>
<head>
    <title>Zat Aktif</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmMasterZatAktif" runat="server">
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
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Zat Aktif
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnKodeZatAktif" CausesValidation="False" Text="Kode Zat Aktif"
                                                                runat="server" />
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeZatAktif" Width="100%" MaxLength="10" AutoPostBack="True"
                                                                runat="server" />
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Nama Zat Aktif
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtNamaZatAktif" Width="100%" MaxLength="30" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="rfldNamaZatAktif" runat="server" ControlToValidate="txtNamaZatAktif"
                                                                ErrorMessage="Nama Zat Aktif" Display="dynamic">** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="40%">
                                                            <asp:CheckBox ID="chkStatusAktif" runat="server" Checked="False" Text="Aktif" AutoPostBack="False" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
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
