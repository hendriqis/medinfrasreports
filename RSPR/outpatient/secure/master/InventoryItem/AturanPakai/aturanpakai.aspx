<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="aturanpakai.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.AturanPakai.aturanpakai" %>

<html>
<head>
    <title>Aturan Pakai</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmAturan" runat="server">
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
                                                Aturan Pakai
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnKodeAturan" runat="server" CausesValidation="False" Text="Kode Aturan Pakai"></asp:LinkButton>
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeAturan" runat="server" Width="100%" MaxLength="15" AutoPostBack="True"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="rfvKodeAturan" runat="server" ControlToValidate="txtKodeAturan"
                                                                ErrorMessage="Kode Aturan" Display="dynamic">
																	** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Nama Aturan Pakai
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtNamaAturan" runat="server" Width="100%" MaxLength="30"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Keterangan Aturan Pakai
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKetAturan" runat="server" Width="100%" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="rfvKetAturan" runat="server" ControlToValidate="txtKetAturan"
                                                                ErrorMessage="Keterangan Aturan" Display="dynamic">
																	** 
                                                            </asp:RequiredFieldValidator>
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
