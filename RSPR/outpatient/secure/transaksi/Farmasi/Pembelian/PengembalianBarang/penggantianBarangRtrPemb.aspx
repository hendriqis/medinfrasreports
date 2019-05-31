<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="penggantianBarangRtrPemb.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.PengembalianBarang.penggantianBarangRtrPemb" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Penggantian Retur Pembelian</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <script language="javascript">
		<!--

        var oPopup = window.createPopup();

        function richDialog() {
            var lefter = event.offsetY + 0;
            var topper = event.offsetX + 15;
            oPopup.document.createStyleSheet('/qislib/css/styles.css')
            oPopup.document.body.innerHTML = oDialog.innerHTML;
            // x,y,w,h
            oPopup.show(topper, lefter + 20, 550, 200, ttip);
        }
		
		//-->
    </script>

    <script language="JavaScript">
        function konfirmasi() {
            //alert('test');
            if (!confirm('Anda yakin akan salin retur ini ?')) return false;
            return true
        }
    </script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

</head>
<body ms_positioning="GridLayout" onload="ShowPosting()">
    <form id="frmPenggantianRetur" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
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
                                            Penggantian Retur Pembelian
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" height="25">
                                            <table width="100%">
                                                <tr>
                                                    <td width="20%">
                                                        <asp:LinkButton ID="lbtnNoBukti" runat="server" Text="No. Bukti" CausesValidation="False"></asp:LinkButton>
                                                    </td>
                                                    <td width="40%">
                                                        <asp:TextBox ID="txtNoBukti" runat="server" Width="100%" MaxLength="10" AutoPostBack="True" CssClass="txtautogenerate"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        Tanggal
                                                    </td>
                                                    <td width="40%">
                                                        <asp:TextBox ID="txtTanggal" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        <asp:Label ID="lbtnGudang" runat="server" Text="Kode Gudang" Width="100%">
                                                        </asp:Label>
                                                    </td>
                                                    <td width="40%">
                                                        <asp:TextBox ID="txtKodeGudang" runat="server" Width="100%" MaxLength="5" AutoPostBack="True"
                                                            ReadOnly="True">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvGudang" runat="server" ControlToValidate="txtKodeGudang"
                                                            ErrorMessage="Kode Gudang" Display="dynamic">** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        Lokasi
                                                    </td>
                                                    <td width="40%">
                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="100%" Enabled="False">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvLokasi" runat="server" ControlToValidate="ddlLokasi"
                                                            ErrorMessage="Lokasi" Display="dynamic">** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        <asp:LinkButton ID="lbtnSupplier" runat="server" Text="Supplier" CausesValidation="False"></asp:LinkButton>
                                                    </td>
                                                    <td width="40%">
                                                        <asp:TextBox ID="txtKodeSupplier" runat="server" Width="100%" AutoPostBack="True"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvSupplier" runat="server" ControlToValidate="txtKodeSupplier"
                                                            ErrorMessage="Supplier" Display="dynamic">** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        &nbsp;
                                                    </td>
                                                    <td width="40%">
                                                        <span id="ttip" style="cursor: hand; color: green" onclick="richDialog()">
                                                            <asp:Label ID="lblInformasiSupplier" Text="Informasi Supplier : " runat="server"></asp:Label></span>
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <!-- Begin Informasi Supplier -->
                                                        <div id="oDialog" style="display: none">
                                                            <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 1px solid #666666;
                                                                filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#2688C5, EndColorStr=#54AEED);
                                                                padding: 10px">
                                                                <table cellspacing="0" cellpadding="1" width="100%" border="0">
                                                                    <tr>
                                                                        <td valign="middle" style="color: #ffffff">
                                                                            Informasi Supplier
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyInfo" valign="middle" width="99%" height="100%">
                                                                            <table width="100%" bgcolor="#EDF4FA" id="__infp" style="height: 100%">
                                                                                <tr>
                                                                                    <td valign="top" width="50%">
                                                                                        <table width="100%">
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Nama :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblNamaSupplier" runat="server" MaxLength="25" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Alamat :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblAlamat" runat="server" MaxLength="50" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Kota :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblKota" runat="server" MaxLength="50" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Nilai Minimum Pemesanan :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblNilaiMinimumPemesanan" runat="server" MaxLength="50" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                    <td valign="top" width="50%">
                                                                                        <table width="100%">
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Telepon :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblTelepon" runat="server" MaxLength="50" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Fax :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblFax" runat="server" MaxLength="50" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Kode Pos :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblKodePos" runat="server" MaxLength="50" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                                    Contact Person :
                                                                                                </td>
                                                                                                <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                                    <asp:Label ID="lblContact" runat="server" MaxLength="50" Width="100%" />
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
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        <asp:LinkButton ID="lbtnNoRetur" runat="server" Text="No. Retur" CausesValidation="False"
                                                            Width="100%"></asp:LinkButton>
                                                    </td>
                                                    <td width="40%">
                                                        <asp:TextBox ID="txtNoRetur" runat="server" Width="100%" MaxLength="10" AutoPostBack="True"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvNoRetur" runat="server" ControlToValidate="txtNoRetur"
                                                            ErrorMessage="No. Retur" Display="dynamic">** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        Catatan
                                                    </td>
                                                    <td width="40%">
                                                        <asp:TextBox ID="txtCatatan" runat="server" Width="100%">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="chkPosting" runat="server" Visible="False" Enabled="False" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table width="100%">
                                                <tr>
                                                    <td width="50%">
                                                        <table width="100%" style="background-color: Mintcream; border-width: thin; border-style: solid;
                                                            border-color: #ffd27a;">
                                                            <tr>
                                                                <td class="rheaderexpable" width="100%" colspan="4" align="center">
                                                                    Barang yang Diretur
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    <asp:LinkButton ID="lbtnBarangRetur" runat="server" Text="Kode Item" CausesValidation="False" />
                                                                    <asp:TextBox ID="txtCounter" runat="server" ReadOnly="false" Style="display: none"
                                                                        AutoPostBack="True" />
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:TextBox ID="txtKodeBarang" runat="server" CausesValidation="False" ReadOnly="True"
                                                                        Width="100%" />
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblNamaBarang" runat="server" />
                                                                    <asp:RequiredFieldValidator ID="rfvBarang" runat="server" ControlToValidate="txtKodeBarang"
                                                                        ErrorMessage="Kode Item Retur" Display="dynamic">** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Jumlah
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:TextBox ID="txtQtyRetur" runat="server" ReadOnly="False" Width="100%" style="text-align: right;" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rfvqtyRetur" runat="server" ControlToValidate="txtqtyRetur"
                                                                        ErrorMessage="Qty Barang Retur" Display="dynamic">** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Satuan
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:DropDownList ID="ddlSatuanRetur" runat="server" CausesValidation="False" Enabled="False"
                                                                        Width="100%" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rfvSatuanRetur" runat="server" ControlToValidate="ddlSatuanRetur"
                                                                        ErrorMessage="Satuan Barang Retur" Display="dynamic">** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Faktor
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:TextBox ID="txtFaktor" runat="server" ReadOnly="True" Width="100%" style="text-align: right;" />
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="50%">
                                                        <table width="100%" style="background-color: Mintcream; border-width: thin; border-style: solid;
                                                            border-color: #ffd27a;">
                                                            <tr>
                                                                <td class="rheaderexpable" width="100%" colspan="4" align="center">
                                                                    Barang Pengganti
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    <asp:LinkButton ID="lbtnBarangRetur2" runat="server" Text="Kode Item" CausesValidation="False" />
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:TextBox ID="txtKodeBarang2" runat="server" CausesValidation="False" Width="100%" />
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblNamaBarang2" runat="server" />
                                                                    <asp:RequiredFieldValidator ID="rfvBarang2" runat="server" ControlToValidate="txtKodeBarang2"
                                                                        ErrorMessage="Kode Item Retur" Display="dynamic">** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Jumlah
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:TextBox ID="txtQtyRetur2" runat="server" Width="100%" style="text-align: right;" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rfvqtyRetur2" runat="server" ControlToValidate="txtqtyRetur2"
                                                                        ErrorMessage="Qty Barang Retur" Display="dynamic">** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Satuan
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:DropDownList ID="ddlSatuanRetur2" runat="server" CausesValidation="False" Width="100%"
                                                                        AutoPostBack="True" />
                                                                </td>
                                                                <td>
                                                                    <asp:RequiredFieldValidator ID="rfvSatuanRetur2" runat="server" ControlToValidate="ddlSatuanRetur2"
                                                                        ErrorMessage="Satuan Barang Retur" Display="dynamic">** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Faktor
                                                                </td>
                                                                <td width="20%">
                                                                    <asp:TextBox ID="txtFaktor2" runat="server" Width="100%" ReadOnly="True" style="text-align: right;" />
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
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
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakPenggantianRetur" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Pengembalian Barang</div>
            <div class='qmdescription'>Cetak Bukti Pengembalian Barang atas Retur Pembelian.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkPenggantianRetur" Text="Cetak Bukti Pengembalian Barang" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>
</body>
</html>
