<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResepRi2.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanResep.InformasiResepRI.ResepRi2" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Penjualan Resep Pasien Rawat Inap</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

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
            oPopup.show(topper, lefter + 20, 550, 300, ttip);
        }
		
		//-->
    </script>

    <script language="javascript">
        function Done() {
            var url = '<%= UrlBase + "/secure/transaksi/Pelayanan/PenjualanResep/InformasiResepRI/ResepRi_SelReg2.aspx?" %>';
            window.location.href = url;
        }
    </script>

</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="frmResepRI" runat="Server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" /> 
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table border="0" height="100%" width="100%" cellspacing="0" cellpadding="2">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td>
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td width="100%" height="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25" colspan="2">
                                            <a href="javascript:Done();">
                                                <img border="0" src="/qislib/images/back.png" alt="Kembali ke halaman Pilih Pasien"
                                                    align="absmiddle" />
                                            </a>&nbsp; Informasi Penjualan Resep Pasien Rawat Inap
                                        </td>
                                    </tr>
                                    <!-- Header Begin Here -->
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" height="25" colspan="2">
                                            <!--#include file="resepri_hd2.incl.aspx" -->
                                        </td>
                                    </tr>
                                    <!-- Header End Here -->
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" height="25" colspan="2">
                                            <!--#include file="resepri_addnewRow2.incl.aspx" -->
                                            <!--#include file="resepri_GridInf.incl.aspx" -->
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td align="right" colspan="2">
                                            <table>
                                                <tr class="rbody" style="display: none">
                                                    <td align="right">
                                                        <asp:Label ID="lblJudulTotalSelisih" runat="server" Text="Total Selisih">
                                                        </asp:Label>&nbsp;:
                                                    </td>
                                                    <td align="right">
                                                        &nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="lblTotalSelisih" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="rbody">
                                                    <td align="right">
                                                        <asp:Label ID="lblJudulTotal" runat="server" Text="Total Penjualan Obat">
                                                        </asp:Label>&nbsp;:
                                                    </td>
                                                    <td align="right">
                                                        &nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="lblTotal" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="rbody" style="display: none">
                                                    <td align="right">
                                                        Diskon % :
                                                        <asp:TextBox ID="txtHdDiskonPc" runat="server" AutoPostBack="True" class="right">
                                                        </asp:TextBox>&nbsp;&nbsp;&nbsp; Diskon Rp :
                                                    </td>
                                                    <td align="right">
                                                        &nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="txtHdDiskonRp" runat="server" AutoPostBack="True" class="right">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="rbody" style="display: none">
                                                    <td align="right">
                                                        Jumlah PPn (<asp:Label ID="lblKetPPn" runat="server" />%) :
                                                    </td>
                                                    <td align="right">
                                                        &nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="lblPPn" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="rbody" style="display: none">
                                                    <td align="right">
                                                        Total Nilai Penjualan Obat :
                                                    </td>
                                                    <td align="right">
                                                        &nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="lblTotalAftPPn" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
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
                                                <asp:ValidationSummary ID="ValidationSummary" runat="server" ShowSummary="True" DisplayMode="BulletList"
                                                    HeaderText="The following error were found."></asp:ValidationSummary>
                                            </p>
                                        </td>
                                    </tr>
                                </table>
                                <!-- Begin Related Links -->
                                <table border="0" width="100%" cellspacing="0" cellpadding="1" style="display:none">
                                    <tr>
                                        <td class="rBodyInfo" width="99%" valign="top">
                                            <table width="100%">
                                                <tr class="rheaderexpable">
                                                    <td align="left" height="10" valign="middle">
                                                        <img style="cursor: hand" onclick="javascript:if (RelatedLinkDiv.style.display == '') {RelatedLinkDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { RelatedLinkDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                            alt="Collapse/Expand" src="/qislib/images/collapse.png" align="absmiddle">
                                                        Quick Menu:
                                                    </td>
                                                </tr>
                                            </table>
                                            <div id="RelatedLinkDiv" style="overflow: auto; width: 100%;">
                                                <table width="100%" bgcolor="MintCream" cellspacing="10" cellpadding="0">
                                                    <tr valign="top" style="display: none">
                                                        <td width="50%" id="rbir">
                                                            <p>
                                                                <font class="txtstrong">Rekalkulasi Obat</font>
                                                                <br />
                                                                Proses Rekalkulasi Obat bila ada perubahan pada informasi pasien.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button runat="server" ID="btnReCalculate" class="sbttn" onmouseover="rbir.style.backgroundColor='#ffd27a'"
                                                                onmouseout="rbir.style.backgroundColor='MintCream'" Text="Go..." />
                                                        </td>
                                                    </tr>
                                                    <tr valign="top">
                                                        <td width="50%" id="rbip">
                                                            <p>
                                                                <font class="txtstrong">Cetak Nota Resep</font>
                                                                <br />
                                                                Cetak Nota Resep.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <input type="button" name="btnCetak1" id="btnCetak1" class="sbttn" onmouseover="rbip.style.backgroundColor='#ffd27a'" style="display:none"
                                                                onmouseout="rbip.style.backgroundColor='MintCream'" value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.CustomReportsFolder %>fm_/Bukti/NotaResepRI.asp?is=' + document.getElementById('txtNoResep').value + '&nf=' + document.getElementById('txtNoBuktiResep').value + '&snama=' + document.getElementById('lbtnNamaPasien').innerHTML + '&stgllahir=' + document.getElementById('lbtnTglLahir').innerHTML + '&skdseks=' + document.getElementById('lblJenisKelamin').innerHTML + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                            <asp:Button ID="btnCetakNotaResep" runat="server" class="sbttn" CausesValidation="False"
                                                                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                                                                Text="Go..." />
                                                        </td>
                                                    </tr>
                                                    <tr valign="top">
                                                        <td width="50%" id="rbis">
                                                            <p>
                                                                <font class="txtstrong">Cetak Salinan Resep</font>
                                                                <br />
                                                                Cetak Salinan Resep.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <input type="button" name="btnCetak2" id="btnCetak2" class="sbttn" onmouseover="rbis.style.backgroundColor='#ffd27a'" style="display:none"
                                                                onmouseout="rbis.style.backgroundColor='MintCream'" value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.CustomReportsFolder %>fm_/Bukti/SalinanResepRI.asp?is=' + document.getElementById('txtNoResep').value + '&nf=' + document.getElementById('txtNoBuktiResep').value + '&snama=' + document.getElementById('lbtnNamaPasien').innerHTML + '&stgllahir=' + document.getElementById('lbtnTglLahir').innerHTML + '&skdseks=' + document.getElementById('lblJenisKelamin').innerHTML + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                            <asp:Button runat="server" ID="btnCetakSalinanResep" CssClass="sbttn" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                                                                onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go..." />
                                                        </td>
                                                    </tr>
                                                    <tr valign="top" style="display: none">
                                                        <td width="50%" id="rbup">
                                                            <p>
                                                                <font class="txtstrong">Batal Approval Resep</font>
                                                                <br />
                                                                Batal Approval transaksi resep; data bisa dibatalkan bila belum ada pembayaran atau
                                                                tidak ada transaksi retur.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnUnposting" onmouseover="rbup.style.backgroundColor='#ffd27a'"
                                                                onmouseout="rbup.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                CssClass="sbttn" CausesValidation="False"></asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr valign="top" style="display: none">
                                                        <td width="50%" id="rbbyr">
                                                            <p>
                                                                <font class="txtstrong">Pembayaran Penjualan Obat</font>
                                                                <br />
                                                                Pembayaran Penjualan Obat.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnBayar" runat="server" onmouseover="rbbyr.style.backgroundColor='#ffd27a'"
                                                                onmouseout="rbbyr.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                                CausesValidation="False" />
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <!-- End Related Links -->
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td valign="bottom" style="padding-left: 20px">
                <!-- BEGIN PAGE FOOTER-->
                <Module:Copyright ID="mdlCopyRight" runat="server" pathprefix=".."></Module:Copyright>
                <!-- END PAGE FOOTER-->
            </td>
        </tr>
    </table>

    <div id="divRightPanelPrintContent">
         <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
         </div>
         <asp:RadioButtonList ID="rdbCetakan" class="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkNotaResep" Text="Cetak Nota Resep" Selected="True" ></asp:ListItem>
            <asp:ListItem Value="ctkSalinanResep" Text="Cetak Salinan Resep"></asp:ListItem>
         </asp:RadioButtonList>
    </div>
    </form>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

    <script language="vbscript">
		Public Function ditrim(ByVal x)
			ditrim = Trim(x)			
		End Function		
		Public Function bulat(Byval x)
			bulat = formatnumber(x,2)
		End Function	
    </script>

    <script language="javascript">
        function hitunghasiljs() {
            try {
                var kadar = parseFloat(document.getElementById('lblKadar').innerHTML);
                var potong = parseFloat(document.getElementById('lblPotong').innerHTML);
                var satuan = document.getElementById('AddNewRow_rbtnSatuan').checked;
                //var jumlah = parseFloat(document.getElementById('AddNewRow_txtJumlahObat').value);
                var jumlahR = parseFloat(document.getElementById('AddNewRow_txtJumlahR').value);
                var hasil;

                var nilai;
                nilai = ditrim(document.getElementById('AddNewRow_txtJumlahObat').value)

                var pos = nilai.indexOf(' ');
                var panjang = nilai.length

                if (pos != -1) // Tidak ketemu ' '
                {
                    var ln1 = nilai.substring(0, pos);
                    var ln2 = nilai.substring(pos, panjang);
                    var lnhasil = eval(ln1) + eval(ln2);
                }
                else {
                    var ln1 = nilai;
                    var lnhasil = eval(ln1);
                }
                //var jumlah = bulat(lnhasil);
                var jumlah = lnhasil;

                if (jumlahR == 0) {
                    jumlahR = 1;
                }

                if (satuan == true) {
                    if (potong == 2) {
                        hasil = (jumlah * jumlahR);
                    }
                    else {
                        if ((parseInt(jumlah * jumlahR)) == (jumlah * jumlahR)) {
                            hasil = jumlah * jumlahR;
                        }
                        else
                            hasil = parseInt(jumlah * jumlahR) + 1;
                    }
                }
                else {
                    //alert(potong);
                    if (potong == 2) {
                        hasil = (jumlah * jumlahR / kadar);
                    }
                    else {
                        if ((parseInt(jumlah * jumlahR / kadar)) == (jumlah * jumlahR / kadar)) {
                            hasil = jumlah * jumlahR / kadar;
                        }
                        else
                            hasil = parseInt(jumlah * jumlahR / kadar) + 1;
                    }
                }

                document.getElementById('AddNewRow_Hasil').value = bulat(hasil);
                if (parseFloat(document.getElementById('AddNewRow_txtJumlahR').value) == 0) {
                    document.getElementById('AddNewRow_txtQtyDitagih').value = bulat(hasil);
                }
                else {
                    document.getElementById('AddNewRow_txtQtyDitagih').value = bulat(jumlahR);
                }

            }
            catch (e) {
                alert('Cek Kembali qty satuan anda');
                document.getElementById('AddNewRow_txtJumlahObat').focus();
                document.getElementById('AddNewRow_txtJumlahObat').select();
            }

            //alert(satuan);
            //alert(kadar);
        }
        function fokus() {
            try {
                var kdbarang;
                kdbarang = document.getElementById('AddNewRow_txtKodeBarang').value;
                kdbarang = ditrim(kdbarang);
                if (kdbarang == '') {
                    document.getElementById('lbtnKodeBarang').focus();
                    document.getElementById('lbtnKodeBarang').select();
                }
                else {
                    document.getElementById('AddNewRow_txtJumlahObat').focus();
                    document.getElementById('AddNewRow_txtJumlahObat').select();
                }
            }
            catch (e) {
            }
        }
    </script>

</body>
</html>
