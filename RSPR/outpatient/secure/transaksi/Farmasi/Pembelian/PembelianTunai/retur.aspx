<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="retur.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.PembelianTunai.retur" %>

<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Retur Pembelian Tunai</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script language="javascript" src="/qislib/scripts/FM_/fm___Dlg_rs-v2.js"></script>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script language="javascript">
        function ShowPosting() {
            if (typeof (Popup) !== 'undefined') {
                /*x = event.clientX + document.body.scrollLeft; */
                var lebar;
                var tinggi;
                tinggi = delpx(Popup.currentStyle.height);
                lebar = delpx(Popup.currentStyle.width);
                var x = (screen.availWidth - lebar) / 2;
                var y = (screen.availHeight - tinggi) / 2;
                /* get the mouse left position */
                /*y = event.clientY + document.body.scrollTop + 10; */
                /* get the mouse top position  */
                Popup.style.display = "block";
                /* display the pop-up */
                Popup.style.left = x;
                /* set the pop-up's left */
                Popup.style.top = y;
                /* set the pop-up's top */
            }
        }	
    </script>

    <script language="javascript">
        //<!--
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

    <style type="text/css">
        .transparent
        {
            filter: alpha(opacity=20);
            background-color: Transparent;
            display: none;
            width: 170;
            height: 100;
            position: absolute;
            color: white; /*border: 1 green solid;*/
        }
    </style>
</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="frmReturPemb" method="post" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table cellspacing="0" cellpadding="2" width="100%" height="100%" border="0">
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
            <td valign="top" width="100%" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Retur Pembelian Tunai
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lBtnNoRetur" Text="No. Retur" runat="server" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoRetur" runat="server" AutoPostBack="true" Width="95%" MaxLength="10" CssClass="txtautogenerate">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggal" runat="server" ReadOnly="true" Width="95%">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodeSupplier" runat="server" Text="Kode Supplier" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                            onmouseout="window.status='';return true;" title="Click here to select from existing data."
                                                                            CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeSupplier" runat="server" AutoPostBack="true" Width="95%"
                                                                            MaxLength="10"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvKodeSupplier" runat="server" Display="dynamic"
                                                                            ErrorMessage="Kode Supplier" ControlToValidate="txtKodeSupplier">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <span id="ttip" style="color: green; cursor: hand;" onclick="richDialog()">
                                                                            <asp:Label ID="lblInformasiSupplier" runat="server" Text="Informasi Supplier: " />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnNoBPB" Text="No. Bukti" runat="server" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoBPB" runat="server" MaxLength="10" Width="95%" AutoPostBack="True">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvNoBPB" runat="server" Display="dynamic" ErrorMessage="No. BPB"
                                                                            ControlToValidate="txtNoBPB">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnGudang" Text="Gudang" runat="server" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeGudang" runat="server" AutoPostBack="True" MaxLength="5"
                                                                            Width="20%">
                                                                        </asp:TextBox>
                                                                        <asp:TextBox ID="txtNamaGudang" runat="server" Width="74%" ReadOnly="True" />
                                                                        <asp:RequiredFieldValidator ID="rfvGudang" runat="server" Display="dynamic" ErrorMessage="Gudang"
                                                                            ControlToValidate="txtNamaGudang">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblLokasi" Text="Lokasi" runat="server">
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="95%" AutoPostBack="True">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator runat="server" ID="rfvLokasi" ControlToValidate="ddlLokasi"
                                                                            ErrorMessage="Lokasi">**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblCatatan" Text="Catatan" runat="server">
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlCatatan" runat="server" Width="95%">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPPn" runat="server" Text="PPN" Enabled="True" AutoPostBack="True">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- Begin Informasi Supplier -->
                                                <div id="oDialog" style="display: none;">
                                                    <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 1px solid #666666;
                                                        filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#2688C5, EndColorStr=#54AEED);
                                                        padding: 10px">
                                                        <table border="0" width="100%" cellspacing="0" cellpadding="1">
                                                            <tr>
                                                                <td valign="middle" style="color: #ffffff">
                                                                    Informasi Supplier
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="rBodyInfo" width="99%" valign="middle" height="100%">
                                                                    <table width="100%" bgcolor="#EDF4FA" id="__infp" style="height: 100%">
                                                                        <tr>
                                                                            <td valign="top" width="50%">
                                                                                <table width="100%">
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Nama :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            :&nbsp;<asp:Label ID="lblNamaSupplier" runat="server" Width="100%" MaxLength="25"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Alamat :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            :&nbsp;<asp:Label ID="lblAlamat" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Kota :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            :&nbsp;<asp:Label ID="lblKota" runat="server" Width="100%" MaxLength="50"></asp:Label>
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
                                                                                            :&nbsp;<asp:Label ID="lblTelepon" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Fax :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            :&nbsp;<asp:Label ID="lblFax" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Kode Pos :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            :&nbsp;<asp:Label ID="lblKodePos" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Contact Person :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            :&nbsp;<asp:Label ID="lblContact" runat="server" Width="100%" MaxLength="50"></asp:Label>
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
                                                <!-- End Informasi Supplier -->
                                                <!-- BEGIN ADDNEW RETUR -->
                                                <!--#include file="retur_AddNewRow.Incl.aspx" -->
                                                <!-- END ADDNEW Penerimaan -->
                                                <!-- START DATAGRID Retur -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <!--#include file="retur_Grid.Incl.aspx" -->
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtweakinfo">
                                                            Tombol Pintas: [ALT+A]=Tambah Data | [Alt+V]=Simpan | [ALT+D]=Close
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID Retur -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td align="right">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotal" runat="server" Text="Jumlah Nilai Retur">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur1" runat="server" Text="Rp" />
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotal" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotalDiskonDT" runat="server" Text="Jumlah Diskon Detil">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur2" runat="server" Text="Rp" />
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotalDiskonDt" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblHdDiskonRp" runat="server" Text="">
                                                            </asp:Label>
                                                            Diskon (<asp:TextBox ID="txtHdDiskonPc" runat="server" AutoPostBack="True" class="right">
                                                            </asp:TextBox>&nbsp;%) &nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur3" runat="server" Text="Rp" />
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="txtHdDiskonRp" runat="server" AutoPostBack="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            Jumlah PPN (<asp:Label ID="lblPPn" runat="server" class="right" />&nbsp;%) &nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur4" runat="server" Text="Rp" />
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="txtPPn" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblMaterai" runat="server" Text="Materai">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur5" runat="server" Text="Rp" />
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="txtMaterai" runat="server" AutoPostBack="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotalAkhir" runat="server" Text="Total Nilai Retur">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur6" runat="server" Text="Rp" />
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotalAkhir" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
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
                                                    <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                    </asp:ValidationSummary>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>                                    
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    <asp:Panel ID="PanelSalinRetur" runat="server">
                        <!--#include file="retur_salinPembelian_Grid.Incl.aspx" -->
                    </asp:Panel>
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <div id="divRightPanelTasksContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnSalinRetur" runat="server" onmouseover="rbis.style.backgroundColor='#ffd27a'"
            onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn"
            CausesValidation="False" />
            <div class='qmtitle'>Salin Pembelian Tunai</div>
            <div class='qmdescription'>Salin Pembelian Tunai untuk Retur Pembelian Barang.</div>
        </div>
    </div>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkReturPTTanpaHarga" Text="Cetak Bukti Retur Pembelian Tunai [Tanpa Harga]" Selected="True"></asp:ListItem>
            <asp:ListItem Value="ctkReturPTDenganHarga" Text="Cetak Bukti Retur Pembelian Tunai [Dengan Harga]" Selected="True"></asp:ListItem>
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

