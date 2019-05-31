<%@ Import Namespace="QIS.Web" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="QIS.Web.Reports" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Laporan</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>
    <script language="javascript" type="text/javascript" src="/qislib/scripts/JScript.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.treenode').hover(function () {
                $('.treenode').css("font-underline", "false");
            });
        });
    </script>
    <style type="text/css">
        .treenode
        {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="frmPar" runat="server">
    <table cellspacing="0" cellpadding="2" width="100%" border="0" style="height: 100%">
        <tr>
            <td width="100%" valign="top" colspan="3">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top" colspan="3">
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td valign="top" height="100%" width="25%">
                <table cellspacing="5" cellpadding="0" style="height: 100%;" width="100%" border="0">
                    <tr>
                        <td valign="top">
                            <table cellspacing="0" cellpadding="6" width="100%" style="height: 100%;">
                                <tr class="rheader">
                                    <td class="rheadercol" align="left" height="25">
                                        Daftar Laporan
                                    </td>
                                </tr>
                                <tr class="rbody">
                                    <td style="height: 100%;">
                                        <div style="height: 100%; overflow: auto;">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:TreeView runat="server" ID="trvReport" Width="100%" Height="100%" ExpandDepth="-1"
                                                            ShowLines="true" ShowExpandCollapse="true">
                                                            <NodeStyle ForeColor="Black" CssClass="treenode" />
                                                        </asp:TreeView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top" style="height: 100%;" width="1px" bgcolor="#999999">
            </td>
            <td valign="top" width="75%">
                <table cellspacing="5" cellpadding="0" width="100%" border="0">
                    <tr>
                        <td align="left" valign="top">
                            <asp:Panel ID="panel1" runat="server">
                                <table cellspacing="0" cellpadding="6" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            <asp:Label ID="lblReportDesc" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" style="height: 1px" align="center">
                                            <!-- pd1: Periode -->
                                            <asp:Panel ID="pd1" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Periode
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Tanggal Mulai
                                                        </td>
                                                        <td width="60%">
                                                            <Module:webcal ID="calStart" runat="server" DontResetDate="true"></Module:webcal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Tanggal Akhir
                                                        </td>
                                                        <td width="60%">
                                                            <Module:webcal ID="calEnd" runat="server" DontResetDate="true"></Module:webcal>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd11" runat="server" Visible="False">
                                                PERIODE 2
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Tanggal Mulai 2
                                                        </td>
                                                        <td width="60%">
                                                            <Module:webcal ID="calStart2" runat="server" DontResetDate="true"></Module:webcal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Tanggal Akhir 2
                                                        </td>
                                                        <td width="60%">
                                                            <Module:webcal ID="calEnd2" runat="server" DontResetDate="true"></Module:webcal>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!-- pd2: Tanggal -->
                                            <asp:Panel ID="pd2" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Tanggal
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Tanggal
                                                        </td>
                                                        <td width="60%">
                                                            <Module:webcal ID="calDate" runat="server" DontResetDate="true"></Module:webcal>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd88" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Hari
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Hari
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtnhari" runat="server" AutoPostBack="True" Width="30%" MaxLength="9"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!-- pd3 : Kode Gudang & Lokasi -->
                                            <asp:Panel ID="pd3" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang dan Lokasi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang Awal
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlGudangAwal" AutoPostBack="true" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang Akhir
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlGudangAkhir" AutoPostBack="true" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Lokasi Awal
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlLokasiAwal" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Lokasi Akhir
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlLokasiAkhir" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!-- pd4: Tanggal -->
                                            <asp:Panel ID="pd14" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang dan Lokasi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlKdGudang" Width="60%" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllGudang1" runat="server" AutoPostBack="False" Checked="False"
                                                                Text="Semua Gudang"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Lokasi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlLokasi" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllLokasi1" runat="server" AutoPostBack="False" Checked="False"
                                                                Text="Semua Lokasi"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd14CR" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang dan Lokasi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlKdGudangCR" Width="60%" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllGudang1CR" runat="server" AutoPostBack="False" Checked="False"
                                                                Text="Semua Gudang"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Lokasi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlLokasiCR" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllLokasi1CR" runat="server" AutoPostBack="False" Checked="False"
                                                                Text="Semua Lokasi"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdGudang" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlKdGudangAwal" Width="60%" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlKdGudangAkhir" Width="60%" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdGudangSingle" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlGudangSingle" Width="60%" AutoPostBack="false">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:CheckBox runat="server" ID="chkAllGudang" Text="Semua Gudang" AutoPostBack="false"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdGudangSingleCR" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList runat="server" ID="ddlGudangSingleCR" Width="60%" AutoPostBack="false">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:CheckBox runat="server" ID="chkAllGudangCR" Text="Semua Gudang" AutoPostBack="false"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd4" runat="server" Visible="False">
                                                ITEM
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnItemMulai" runat="server" Text="Item Mulai" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtItemMulai" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblItemMulai" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldItemMulai" runat="server" Display="dynamic" ErrorMessage="Item mulai"
                                                                ControlToValidate="txtItemMulai">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnItemSampai" runat="server" Text="Item Sampai" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtItemSampai" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblItemSampai" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldItemSampai" runat="server" Display="dynamic"
                                                                ErrorMessage="Item sampai" ControlToValidate="txtItemSampai">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd4a" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Item
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lnkKdItem" runat="server" Text="Item" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtKdItem" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblNmItem" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:CheckBox ID="chkAllItem" runat="server" AutoPostBack="false" Checked="False"
                                                                Text="Semua Item"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd4aCR" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Item
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lnkKdItemCR" runat="server" Text="Item" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtKdItemCR" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblNmItemCR" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:CheckBox ID="chkAllItemCR" runat="server" AutoPostBack="false" Checked="False"
                                                                Text="Semua Item"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!-- pd5: Jenis Transaksi Adjustment-->
                                            <asp:Panel ID="pd5" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Jenis Transaksi Adjustment
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Transaksi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJenisAdjust" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkAllAdjust" runat="server" AutoPostBack="True" Checked="False"
                                                                Text="Semua Transaksi"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!-- pd6: Jenis Transaksi Distribusi-->
                                            <asp:Panel ID="pd6" runat="server" Visible="False">
                                                JENIS TRANSAKSI DISTRIBUSI
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Transaksi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJenisDistribusi" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkAllDist" runat="server" AutoPostBack="True" Checked="False"
                                                                Text="Semua Transaksi"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd7" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Supplier
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnSuppStart" runat="server" Text="Supplier Awal" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtSuppStart" runat="server" Width="30%" MaxLength="50"></asp:TextBox>
                                                            <asp:Label ID="lblSuppStart" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldSuppStart" runat="server" Display="dynamic" ErrorMessage="Supplier awal"
                                                                ControlToValidate="txtSuppStart">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnSuppEnd" runat="server" Text="Supplier Akhir" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtSuppEnd" runat="server" Width="30%" MaxLength="50"></asp:TextBox>
                                                            <asp:Label ID="lblSuppEnd" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldSuppEnd" runat="server" Display="dynamic" ErrorMessage="Supplier akhir"
                                                                ControlToValidate="txtSuppEnd">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!-- USER NAME -->
                                            <asp:Panel ID="pd8" Style="display: none" runat="server" Visible="False">
                                                NAMA USER
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Nama User
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtUser" runat="server" Width="80%" MaxLength="15" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd9" runat="server" Visible="false">
                                                GROUP
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Group Mulai
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlGrpStart" runat="server" Width="30%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Group Sampai
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlGrpEnd" runat="server" Width="30%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkAllGrp" runat="server" AutoPostBack="True" Checked="False" Text="Semua Group">
                                                            </asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd10" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnGudangAsal" runat="server" Text="Gudang Asal" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtGudangAsal" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblGudangAsal" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldGudangAsal" runat="server" Display="dynamic"
                                                                ErrorMessage="Gudang Asal" ControlToValidate="txtGudangAsal">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnGudangTujuan" runat="server" Text="Gudang Tujuan" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtGudangTujuan" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblGudangTujuan" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldGudangTujuan" runat="server" Display="dynamic"
                                                                ErrorMessage="Gudang Tujuan" ControlToValidate="txtGudangTujuan">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd13" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbKasirType" runat="server">
                                                                <asp:ListItem Value="Per" Selected="True">Per Kasir</asp:ListItem>
                                                                <asp:ListItem Value="All">Semua Kasir</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd17" runat="server" Visible="False">
                                                KODE GUDANG
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnGudangStart" runat="server" Text="Gudang Awal" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtGudangStart" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblGudangStart" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldGudangStart" runat="server" Display="dynamic"
                                                                ErrorMessage="Gudang Awal" ControlToValidate="txtGudangStart">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnGudangEnd" runat="server" Text="Gudang Akhir" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtGudangEnd" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblGudangEnd" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldGudangEnd" runat="server" Display="dynamic" ErrorMessage="Gudang Akhir"
                                                                ControlToValidate="txtGudangEnd">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd18" runat="server" Visible="False">
                                                KODE INSTANSI
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnInstansiAwal" runat="server" Text="Instansi Awal" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtInstansiAwal" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblInstansiAwal" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldInstansiAwal" runat="server" Display="dynamic"
                                                                ErrorMessage="Instansi Awal" ControlToValidate="txtInstansiAwal">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnInstansiAkhir" runat="server" Text="Instansi Akhir" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtInstansiAkhir" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblInstansiAkhir" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldInstansiAkhir" runat="server" Display="dynamic"
                                                                ErrorMessage="Instansi Akhir" ControlToValidate="txtInstansiAkhir">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd20" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Tahun
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlthn" runat="server" Width="30%">
                                                                <asp:ListItem Value="2000" Selected="True" Text="2000" />
                                                                <asp:ListItem Value="2001" Text="2001" />
                                                                <asp:ListItem Value="2002" Text="2002" />
                                                                <asp:ListItem Value="2003" Text="2003" />
                                                                <asp:ListItem Value="2004" Text="2004" />
                                                                <asp:ListItem Value="2005" Text="2005" />
                                                                <asp:ListItem Value="2006" Text="2006" />
                                                                <asp:ListItem Value="2007" Text="2007" />
                                                                <asp:ListItem Value="2008" Text="2008" />
                                                                <asp:ListItem Value="2009" Text="2009" />
                                                                <asp:ListItem Value="2010" Text="2010" />
                                                                <asp:ListItem Value="2011" Text="2011" />
                                                                <asp:ListItem Value="2012" Text="2012" />
                                                                <asp:ListItem Value="2013" Text="2013" />
                                                                <asp:ListItem Value="2014" Text="2014" />
                                                                <asp:ListItem Value="2015" Text="2015" />
                                                                <asp:ListItem Value="2016" Text="2016" />
                                                                <asp:ListItem Value="2017" Text="2017" />
                                                                <asp:ListItem Value="2018" Text="2018" />
                                                                <asp:ListItem Value="2019" Text="2019" />
                                                                <asp:ListItem Value="2020" Text="2020" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd21" runat="server" Visible="False">
                                                PERIODE
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Bulan
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlBlnAwal" runat="server" Width="30%">
                                                                <asp:ListItem Value="01" Selected="True" Text="JANUARI" />
                                                                <asp:ListItem Value="02" Text="FEBRUARI" />
                                                                <asp:ListItem Value="03" Text="MARET" />
                                                                <asp:ListItem Value="04" Text="APRIL" />
                                                                <asp:ListItem Value="05" Text="MEI" />
                                                                <asp:ListItem Value="06" Text="JUNI" />
                                                                <asp:ListItem Value="07" Text="JULI" />
                                                                <asp:ListItem Value="08" Text="AGUSTUS" />
                                                                <asp:ListItem Value="09" Text="SEPTEMBER" />
                                                                <asp:ListItem Value="10" Text="OKTOBER" />
                                                                <asp:ListItem Value="11" Text="NOVEMBER" />
                                                                <asp:ListItem Value="12" Text="DESEMBER" />
                                                            </asp:DropDownList>
                                                            s/d
                                                            <asp:DropDownList ID="ddlBlnAkhir" runat="server" Width="30%">
                                                                <asp:ListItem Value="01" Selected="True" Text="JANUARI" />
                                                                <asp:ListItem Value="02" Text="FEBRUARI" />
                                                                <asp:ListItem Value="03" Text="MARET" />
                                                                <asp:ListItem Value="04" Text="APRIL" />
                                                                <asp:ListItem Value="05" Text="MEI" />
                                                                <asp:ListItem Value="06" Text="JUNI" />
                                                                <asp:ListItem Value="07" Text="JULI" />
                                                                <asp:ListItem Value="08" Text="AGUSTUS" />
                                                                <asp:ListItem Value="09" Text="SEPTEMBER" />
                                                                <asp:ListItem Value="10" Text="OKTOBER" />
                                                                <asp:ListItem Value="11" Text="NOVEMBER" />
                                                                <asp:ListItem Value="12" Text="DESEMBER" />
                                                            </asp:DropDownList>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd22" runat="server" Visible="False">
                                                PERIODE
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Periode Awal
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlBulanAwal" runat="server" Width="30%">
                                                                <asp:ListItem Value="01" Selected="True" Text="JANUARI" />
                                                                <asp:ListItem Value="02" Text="FEBRUARI" />
                                                                <asp:ListItem Value="03" Text="MARET" />
                                                                <asp:ListItem Value="04" Text="APRIL" />
                                                                <asp:ListItem Value="05" Text="MEI" />
                                                                <asp:ListItem Value="06" Text="JUNI" />
                                                                <asp:ListItem Value="07" Text="JULI" />
                                                                <asp:ListItem Value="08" Text="AGUSTUS" />
                                                                <asp:ListItem Value="09" Text="SEPTEMBER" />
                                                                <asp:ListItem Value="10" Text="OKTOBER" />
                                                                <asp:ListItem Value="11" Text="NOVEMBER" />
                                                                <asp:ListItem Value="12" Text="DESEMBER" />
                                                            </asp:DropDownList>
                                                            <asp:DropDownList ID="ddlTahunAwal" runat="server" Width="30%">
                                                                <asp:ListItem Value="2000" Selected="True" Text="2000" />
                                                                <asp:ListItem Value="2001" Text="2001" />
                                                                <asp:ListItem Value="2002" Text="2002" />
                                                                <asp:ListItem Value="2003" Text="2003" />
                                                                <asp:ListItem Value="2004" Text="2004" />
                                                                <asp:ListItem Value="2005" Text="2005" />
                                                                <asp:ListItem Value="2006" Text="2006" />
                                                                <asp:ListItem Value="2007" Text="2007" />
                                                                <asp:ListItem Value="2008" Text="2008" />
                                                                <asp:ListItem Value="2009" Text="2009" />
                                                                <asp:ListItem Value="2010" Text="2010" />
                                                                <asp:ListItem Value="2011" Text="2011" />
                                                                <asp:ListItem Value="2012" Text="2012" />
                                                                <asp:ListItem Value="2013" Text="2013" />
                                                                <asp:ListItem Value="2014" Text="2014" />
                                                                <asp:ListItem Value="2015" Text="2015" />
                                                                <asp:ListItem Value="2016" Text="2016" />
                                                                <asp:ListItem Value="2017" Text="2017" />
                                                                <asp:ListItem Value="2018" Text="2018" />
                                                                <asp:ListItem Value="2019" Text="2019" />
                                                                <asp:ListItem Value="2020" Text="2020" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Periode Akhir
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlBulanAkhir" runat="server" Width="30%">
                                                                <asp:ListItem Value="01" Selected="True" Text="JANUARI" />
                                                                <asp:ListItem Value="02" Text="FEBRUARI" />
                                                                <asp:ListItem Value="03" Text="MARET" />
                                                                <asp:ListItem Value="04" Text="APRIL" />
                                                                <asp:ListItem Value="05" Text="MEI" />
                                                                <asp:ListItem Value="06" Text="JUNI" />
                                                                <asp:ListItem Value="07" Text="JULI" />
                                                                <asp:ListItem Value="08" Text="AGUSTUS" />
                                                                <asp:ListItem Value="09" Text="SEPTEMBER" />
                                                                <asp:ListItem Value="10" Text="OKTOBER" />
                                                                <asp:ListItem Value="11" Text="NOVEMBER" />
                                                                <asp:ListItem Value="12" Text="DESEMBER" />
                                                            </asp:DropDownList>
                                                            <asp:DropDownList ID="ddlTahunAkhir" runat="server" Width="30%">
                                                                <asp:ListItem Value="2000" Selected="True" Text="2000" />
                                                                <asp:ListItem Value="2001" Text="2001" />
                                                                <asp:ListItem Value="2002" Text="2002" />
                                                                <asp:ListItem Value="2003" Text="2003" />
                                                                <asp:ListItem Value="2004" Text="2004" />
                                                                <asp:ListItem Value="2005" Text="2005" />
                                                                <asp:ListItem Value="2006" Text="2006" />
                                                                <asp:ListItem Value="2007" Text="2007" />
                                                                <asp:ListItem Value="2008" Text="2008" />
                                                                <asp:ListItem Value="2009" Text="2009" />
                                                                <asp:ListItem Value="2010" Text="2010" />
                                                                <asp:ListItem Value="2011" Text="2011" />
                                                                <asp:ListItem Value="2012" Text="2012" />
                                                                <asp:ListItem Value="2013" Text="2013" />
                                                                <asp:ListItem Value="2014" Text="2014" />
                                                                <asp:ListItem Value="2015" Text="2015" />
                                                                <asp:ListItem Value="2016" Text="2016" />
                                                                <asp:ListItem Value="2017" Text="2017" />
                                                                <asp:ListItem Value="2018" Text="2018" />
                                                                <asp:ListItem Value="2019" Text="2019" />
                                                                <asp:ListItem Value="2020" Text="2020" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd23" runat="server" Visible="false">
                                                JENIS RESEP
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Resep
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJenisResep" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd89" runat="server" Visible="false">
                                                Tipe Transaksi
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Tipe Transaksi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlTipeTransaksi" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd61" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Pemesanan
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJenisPurchaseOrder" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd24" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Jenis Resep
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Resep
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJenisResepApp" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd25" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Jenis Resep
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Resep
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJenisResep2" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd26" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbStatusABCType" runat="server">
                                                                <asp:ListItem Value="n" Selected="True">Nilai</asp:ListItem>
                                                                <asp:ListItem Value="q">Qty</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd27" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Shift
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlShift" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd28" runat="server" Visible="false">
                                                <!-- retur obat alkes -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbReturObatAlkes" runat="server">
                                                                <asp:ListItem Value="retur" Selected="True">Retur Obat/Alkes per Item</asp:ListItem>
                                                                <asp:ListItem Value="supplier">Retur Obat/Alkes per Supplier</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd29" runat="server" Visible="False">
                                                KODE CABANG
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnCabangAsal" runat="server" Text="Cabang Asal" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtCabangAsal" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblCabangAsal" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldCabangAsal" runat="server" Display="dynamic"
                                                                ErrorMessage="Cabang Asal" ControlToValidate="txtCabangAsal">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnCabangTujuan" runat="server" Text="Cabang Tujuan" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtCabangTujuan" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblCabangTujuan" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldCabangTujuan" runat="server" Display="dynamic"
                                                                ErrorMessage="Cabang Tujuan" ControlToValidate="txtGudangTujuan">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd99" runat="server" Visible="False">
                                                UNIT BAGIAN
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtndataunitbagianawal" runat="server" Text="Unit Bagian Awal"
                                                                CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtdataunitbagianawal" runat="server" AutoPostBack="True" Width="30%"
                                                                MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lbldataunitbagianawal" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rflddataunitbagianawal" runat="server" Display="dynamic"
                                                                ErrorMessage="Unit Bagian Awal" ControlToValidate="txtdataunitbagianawal">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtndataunitbagianakhir" runat="server" Text="Unit Bagian Akhir"
                                                                CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtdataunitbagianakhir" runat="server" AutoPostBack="True" Width="30%"
                                                                MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lbldataunitbagianakhir" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rflddataunitbagianakhir" runat="server" Display="dynamic"
                                                                ErrorMessage="Unit Bagian Akhir" ControlToValidate="txtdataunitbagianakhir">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd98" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Group Item
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtngroupitemawal" runat="server" Text="Group Item Awal" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtgroupitemawal" runat="server" AutoPostBack="True" Width="30%"
                                                                MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblgroupitemawal" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldgroupitemawal" runat="server" Display="dynamic"
                                                                ErrorMessage="Group Item Awal" ControlToValidate="txtgroupitemawal">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtngroupitemakhir" runat="server" Text="Group Item Akhir" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtgroupitemakhir" runat="server" AutoPostBack="True" Width="30%"
                                                                MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblgroupitemakhir" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldgroupitemakhir" runat="server" Display="dynamic"
                                                                ErrorMessage="Group Item Akhir" ControlToValidate="txtgroupitemakhir">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd30" runat="server" Visible="False">
                                                PERIODE
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Periode
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlBulan" runat="server" Width="30%">
                                                                <asp:ListItem Value="01" Selected="True" Text="JANUARI" />
                                                                <asp:ListItem Value="02" Text="FEBRUARI" />
                                                                <asp:ListItem Value="03" Text="MARET" />
                                                                <asp:ListItem Value="04" Text="APRIL" />
                                                                <asp:ListItem Value="05" Text="MEI" />
                                                                <asp:ListItem Value="06" Text="JUNI" />
                                                                <asp:ListItem Value="07" Text="JULI" />
                                                                <asp:ListItem Value="08" Text="AGUSTUS" />
                                                                <asp:ListItem Value="09" Text="SEPTEMBER" />
                                                                <asp:ListItem Value="10" Text="OKTOBER" />
                                                                <asp:ListItem Value="11" Text="NOVEMBER" />
                                                                <asp:ListItem Value="12" Text="DESEMBER" />
                                                            </asp:DropDownList>
                                                            <asp:DropDownList ID="ddlTahun" runat="server" Width="30%">
                                                                <asp:ListItem Value="2000" Selected="True" Text="2000" />
                                                                <asp:ListItem Value="2001" Text="2001" />
                                                                <asp:ListItem Value="2002" Text="2002" />
                                                                <asp:ListItem Value="2003" Text="2003" />
                                                                <asp:ListItem Value="2004" Text="2004" />
                                                                <asp:ListItem Value="2005" Text="2005" />
                                                                <asp:ListItem Value="2006" Text="2006" />
                                                                <asp:ListItem Value="2007" Text="2007" />
                                                                <asp:ListItem Value="2008" Text="2008" />
                                                                <asp:ListItem Value="2009" Text="2009" />
                                                                <asp:ListItem Value="2010" Text="2010" />
                                                                <asp:ListItem Value="2011" Text="2011" />
                                                                <asp:ListItem Value="2012" Text="2012" />
                                                                <asp:ListItem Value="2013" Text="2013" />
                                                                <asp:ListItem Value="2014" Text="2014" />
                                                                <asp:ListItem Value="2015" Text="2015" />
                                                                <asp:ListItem Value="2016" Text="2016" />
                                                                <asp:ListItem Value="2017" Text="2017" />
                                                                <asp:ListItem Value="2018" Text="2018" />
                                                                <asp:ListItem Value="2019" Text="2019" />
                                                                <asp:ListItem Value="2020" Text="2020" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd31" runat="server" Visible="False">
                                                KODE CABANG
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnCabang" runat="server" Text="Cabang" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtCabang" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblCabang" runat="server"></asp:Label>
                                                            <asp:RequiredFieldValidator ID="rfldCabang" runat="server" Display="dynamic" ErrorMessage="Cabang"
                                                                ControlToValidate="txtCabang">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd33" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang dan Lokasi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlGudangId" runat="server" Width="47%" AutoPostBack="True">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Lokasi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlLokasiIdAwal" runat="server" Width="47%">
                                                            </asp:DropDownList>
                                                            s/d
                                                            <asp:DropDownList ID="ddlLokasiIdAkhir" runat="server" Width="47%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pd33a" Visible="false">
                                                <table>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:CheckBox ID="chkAllLokasi" runat="server" AutoPostBack="false" Checked="False"
                                                                Text="Semua Lokasi"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd94" runat="server" Visible="False">
                                                PERIODE
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Periode
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlBln" runat="server" Width="30%">
                                                                <asp:ListItem Value="01" Selected="True" Text="JANUARI" />
                                                                <asp:ListItem Value="02" Text="FEBRUARI" />
                                                                <asp:ListItem Value="03" Text="MARET" />
                                                                <asp:ListItem Value="04" Text="APRIL" />
                                                                <asp:ListItem Value="05" Text="MEI" />
                                                                <asp:ListItem Value="06" Text="JUNI" />
                                                                <asp:ListItem Value="07" Text="JULI" />
                                                                <asp:ListItem Value="08" Text="AGUSTUS" />
                                                                <asp:ListItem Value="09" Text="SEPTEMBER" />
                                                                <asp:ListItem Value="10" Text="OKTOBER" />
                                                                <asp:ListItem Value="11" Text="NOVEMBER" />
                                                                <asp:ListItem Value="12" Text="DESEMBER" />
                                                            </asp:DropDownList>
                                                            <asp:DropDownList ID="ddlblnTahun" runat="server" Width="30%">
                                                                <asp:ListItem Value="2000" Selected="True" Text="2000" />
                                                                <asp:ListItem Value="2001" Text="2001" />
                                                                <asp:ListItem Value="2002" Text="2002" />
                                                                <asp:ListItem Value="2003" Text="2003" />
                                                                <asp:ListItem Value="2004" Text="2004" />
                                                                <asp:ListItem Value="2005" Text="2005" />
                                                                <asp:ListItem Value="2006" Text="2006" />
                                                                <asp:ListItem Value="2007" Text="2007" />
                                                                <asp:ListItem Value="2008" Text="2008" />
                                                                <asp:ListItem Value="2009" Text="2009" />
                                                                <asp:ListItem Value="2010" Text="2010" />
                                                                <asp:ListItem Value="2011" Text="2011" />
                                                                <asp:ListItem Value="2012" Text="2012" />
                                                                <asp:ListItem Value="2013" Text="2013" />
                                                                <asp:ListItem Value="2014" Text="2014" />
                                                                <asp:ListItem Value="2015" Text="2015" />
                                                                <asp:ListItem Value="2016" Text="2016" />
                                                                <asp:ListItem Value="2017" Text="2017" />
                                                                <asp:ListItem Value="2018" Text="2018" />
                                                                <asp:ListItem Value="2019" Text="2019" />
                                                                <asp:ListItem Value="2020" Text="2020" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd95" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Kode Gudang dan Lokasi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Gudang
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlGudangIdSatu" runat="server" Width="47%" AutoPostBack="True">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Lokasi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlLokasiIdAwalSatu" runat="server" Width="47%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:CheckBox ID="chkAllLokasi2" runat="server" AutoPostBack="false" Checked="False"
                                                                Text="Semua Lokasi"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd34" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Jenis Distribusi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Distribusi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJnsDistribusi" runat="server" Width="47%">
                                                                <asp:ListItem Value="OUT" Text="KELUAR" />
                                                                <asp:ListItem Value="IN" Text="MASUK" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd34CR" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Jenis Distribusi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Distribusi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlJnsDistribusiCR" runat="server" Width="47%">
                                                                <asp:ListItem Value="keluar" Text="KELUAR" />
                                                                <asp:ListItem Value="masuk" Text="MASUK" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd12" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbReportType" runat="server">
                                                                <asp:ListItem Value="Summary" Selected="True">Rekap</asp:ListItem>
                                                                <asp:ListItem Value="Detail">Detail</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd97" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Tipe Reorder Point
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbStatDin" runat="server">
                                                                <asp:ListItem Value="Statis" Selected="True">Statis</asp:ListItem>
                                                                <asp:ListItem Value="Dinamis">Dinamis</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!--VinSy-->
                                            <asp:Panel ID="pd92" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Ketersediaan Stok
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chkhanyastock"
                                                                runat="server" Checked="False" Text="Hanya Ada Stock"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd32" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbReportType2" runat="server">
                                                                <asp:ListItem Value="item" Selected="True">Per Item</asp:ListItem>
                                                                <asp:ListItem Value="cabang">Per Cabang</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd36" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Shift
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlResepShift" runat="server" Width="30%">
                                                                <asp:ListItem Value="1" Selected="True" Text="PAGI" />
                                                                <asp:ListItem Value="2" Text="SIANG" />
                                                                <asp:ListItem Value="3" Text="MALAM" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbResepType" runat="server">
                                                                <asp:ListItem Value="ri" Selected="True">Rawat Inap</asp:ListItem>
                                                                <asp:ListItem Value="rj">Rawat Jalan</asp:ListItem>
                                                                <asp:ListItem Value="rd">Rawat Darurat</asp:ListItem>
                                                                <asp:ListItem Value="rb">Pasien Bebas</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd37" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Group
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList ID="rbPembelian" runat="server">
                                                                <asp:ListItem Value="ri" Selected="True">Per Supplier</asp:ListItem>
                                                                <asp:ListItem Value="rj">Per Item</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd35" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Asal Pasien
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Asal Pasien
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="rbPasienType" runat="server" Width="200px">
                                                                <asp:ListItem Value="%" Selected="True">Semua Pasien</asp:ListItem>
                                                                <asp:ListItem Value="RI">Rawat Inap</asp:ListItem>
                                                                <asp:ListItem Value="RJ">Rawat Jalan</asp:ListItem>
                                                                <asp:ListItem Value="RD">Rawat Darurat</asp:ListItem>
                                                                <asp:ListItem Value="FM">Pasien Bebas</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd35CR" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Asal Pasien
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Asal Pasien
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="rbPasienTypeCR" runat="server" Width="200px">
                                                                <asp:ListItem Value="0" Selected="True">Semua Pasien</asp:ListItem>
                                                                <asp:ListItem Value="1">Rawat Inap</asp:ListItem>
                                                                <asp:ListItem Value="2">Rawat Jalan</asp:ListItem>
                                                                <asp:ListItem Value="3">Rawat Darurat</asp:ListItem>
                                                                <asp:ListItem Value="4">Pasien Bebas</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd50" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Kategori Item
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlktrItem" runat="server" Width="30%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdDokter" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Dokter
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lnkDokter" runat="server" Text="Dokter" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtDokter" runat="server" Width="30%" MaxLength="15"></asp:TextBox>
                                                            <asp:Label ID="lblDokter" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox runat="server" ID="chkAllDokter" Text="Semua Dokter" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd51" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Jenis Item
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Jenis Item
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddljnsItem" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllJnsItem" runat="server" Checked="false" Text="Semua Jenis Item" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd60" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Group Item
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Group Item
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlGroupItem" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllGroupItem" runat="server" Text="Semua group item" Width="60%" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd60CR" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Group Item
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Group Item
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlGroupItemCR" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllGroupItemCR" runat="server" Text="Semua group item" Width="60%" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!--VinSy-->
                                            <asp:Panel ID="pdPdLine" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Product Line
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Product Line
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlPdLine" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllPdLine" runat="server" Checked="false" Text="Semua Product Line" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdPdLineCR" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Product Line
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Product Line
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlPdLineCR" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllPdLineCR" runat="server" Checked="false" Text="Semua Product Line" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdBagian" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Bagian
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Bagian
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlBagian" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllBagian" runat="server" Checked="false" Text="Semua Bagian" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdSupplier" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Supplier
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lnkSupplier" runat="server" Text="Supplier" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtSupplier" runat="server" Width="30%" MaxLength="50"></asp:TextBox>
                                                            <asp:Label ID="lblSupplier" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllSupplier" runat="server" Checked="false" Text="Semua Supplier" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdSupplierCR" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Supplier
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lnkSupplierCR" runat="server" Text="Supplier" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtSupplierCR" runat="server" Width="30%" MaxLength="50"></asp:TextBox>
                                                            <asp:Label ID="lblSupplierCR" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllSupplierCR" runat="server" Checked="false" Text="Semua Supplier" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd96" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Status PO
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Status PO
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlStatusPO" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox runat="server" ID="chkAllStatusPO" Text="Semua Status PO" Width="60%" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pd96CR" runat="server" Visible="false">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Status PO
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Status PO
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlStatusPOCR" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox runat="server" ID="chkAllStatusPOCR" Text="Semua Status PO" Width="60%" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdStatusPermintaan" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Status Permintaan
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList runat="server" ID="rbStatusPermintaan">
                                                                <asp:ListItem Value="1" Selected="True" Text="Sudah" />
                                                                <asp:ListItem Value="0" Text="Belum" />
                                                            </asp:RadioButtonList>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdStatusApproval" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Status Approval
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList runat="server" ID="rbStatusApproval">
                                                                <asp:ListItem Value="1" Selected="True" Text="Sudah" />
                                                                <asp:ListItem Value="0" Text="Belum" />
                                                            </asp:RadioButtonList>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdStatusOutstanding" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Status Outstanding
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Status Outstanding
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList runat="server" ID="rbStatusOutstanding">
                                                                <asp:ListItem Value="0" Selected="True" Text="Outstanding" />
                                                                <asp:ListItem Value="1" Text="Semua" />
                                                            </asp:RadioButtonList>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdSelisih" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Selisih
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Selisih
                                                        </td>
                                                        <td width="60%">
                                                            <asp:RadioButtonList runat="server" ID="rbSelisih">
                                                                <asp:ListItem Value="sel" Selected="True" Text="Selisih" />
                                                                <asp:ListItem Value="all" Text="Semua" />
                                                            </asp:RadioButtonList>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                             <!-- pdkontrak : Laporan Kontrak Produsen  -->
                                            <asp:Panel ID="pdkontrak" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="25%">
                                                            <asp:LinkButton ID="lbtnKodeProdusen" runat="server" CausesValidation="False" Text="Kode Produsen"></asp:LinkButton>
                                                        </td>
                                                        <td width="60%">
                                                            <asp:TextBox ID="txtKodeProdusen" runat="server" Width="40%" AutoPostBack="True"
                                                                MaxLength="15"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <asp:LinkButton ID="lbtnNoKontrak" runat="server" CausesValidation="False"
                                                                Text="No Kontrak"></asp:LinkButton>
                                                        </td>
                                                        <td width="65%">
                                                            <asp:TextBox ID="txtNoKontrak" runat="server" Width="40%" MaxLength="15"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                 </table>
                                            </asp:Panel>
                                            <asp:Panel ID="pdTrans" runat="server" Visible="False">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="2" class="rheaderexpable" style="height: 24px;">
                                                            Transaksi
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Transaksi
                                                        </td>
                                                        <td width="60%">
                                                            <asp:DropDownList ID="ddlTrans" runat="server" Width="60%">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:CheckBox ID="chkAllTrans" runat="server" Checked="false" Text="Semua Transaksi" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table width="100%" style="display: none">
                                                <tr>
                                                    <td width="5%">
                                                        <asp:Button ID="btnPreview1" runat="server" Text="Preview"></asp:Button>
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
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
