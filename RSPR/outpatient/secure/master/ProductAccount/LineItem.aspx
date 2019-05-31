<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LineItem.aspx.vb" Inherits="QIS.Web.secure.master.ProductAccount.LineItem" %>

<html>
<head>
    <title>Product Account</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
</head>
<body ms_positioning="GridLayout">
    <form id="frmLineItem" runat="server">
    <table border="0" width="100%" cellspacing="0" cellpadding="2" style="height: 100%;">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server" />
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top" style="height: 100%;">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="2" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Product Account
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnKodeLineItem" CausesValidation="False" Text="Kode" runat="server" />
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeLineItem" Width="100%" MaxLength="5" AutoPostBack="True"
                                                                runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorKode" runat="server" ControlToValidate="txtKodeLineItem"
                                                                ErrorMessage="Kode Line Item" Display="dynamic">
																	** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Deskripsi
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtDescLineItem" Width="100%" MaxLength="50" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredfieldvalidatorDescLineItem" runat="server"
                                                                ControlToValidate="txtDescLineItem" ErrorMessage="Deskripsi Line Item" Display="dynamic">
																	** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="40%">
                                                            <asp:CheckBox ID="chkStatusAktif" runat="server" Checked="False" Text="Aktif" AutoPostBack="False" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Backward
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtbackward" Width="100%" MaxLength="50" runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Forward
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtforward" Width="100%" MaxLength="50" runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            
                                                        </td>
                                                        <td width="40%">
                                                            <asp:Button ID="btnUpdate" Text="Update ROP..." CssClass="sbttn" Width="20%" 
                                                                runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none;">
                                                        <td width="20%">
                                                            Kode Perkiraan Inventory
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeInventory" Width="100%" MaxLength="5" runat="server" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none;">
                                                        <td width="20%">
                                                            Kode Perkiraan Scrap
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeScrap" Width="100%" MaxLength="5" runat="server" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none;">
                                                        <td width="20%">
                                                            Kode Perkiraan Harga Pokok
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeHrgPokok" Width="100%" MaxLength="5" runat="server" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none;">
                                                        <td width="20%">
                                                            Kode Perkiraan Penjualan
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeJual" Width="100%" MaxLength="5" runat="server" />
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
                                        <tr class="rbody">
                                            <td align="left">
                                                <p>
                                                    <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
                                                </p>
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