<script language="javascript" src="/qislib/scripts/common/common.js"></script>

<script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

<script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
			End Function			
</script>

<script language="javascript">
    function fokus() {
        try {

            var nobukti;
            nobukti = ditrim(document.getElementById('txtNoRetur').value);
            var kdsupplier;
            kdsupplier = ditrim(document.getElementById('txtKodeSupplier').value);
            var noterima;
            noterima = ditrim(document.getElementById('txtNoBPB').value);
            if (nobukti == '') {
                if (kdsupplier == '') {
                    document.getElementById('lbtnKodeSupplier').focus();
                }
                else {
                    if (noterima == '') {
                        document.getElementById('lbtnNoBPB').focus();
                    }
                    else {
                        document.getElementById('gridRetur__ctl2__btnAddNewRow').focus();
                    }
                }
            }
            else {
                document.getElementById('lBtnNoRetur').focus();
            }

            if (typeof (document.getElementById('Retur_AddNewRow_txtKodeItem')) !== 'undefined') {
                var kdbarang;
                kdbarang = ditrim(document.getElementById('Retur_AddNewRow_txtKodeItem').value);

                if (kdbarang == '') {
                    document.getElementById('lBtnKodeItem').focus();
                    document.getElementById('lBtnKodeItem').select();
                }
                else {
                    document.getElementById('Retur_AddNewRow_txtKuantitas').focus();
                    document.getElementById('Retur_AddNewRow_txtKuantitas').select();
                }
            }
        }
        catch (e) {
        }
    }
		    
</script>

