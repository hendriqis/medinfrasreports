<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="PatientBanner" Src="../../../../../incl/PatientBanner.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reseprd.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanResep.PenjualanObatRD.reseprd" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Penjualan Resep Pasien IGD</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet"/>
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet"/>

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
            oPopup.show(topper, lefter + 20, 550, 250, ttip);
        }
		
		//-->
    </script>

    <script language="javascript">
        function Done() {
            var url = '<%= UrlBase + "/Secure/transaksi/Pelayanan/PenjualanResep/WorkList/default.aspx" %>';
            window.location.href = url;
        }
    </script>

</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="frmResepRd" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table border="0" height="100%" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <Module:PatientBanner ID="PatientBanner" runat="server"></Module:PatientBanner>
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
                                            </a>&nbsp; Penjualan Resep Pasien IGD
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" colspan="2">
                                            <!--#include file="reseprd_hd.incl.aspx" -->
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" colspan="2">
                                            <!--#include file="reseprd_addnewRow.incl.aspx" -->
                                            <!--#include file="reseprd_Grid.incl.aspx" -->
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td align="right" colspan="2">
                                            <table>
                                                <tr class="rbody">
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
                                                        <asp:Label ID="lblJudulTotal" runat="server" Text="Total Penjualan Resep">
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
                                                        Total Nilai Penjualan Resep :
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
                                <table border="0" width="100%" cellspacing="0" cellpadding="1" style="display: none;">
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
                                                    <tr>
                                                        <td width="50%" valign="top">
                                                            <table width="100%">
                                                                <tr valign="top">
                                                                    <td width="80%" id="rbip">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Nota Resep</font>
                                                                            <br />
                                                                            Cetak Nota Resep.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <input type="button" name="btnCetak1" id="btnCetak1" class="sbttn" onmouseover="rbip.style.backgroundColor='#ffd27a'" style="display:none"
                                                                            onmouseout="rbip.style.backgroundColor='MintCream'" value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.CustomReportsFolder %>fm_/bukti/notareseprd.asp?is=' + document.getElementById('txtNoResep').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top">
                                                                    <td id="rc_a" width="20%">
                                                                        <p>
                                                                            <font class="txtstrong">Print Cetak Nota Resep ( Direct )</font>
                                                                            <br />
                                                                            Print Cetak Nota Resep ( Direct ).
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Button ID="PrintCetakNotaResep" onmouseover="rc_a.style.backgroundColor='#ffd27a'"
                                                                            onmouseout="rc_a.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                            CssClass="sbttn"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top">
                                                                    <td width="80%" id="rbis">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Salinan Resep</font>
                                                                            <br />
                                                                            Cetak Salinan Resep.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <input type="button" name="btnCetak2" id="btnCetak2" class="sbttn" onmouseover="rbis.style.backgroundColor='#ffd27a'" style="display:none"
                                                                            onmouseout="rbis.style.backgroundColor='MintCream'" value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.CustomReportsFolder %>fm_/bukti/salinanreseprd.asp?is=' + document.getElementById('txtNoResep').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top">
                                                                    <td width="80%" id="CetakResepDokter1">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Resep Dokter</font>
                                                                            <br />
                                                                            Cetak Resep Dokter.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <input type="button" name="btnCtkResepDokter" id="btnCetakResepDokter" class="sbttn" style="display:none"
                                                                            onmouseover="CetakResepDokter1.style.backgroundColor='#ffd27a'" onmouseout="CetakResepDokter1.style.backgroundColor='MintCream'"
                                                                            value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.CustomReportsFolder %>fm_/bukti/Cetak_Resep_Dokter_RD.asp?is=' + document.getElementById('txtNoResep').value + '&nobukti=' + document.getElementById('txtNoBuktiRd').value + '&nojo=' + document.getElementById('txtNoJO').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top" style="display: none">
                                                                    <td width="50%" id="rbbyr">
                                                                        <p>
                                                                            <font class="txtstrong">Pembayaran Pelayanan Obat</font>
                                                                            <br />
                                                                            Pembayaran Pelayanan Obat.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Button ID="btnBayar" runat="server" onmouseover="rbbyr.style.backgroundColor='#ffd27a'"
                                                                            onmouseout="rbbyr.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                                            CausesValidation="False" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td width="50%" valign="top">
                                                            <table width="100%">
                                                                <tr valign="top">
                                                                    <td width="50%" id="rbObatDalamLuar">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Etiquette Obat Dalam dan Obat Luar</font>
                                                                            <br />
                                                                            Cetak Langsung Etiquette Obat Dalam dan Obat Luar.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top">
                                                                    <td width="50%" id="rbObatDalam">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Etiquette Obat Dalam</font>
                                                                            <br />
                                                                            Cetak Etiquette Obat Dalam.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top">
                                                                    <td width="50%" id="rbObatLuar">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Etiquette Obat Luar</font>
                                                                            <br />
                                                                            Cetak Etiquette Obat Luar.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top">
                                                                    <td width="80%" id="rbup">
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
                                                                </tr>
                                                                <tr valign="top" style="display: none">
                                                                    <td width="80%" id="rl_notapasien">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Nota Resep PASIEN</font>
                                                                            <br />
                                                                            Cetak Nota Resep untuk Pasien.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <input type="button" name="btnrl_notapasien" id="btnrl_notapasien" class="sbttn"
                                                                            onmouseover="rl_notapasien.style.backgroundColor='#ffd27a'" onmouseout="rl_notapasien.style.backgroundColor='MintCream'"
                                                                            value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.ReportsFolder %>fm_/bukti/notareseprdpbd.asp?is=' + document.getElementById('txtNoResep').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top" style="display: none">
                                                                    <td width="80%" id="rl_notainstansi">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Nota Resep INSTANSI</font>
                                                                            <br />
                                                                            Cetak Nota Resep untuk Instansi.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <input type="button" name="btnrl_notainstansi" id="btnrl_notainstansi" class="sbttn"
                                                                            onmouseover="rl_notainstansi.style.backgroundColor='#ffd27a'" onmouseout="rl_notainstansi.style.backgroundColor='MintCream'"
                                                                            value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.ReportsFolder %>fm_/bukti/notareseprdins.asp?is=' + document.getElementById('txtNoResep').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                                    </td>
                                                                </tr>
                                                                <tr valign="top" style="display: none">
                                                                    <td width="80%" id="rbir">
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
                                                            </table>
                                                        </td>
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
    <!-- Begin Side Menu -->
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button runat="server" ID="btnCetakNotaResep" CssClass="sbttn" onmouseover="CetakResepDokter1.style.backgroundColor='#ffd27a'"
                onmouseout="CetakResepDokter1.style.backgroundColor='MintCream'" Text="Go" />
            <div class='qmtitle'>Cetak Nota Resep</div>
            <div class='qmdescription'>Cetak Nota Resep.</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button runat="server" ID="btnCetakSalinanResep" CssClass="sbttn" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go" />
            <div class='qmtitle'>Cetak Salinan Resep</div>
            <div class='qmdescription'>Cetak Salinan Resep.</div>
        </div>
        <div class="rightPanelContent borderBox" style="display: none;">
            <asp:Button runat="server" ID="btnCetakResepDokter" CssClass="sbttn" onmouseover="CetakResepDokter1.style.backgroundColor='#ffd27a'"
                onmouseout="CetakResepDokter1.style.backgroundColor='MintCream'" Text="Go" />
            <div class='qmtitle'>Cetak Resep Dokter</div>
            <div class='qmdescription'>Cetak Resep Dokter.</div>
        </div>
        <div class="rightPanelContent borderBox" style="display: none;">
            <asp:Button runat="server" ID="btnObatDalamLuar" CssClass="sbttn" onmouseover="rbObatDalamLuar.style.backgroundColor='#ffd27a'"
                onmouseout="rbObatDalamLuar.style.backgroundColor='MintCream'" Text="Go" />
            <div class='qmtitle'>Cetak Etiquette</div>
            <div class='qmdescription'>Cetak (Direct) Etiquette Obat Dalam dan Luar.</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button runat="server" ID="btnObatDalam" CssClass="sbttn" onmouseover="rbObatDalam.style.backgroundColor='#ffd27a'"
                onmouseout="rbObatDalam.style.backgroundColor='MintCream'" Text="Go" />
            <div class='qmtitle'>Cetak Etiquette Obat Dalam</div>
            <div class='qmdescription'>Cetak Etiquette Obat Dalam.</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button runat="server" ID="btnObatLuar" CssClass="sbttn" onmouseover="rbObatLuar.style.backgroundColor='#ffd27a'"
                onmouseout="rbObatLuar.style.backgroundColor='MintCream'" Text="Go" />
            <div class='qmtitle'>Cetak Etiquette Obat Luar</div>
            <div class='qmdescription'>Cetak Etiquette Obat Luar.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkNotaResep" Text="Cetak Nota Resep" Selected="True"></asp:ListItem>
            <asp:ListItem Value="ctkSalinanResep" Text="Cetak Salinan Resep"></asp:ListItem>
            <asp:ListItem Value="ctkResep" Text="Cetak Resep"></asp:ListItem>
           <%-- <asp:ListItem Value="ctkObatDalam" Text="Cetak Etiquette Obat Dalam"></asp:ListItem>
            <asp:ListItem Value="ctkObatLuar" Text="Cetak Etiquette Obat Luar"></asp:ListItem>
            <asp:ListItem Value="ctkEtiket" Text="Cetak Etiquette"></asp:ListItem>--%>
        </asp:RadioButtonList>
        <br />
          <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrintEtiket" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbEtiket" CssClass="rdbCetakan" runat="server">
        </asp:RadioButtonList>
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
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
