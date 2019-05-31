<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Penyesuaian.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.Stock.Penyesuaian.Penyesuaian" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Penyesuaian Persediaan</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body onload="ShowPosting();fokus();">
    <form id="frmPenyesuaianRj" runat="server">
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
            <td width="100%" height="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25" colspan="2">
                                            Penyesuaian Persediaan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" colspan="2">
                                            <table width="100%">
                                                <tr>
                                                    <td width="50%">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="30%">
                                                                    <asp:LinkButton ID="lbtnNoAdjust" CausesValidation="False" Text="No. Adjustment"
                                                                        runat="server" />
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:TextBox ID="txtNoAdjust" AutoPostBack="True" runat="server" MaxLength="10" Width="354" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="30%">
                                                                    Tanggal
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:TextBox ID="txtTanggal" ReadOnly="True" runat="server" Width="354" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="50%">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="30%">
                                                                    <asp:LinkButton ID="lbtnGudang" CausesValidation="False" Text="Gudang" runat="server" />
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:TextBox ID="txtKodeGudang" AutoPostBack="True" runat="server" Width="150" />
                                                                    <asp:TextBox ID="txtNamaGudang" ReadOnly="true" runat="server" Width="200" />
                                                                    <asp:RequiredFieldValidator ID="rfvGudang" runat="server" Display="dynamic" ErrorMessage="Gudang"
                                                                        ControlToValidate="txtKodeGudang">** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="30%">
                                                                    Lokasi
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:DropDownList ID="ddlLokasi" runat="server" Width="354" />
                                                                    <asp:RequiredFieldValidator ID="rfvLokasi" runat="server" Display="dynamic" ErrorMessage="Lokasi"
                                                                        ControlToValidate="ddlLokasi">
																						** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td valign="top">
                                            <table width="100%">
                                                <tr>
                                                    <td width="28%">
                                                        <asp:LinkButton ID="lbtnBarang" CausesValidation="False" Text="Item" runat="server"
                                                            Width="100%" />
                                                    </td>
                                                    <td width="50%">
                                                        <asp:TextBox ID="txtKodeBarang" AutoPostBack="True" runat="server" MaxLength="10"
                                                            Width="150" />
                                                        <asp:TextBox ID="txtNamaBarang" ReadOnly="true" runat="server" Width="200" />
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvBarang" runat="server" Display="dynamic" ErrorMessage="Item"
                                                            ControlToValidate="txtKodeBarang">
																			** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Jumlah Penyesuaian
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="lblQtyStOpname" runat="server" Width="150" />
                                                    </td>
                                                    <td>
                                                        <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="lblQtyStOpname"
                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Jumlah Penyesuaian" Display="Dynamic">
																			** Harus diisi dengan angka **
                                                        </asp:CompareValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Satuan
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlSatuan" runat="server" Width="150" />
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvSatuan" runat="server" Display="dynamic" ErrorMessage="Satuan"
                                                            ControlToValidate="ddlSatuan">
																			** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:LinkButton ID="lbtnExpired" Text="Expired" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtExpired" runat="server" Width="150" />
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Keterangan
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlKeterangan" runat="server" Width="354" />
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Catatan
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCatatan" runat="server" Width="354" TextMode ="MultiLine" Rows="5" />
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td valign="top">
                                            <table width="400px" align="center">
                                                <tr>
                                                    <td class="rBodyInfo" height="20" colspan="2">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="100%" class="rfieldgroup">
                                                                    Informasi Stock
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%" bgcolor="MintCream" bgcolor="#b0c7cb">
                                                            <tr>
                                                                <td width="50%">
                                                                    Jumlah Stock Sekarang
                                                                </td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblQtySt" runat="server" align="right" />
                                                                    <asp:Label ID="lblSatSt" runat="server" />
                                                                    <asp:Label ID="lblSatBs" runat="server" Visible="False" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="100%" class="rfieldgroup">
                                                                    Informasi Harga
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%" bgcolor="MintCream" bgcolor="#b0c7cb">
                                                            <tr>
                                                                <td width="50%">
                                                                    Harga Satuan Besar
                                                                </td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblHargaDasarBNow" runat="server" Text="0.00" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="50%">
                                                                    Harga Satuan Kecil
                                                                </td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblHargaDasarNow" runat="server" Text="0.00" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="50%">
                                                                    HNA Satuan Kecil + PPN
                                                                </td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblHargaDasarPPnNow" runat="server" Text="0.00" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="50%">
                                                                    Harga Rata-rata
                                                                </td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblHargaStockNow" runat="server" Text="0.00" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="50%">
                                                                    Harga Pembelian Terakhir
                                                                </td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblHargaAkhir" runat="server" Text="0.00" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
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
                                    <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi.">
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
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakPenyesuaianBarang" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Penyesuaian Barang</div>
            <div class='qmdescription'>Cetak Bukti Penyesuaian Barang.</div>
        </div>
    </div>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkPenyesuaianBarang" Text="Cetak Bukti Penyesuaian Barang" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>--%>
    <!-- End Side Menu -->
    </form>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>

<script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
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

    function fokus() {
        try {

            var nobukti;
            nobukti = ditrim(document.getElementById('txtNoAdjust').value);
            var kdgudang;
            kdgudang = ditrim(document.getElementById('txtKodeGudang').value);
            var kdbarang;
            kdbarang = ditrim(document.getElementById('txtKodeBarang').value);
            if (nobukti == '') {
                if (kdgudang == '') {
                    document.getElementById('lbtnGudang').focus();
                }
                else {
                    if (kdbarang == '') {
                        document.getElementById('lbtnBarang').focus();
                    }
                    else {
                        document.getElementById('lblQtyStOpname').focus();
                        document.getElementById('lblQtyStOpname').select();
                    }
                }
            }
            else {
                document.getElementById('lbtnNoAdjust').focus();
            }

        }
        catch (e) {
        }
    }
		    
</script>

