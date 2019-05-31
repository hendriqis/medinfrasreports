<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="notaKredit.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.NotaKredit.notaKredit" %>

<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Nota Kredit</title>
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

</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus()">
    <form id="frmNotaKreditRj" runat="server">
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
                        <asp:Panel ID="pnlHeader" runat="server">
                            <tr>
                                <td align="left">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Nota Kredit
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="25%">
                                                            <asp:LinkButton ID="lbtnNoNota" CausesValidation="False" Text="No. Nota" runat="server" />
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtNoNota" AutoPostBack="True" runat="server" MaxLength="10" Width="100%" CssClass="txtautogenerate"/>
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            No. Tukar Faktur
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtNoTF" runat="server" ReadOnly="True" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Tanggal
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <Module:webcal ID="cal" runat="server"></Module:webcal>
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <asp:LinkButton ID="lbtnSupplier" CausesValidation="False" Text="Supplier" runat="server" />
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtKodeSupplier" AutoPostBack="True" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="rfvSupplier" runat="server" Display="dynamic" ErrorMessage="Supplier"
                                                                ControlToValidate="txtKodeSupplier">** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            &nbsp;
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <span id="ttip" style="color: green; cursor: hand;" onclick="richDialog()">
                                                                <asp:Label ID="lblInformasiSupplier" runat="server" Text="Informasi Supplier : " />
                                                            </span>
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
                                                        <td width="25%">
                                                            <asp:LinkButton ID="lbtnNoRetur" CausesValidation="True" Text="No. Retur" runat="server"
                                                                Width="100%" />
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtNoRetur" AutoPostBack="True" runat="server" MaxLength="10" Width="100%" />
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkppn" runat="server" Text="PPN" Enabled="TRUE" AutoPostBack="true" />
                                                            <asp:Label ID="lblppn" runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            No. BPB / No. Faktur
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtNoBPB" ReadOnly="True" runat="server" Width="45%" />
                                                            &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;
                                                            <asp:TextBox ID="txtNoKirim" ReadOnly="True" runat="server" Width="45%" />
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Jumlah Transaksi Retur
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:Label ID="lblJmlRetur" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Jumlah PPN Retur
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:Label ID="lblJmlPPn" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Jumlah retur yang belum diganti
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:Label ID="lblBlmDiganti" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Jumlah PPN yang belum diganti
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:Label ID="lblPPnBlmDiganti" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Nilai
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtNilai" runat="server" Width="100%" AutoPostBack />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            PPN Nilai
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtPPnNilai" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Catatan
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:TextBox ID="txtCatatan" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            Keterangan
                                                        </td>
                                                        <td width="5%">
                                                            &nbsp;:&nbsp;
                                                        </td>
                                                        <td width="30%">
                                                            <asp:DropDownList ID="ddlKeterangan" runat="server" Width="100%" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>                                    
                                </td>
                            </tr>
                        </asp:Panel>

                        <script src='/qislib/scripts/common/common.js' language="javascript"></script>

                        <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

                        <asp:Panel ID="pnlGrid" runat="server">
                            <!--#Include File="notaCredit_UbahStatusGrid.incl.aspx"-->

                            <script src='/qislib/scripts/common/util.js' language="javascript"></script>

                        </asp:Panel>
                    </table>
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
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <div id="divRightPanelTasksContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnUbah" runat="server" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn"
                CausesValidation="True" />
            <div class='qmtitle'>Edit Status Retur Pembelian</div>
            <div class='qmdescription'>Edit Status Retur Pembelian.</div>
        </div>
    </div>
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakNotaKredit" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Nota Kredit</div>
            <div class='qmdescription'>Cetak Nota Kredit.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkNotaKredit" Text="Cetak Nota Kredit" Selected="True"></asp:ListItem>
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

<script language="vbscript">
	Public Function ditrim(ByVal x)
		ditrim = Trim(x)			
	End Function			
</script>

<script language="javascript">
    function fokus() {
        try {

            var nobukti;
            nobukti = ditrim(document.getElementById('txtNoNota').value);
            var kdsupplier;
            kdsupplier = ditrim(document.getElementById('txtKodeSupplier').value);
            if (nobukti == '') {
                if (kdsupplier == '') {
                    document.getElementById('lbtnSupplier').focus();
                }
            }
            else {
                document.getElementById('lbtnNoNota').focus();
            }

            //if (typeof(document.getElementById('Pemesanan_AddNewRow_txtKodeItem'))!=='undefined')
            //	{
            //	var kdbarang;
            //	kdbarang = ditrim(document.getElementById('Pemesanan_AddNewRow_txtKodeItem').value);    
            //		
            //	if (kdbarang == '')
            //		{
            //		document.getElementById('lBtnKodeItem').focus();            		
            //		document.getElementById('lBtnKodeItem').select();
            //		}
            //	else
            //		{
            //		document.getElementById('Pemesanan_AddNewRow_txtKuantitas').focus();
            //		document.getElementById('Pemesanan_AddNewRow_txtKuantitas').select();
            //		}
            //	}
        }
        catch (e) {
            //alert(e);
        }
    }
	
</script>

