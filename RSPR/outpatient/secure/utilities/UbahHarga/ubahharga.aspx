<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ubahharga.aspx.vb" Inherits="QIS.Web.secure.utilities.UbahHarga.ubahharga" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Perubahan Harga Item Persediaan</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>

<script language="vbscript">
		Public Function cur(ByVal value)
			cur = replace(FormatCurrency(value),"$","")
		End Function
		Public Function bulat(Byval x)
			bulat = formatnumber(x,2)
		End Function	
		Public Function ilangkoma(ByVal value)
			ilangkoma = replace(value,",","")
		End Function
</script>

<script language="javascript">
    function countbs() {
        var faktor;
        var hkecil;
        var hbesar;

        hkecil = parseFloat(ilangkoma(document.getElementById('txtHargaDasar').value));
        faktor = parseFloat(ilangkoma(document.getElementById('txtFaktor').value));

        hbesar = hkecil * faktor;
        document.getElementById('txtHargaDasarB').value = bulat(hbesar);
    }

    function countkc() {
        var faktor;
        var hkecil;
        var hbesar;

        hbesar = parseFloat(ilangkoma(document.getElementById('txtHargaDasarB').value));
        faktor = parseFloat(ilangkoma(document.getElementById('txtFaktor').value));

        hkecil = hbesar / faktor;
        document.getElementById('txtHargaDasar').value = bulat(hkecil);
    }

    function center() {
        var xcenter = (screen.availWidth - 800) / 2;
        var ycenter = (screen.availHeight - 600) / 2;
        self.resizeTo(800, 600);
        self.moveTo(xcenter, ycenter);
    }			
</script>

<body onload="fokus()">
    <form id="frmPenyesuaianRj" runat="server">
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
                                        <td class="rheadercol" align="left" height="25">
                                            Perubahan Harga Item Persediaan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td>
                                            <table width="100%">
                                                <tr>
                                                    <td width="20%">
                                                        <asp:LinkButton ID="lbtnBarang" CausesValidation="False" Text="Kode Item" runat="server"
                                                            Width="100%" AccessKey="A" />
                                                    </td>
                                                    <td width="30%">
                                                        <asp:TextBox ID="txtKodeBarang" AutoPostBack="True" runat="server" MaxLength="10"
                                                            Width="100%" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblNamaBarang" runat="server" Text="Nama Item" />
                                                        <asp:RequiredFieldValidator ID="rfvBarang" runat="server" Display="dynamic" ErrorMessage="Kode Item"
                                                            ControlToValidate="txtKodeBarang">** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        Harga Rata-rata
                                                    </td>
                                                    <td width="30%">
                                                        <asp:TextBox ID="txtHargaStock" runat="server" ReadOnly="true" Width="100%" />
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        Harga Satuan Kecil
                                                    </td>
                                                    <td width="30%">
                                                        <asp:TextBox ID="txtHargaDasar" runat="server" Width="100%" onkeyup="countbs()" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblSatSt1" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        Harga Satuan Besar
                                                    </td>
                                                    <td width="30%">
                                                        <asp:TextBox ID="txtHargaDasarB" runat="server" Width="100%" onkeyup="countkc()" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblSatBs" runat="server" Visible="True" />,&nbsp;Faktor :&nbsp;
                                                        <asp:TextBox ID="txtFaktor" runat="server" BackColor="Transparent" BorderStyle="None"
                                                            Width="20%" ReadOnly="True" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="20%">
                                                        &nbsp;
                                                    </td>
                                                    <td width="30%">
                                                        <asp:CheckBox ID="chkPPn" runat="server" Text="Termasuk PPN <%# QIS.Common.HisConfiguration.SetVar_PPn %> %" />
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <table width="50%" align="left">
                                                <tr>
                                                    <td class="rBodyInfo" height="20" colspan="2">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="100%" class="rheaderexpable">
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
                                                                    <asp:Label ID="lblQtySt" runat="server" align="right" />&nbsp;
                                                                    <asp:Label ID="lblSatSt" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="100%" class="rheaderexpable">
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

<script language="vbscript">
	Public Function ditrim(ByVal x)
		ditrim = Trim(x)			
	End Function			
</script>

<script language="javascript">
    function fokus() {
        try {
            var kdbarang;
            kdbarang = ditrim(document.getElementById('txtKodeBarang').value);
            //alert(kdbarang);
            if (kdbarang == '') {
                document.getElementById('lbtnBarang').focus();
            }
            else {
                document.getElementById('txtHargaStock').focus();
                document.getElementById('txtHargaStock').select();
            }
        }
        catch (e) {
        }
    }
	
</script>

