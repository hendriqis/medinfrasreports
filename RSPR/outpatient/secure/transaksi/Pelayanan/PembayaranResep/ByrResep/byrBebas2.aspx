<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="byrBebas2.aspx.vb" Inherits="QIS.Web.byrBebas2" %>

<%@ Import Namespace="QIS.Web" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Pembayaran Obat</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
    <script src='/qislib/scripts/jquery-1.7.1.js' language="javascript"></script>
    <script src='/qislib/scripts/fm_/jquery-1.7.1.min.js' language="javascript"></script>
    <style type="text/css">
        .transparent
        {
            display: none;
            filter: alpha(opacity=20);
            width: 170px;
            color: white;
            position: absolute;
            height: 100px;
            background-color: transparent;
        }
    </style>
    <script language="JavaScript">
        function currencyFormat(fld, milSep, decSep, e) {
            var sep = 0;
            var key = '';
            var i = j = 0;
            var len = len2 = 0;
            var strCheck = '0123456789';
            var aux = aux2 = '';
            var whichCode = (window.Event) ? e.which : e.keyCode;
            if (whichCode == 13) return true;  // Enter
            key = String.fromCharCode(whichCode);  // Get key value from key code
            if (strCheck.indexOf(key) == -1) return false;  // Not a valid key
            len = fld.value.length;
            for (i = 0; i < len; i++)
                if ((fld.value.charAt(i) != '0') && (fld.value.charAt(i) != decSep)) break;
            aux = '';

            for (; i < len; i++)
                if (strCheck.indexOf(fld.value.charAt(i)) != -1) aux += fld.value.charAt(i);
            aux += key;
            len = aux.length;
            //if (len == 0) fld.value = '';
            //if (len == 1) fld.value = '0'+ decSep + '0' + aux;
            //if (len == 2) fld.value = '0'+ decSep + aux;
            //if (len > 2) {
            aux2 = '';
            //for (j = 0, i = len - 3; i >= 0; i--) {
            for (j = 0, i = len - 1; i >= 0; i--) {
                if (j == 3) {
                    aux2 += milSep;
                    j = 0;
                }
                aux2 += aux.charAt(i);
                j++;
            }
            fld.value = '';
            len2 = aux2.length;
            for (i = len2 - 1; i >= 0; i--)
                fld.value += aux2.charAt(i);
            //fld.value += decSep + aux.substr(len - 2, len);
            //}
            return false;
        }			
    </script>
    <script language="javascript">
        function hitungFeeKartu() {
            if (document.getElementById('txtTotalBayarKartu1').value > 0) {
                document.getElementById('txtFeeKartu1').value = cur(getPersenFeeKartu(document.getElementById('txtTotalBayarKartu4').value, document.getElementById('listBank1').value, document.getElementById('listJenisKartu1').value));
            }

            if (document.getElementById('txtTotalBayarKartu2').value > 0) {
                document.getElementById('txtFeeKartu2').value = cur(getPersenFeeKartu(document.getElementById('txtTotalBayarKartu2').value, document.getElementById('listBank2').value, document.getElementById('listJenisKartu2').value));
            }

            if (document.getElementById('txtTotalBayarKartu3').value > 0) {
                document.getElementById('txtFeeKartu3').value = cur(getPersenFeeKartu(document.getElementById('txtTotalBayarKartu3').value, document.getElementById('listBank3').value, document.getElementById('listJenisKartu3').value));
            }

            if (document.getElementById('txtTotalBayarKartu4').value > 0) {
                document.getElementById('txtFeeKartu4').value = cur(getPersenFeeKartu(document.getElementById('txtTotalBayarKartu4').value, document.getElementById('listBank4').value, ''));
            }
        }

        function getPersenFeeKartu(totalbayar, kdbank, tpkartu) {
            var kddebitbca = QIS.Common.SetVar.GetValue('kddebitbca', 'RS_');

            if (Len(tpkartu) = 0) {
                tpkartu = kddebitbca;
            }

            var retVal = totalbayar * (QIS.BussinessRules.MTX.Bank.GetFeeKartu(kdbank, tpkartu));

            return retVal;
        }

        function updateTotal(CurrentControlId, ControlTotalId, ControlToSetId) {
            //document.getElementById(ControlToSetId).value = document.getElementById(ControlTotalId).value - document.getElementById(CurrentControlId).value
            //document.getElementById(ControlToSetId).value = ControlToSetId;
        }					
    </script>
</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();hitungKembalianOK();">
    <form id="frmBayarBbs" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlBatal" runat="server">
        <div class="transparent" id="Popup">
            <div>
                <font color="red" size="72">BATAL</font>
            </div>
        </div>
    </asp:Panel>
    <table border="0" width="100%" height="100%" cellspacing="2" cellpadding="1">
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
                                <asp:Panel ID="pnlData" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Penerimaan Pembayaran Resep Pasien Luar dan Obat Bebas
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" style="width: 50%;">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td colspan="3" class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        INFORMASI PEMBAYARAN
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="25%">
                                                                        <asp:LinkButton ID="lBtnNoBayar" runat="server" Text="No. Bayar"></asp:LinkButton>
                                                                    </td>
                                                                    <td width="60%">
                                                                        <asp:TextBox ID="txtNobayar" runat="server" AutoPostBack="True" Width="200px" CssClass="txtautogenerate"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggal" runat="server" ReadOnly="true" Width="200px" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Jam / Shift
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlShift" AutoPostBack="False" runat="server" Width="98px"
                                                                            Enabled="False">
                                                                        </asp:DropDownList>
                                                                        <asp:TextBox ID="txtJam" runat="server" ReadOnly="true" Width="98px" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:LinkButton ID="lBtnNoResep" runat="server" Text="No. Resep"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoResep" runat="server" AutoPostBack="True" Width="200px"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtJnResep" runat="server" Visible="false"></asp:TextBox>
                                                                        <asp:TextBox ID="txtTipePasien" runat="server" Visible="false"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Nama
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNama" runat="server" Width="350px" ReadOnly="true" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:LinkButton ID="lbtnKdPerusahaan" runat="server" Text="Perusahaan" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKdPerusahaan" runat="server" AutoPostBack="True" Width="350px"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblNmPerusahaan" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <asp:CheckBox ID="chkPiutang" runat="server" Text="Piutang" AutoPostBack="True">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                                <asp:Panel ID="pnlTunai" runat="server">
                                                                    <!--CARA PEMBAYARAN: CASH,CREDIT CARD,DEBIT CARD -->
                                                                    <tr>
                                                                        <td colspan="3" class="rheaderexpable" style="text-align: center; height: 24px;">
                                                                            CARA PEMBAYARAN
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td valign="top" width="20%">
                                                                            <table width="100%" cellspacing="1">
                                                                                <tr class="rfieldgroup">
                                                                                    <td style="width: 26px;">
                                                                                        <img style="cursor: hand" onclick="javascript:if (cashDiv.style.display == '') {cashDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { cashDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                                                            alt="Collapse/Expand" src="/qislib/images/collapse.png" align="absmiddle">
                                                                                    </td>
                                                                                    <td style="padding-left: 5;">
                                                                                        Cash
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <div id="cashDiv">
                                                                                <table width="100%">
                                                                                    <tr>
                                                                                        <td width="30%">
                                                                                            Uang Diterima [Rp]
                                                                                        </td>
                                                                                        <td width="70%">
                                                                                            <asp:TextBox ID="txtTotalPembayaranCash" onblur="hitungKembalianOK(this);FormatCurrency(this);"
                                                                                                onfocus="javascript:this.select();" runat="server" Text="0" AutoPostBack="False"
                                                                                                Width="200px" Style="text-align: right;"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%">
                                                                                            Uang Kembalian [Rp]
                                                                                        </td>
                                                                                        <td width="70%">
                                                                                            <asp:TextBox onkeypress="return(currencyFormat(this,',','.',event))" ID="txtTotalKembalian"
                                                                                                runat="server" Text="0" Width="200px" ReadOnly="true" Style="text-align: right;"
                                                                                                CssClass="txtsummary"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td valign="top" width="20%">
                                                                            <table width="100%" cellspacing="1">
                                                                                <tr class="rfieldgroup">
                                                                                    <td style="width: 26px;">
                                                                                        <img style="cursor: hand" onclick="javascript:if (creditCardDiv.style.display == '') {creditCardDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { creditCardDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                                                            alt="Collapse/Expand" src="/qislib/images/expand.png" align="absmiddle">
                                                                                    </td>
                                                                                    <td style="padding-left: 5;">
                                                                                        Credit Card
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Panel ID="panelPembayaranKartu" runat="server">
                                                                                <asp:Panel ID="creditCardDiv" Style="display: none" runat="server">
                                                                                    <!-- KARTU PERTAMA -->
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Kartu 1
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:DropDownList ID="listJenisKartu1" onchange="calcCC('1')" runat="server" AutoPostBack="False"
                                                                                                    Width="200px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Mesin EDC
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:DropDownList ID="listBank1" runat="server" AutoPostBack="False" Width="200px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Nomor Kartu
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtNomorKartu1" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Tgl. Kartu
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTglKartu1" runat="server" AutoPostBack="false" Width="200px"
                                                                                                    MaxLength="10"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Pembayaran [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTotalBayarKartu1" onblur="hitungKembalianOK(this);FormatCurrency(this);"
                                                                                                    onfocus="javascript:this.select();" runat="server" Text="0" AutoPostBack="False"
                                                                                                    Width="200px" MaxLength="20" Style="text-align: right;"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Fee Kartu [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtFeeKartu1" runat="server" Text="0" Width="200px" MaxLength="20"
                                                                                                    ReadOnly="True" Style="text-align: right;" CssClass="txtsummary"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr class="rheader">
                                                                                            <td align="left" width="100%" bgcolor="gainsboro" colspan="2" height="2">
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    <!-- KARTU KEDUA -->
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Kartu 2
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:DropDownList ID="listJenisKartu2" onchange="calcCC('2')" runat="server" AutoPostBack="False"
                                                                                                    Width="200px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Mesin EDC
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:DropDownList ID="listBank2" runat="server" AutoPostBack="False" Width="200px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Nomor Kartu
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtNomorKartu2" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Tgl. Kartu
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTglKartu2" runat="server" AutoPostBack="false" Width="200px"
                                                                                                    MaxLength="10"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Pembayaran [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTotalBayarKartu2" onblur="hitungKembalianOK(this);FormatCurrency(this);"
                                                                                                    onfocus="javascript:this.select();" runat="server" Text="0" AutoPostBack="False"
                                                                                                    Width="200px" MaxLength="20" Style="text-align: right;"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Fee Kartu [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtFeeKartu2" runat="server" Text="0" Width="200px" MaxLength="20"
                                                                                                    ReadOnly="True" Style="text-align: right;" CssClass="txtsummary"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="left" width="100%" bgcolor="gainsboro" colspan="2" height="2">
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    <!-- KARTU KETIGA -->
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Kartu 3
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:DropDownList ID="listJenisKartu3" onchange="calcCC('3')" runat="server" AutoPostBack="False"
                                                                                                    Width="200px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Mesin EDC
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:DropDownList ID="listBank3" runat="server" AutoPostBack="False" Width="200px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Nomor Kartu
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtNomorKartu3" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Tgl. Kartu
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTglKartu3" runat="server" AutoPostBack="false" Width="200px"
                                                                                                    MaxLength="10"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Pembayaran [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTotalBayarKartu3" onblur="hitungKembalianOK(this);FormatCurrency(this);"
                                                                                                    onfocus="javascript:this.select();" runat="server" Text="0" AutoPostBack="False"
                                                                                                    Width="200px" MaxLength="20" Style="text-align: right;"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Fee Kartu [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtFeeKartu3" runat="server" Text="0" Width="200px" MaxLength="20"
                                                                                                    ReadOnly="True" Style="text-align: right;" CssClass="txtsummary"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td valign="top" width="20%">
                                                                            <table width="100%" cellspacing="1">
                                                                                <tr class="rfieldgroup">
                                                                                    <td style="width: 26px;">
                                                                                        <img style="cursor: hand" onclick="javascript:if (debitCardDiv.style.display == '') {debitCardDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { debitCardDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                                                            alt="Collapse/Expand" src="/qislib/images/expand.png" align="absmiddle">
                                                                                    </td>
                                                                                    <td style="padding-left: 5;">
                                                                                        Debit Card
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Panel ID="panelPembayaranKartu2" runat="server">
                                                                                <asp:Panel ID="debitCardDiv" Style="display: none" runat="server">
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Bank
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:DropDownList ID="listBank4" onchange="calcCC('4')" runat="server" AutoPostBack="False"
                                                                                                    Width="200px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Nomor Kartu
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtNomorKartu4" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Pembayaran [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTotalBayarKartu4" onblur="hitungKembalianOK(this);FormatCurrency(this);"
                                                                                                    onfocus="javascript:this.select();" runat="server" Text="0" AutoPostBack="False"
                                                                                                    Width="200px" MaxLength="20" Style="text-align: right;"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Fee Kartu [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtFeeKartu4" runat="server" Text="0" Width="200px" MaxLength="20"
                                                                                                    ReadOnly="True" Style="text-align: right;" CssClass="txtsummary"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Panel ID="panelPembayaranVoucher" runat="server" Visible="false">
                                                                                <strong style="cursor: hand; text-decoration: underline" onclick="javascript:if (VoucherDiv.style.display == '') {VoucherDiv.style.display = 'none'; } else { VoucherDiv.style.display = '';}">
                                                                                    VOUCHER </strong>
                                                                                <div id="VoucherDiv" style="display: none">
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Voucher [Rp]
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                                <asp:TextBox ID="txtTotalBayarVoucher1" onblur="hitungKembalianOK();FormatCurrency(this);"
                                                                                                    runat="server" Text="0.00" Width="200px" MaxLength="20" Style="text-align: right;"></asp:TextBox><!--onKeyPress="return(currencyFormat(this,',','.',event))"/>-->
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                            </td>
                                                                                            <td width="70%">
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </div>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td>
                                                                            Voucher untuk Pasien [Rp]
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtGratisVoucher" runat="server" ReadOnly="true" MaxLength="50"
                                                                                Width="200px" CssClass="txtsummary" Style="text-align: right;"></asp:TextBox>
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
                                                                            <asp:TextBox ID="txtKeterangan" runat="server" MaxLength="50" Width="350px"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Kuitansi Atas Nama
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtPembayar" runat="server" MaxLength="50" Width="350px"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </asp:Panel>
                                                                <tr>
                                                                    <td>
                                                                        Kasir
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="lblNamaKasir" runat="server" ReadOnly="true" Width="350px" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Tgl. Update
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="lblTglUpdate" runat="server" ReadOnly="true" Width="350px" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
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
                                                        </td>
                                                        <td valign="top" style="width: 50%;">
                                                            <table width="100%">
                                                                <colgroup>
                                                                    <col width="33%" />
                                                                    <col width="33%" />
                                                                    <col width="33%" />
                                                                </colgroup>
                                                                <tr>
                                                                    <td colspan="3" class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        INFORMASI TAGIHAN
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Total Seluruh Tagihan
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtTotalTagihan" runat="server" AutoPostBack="True" Width="100%"
                                                                            Style="text-align: right;" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <asp:Panel ID="pnlPiutang" runat="server">
                                                                    <tr>
                                                                        <td>
                                                                            Coverage Limit
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                        <td align="right">
                                                                            <asp:TextBox ID="txtCoverageLimit" runat="server" AutoPostBack="True" Width="100%"
                                                                                Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </asp:Panel>
                                                                <tr>
                                                                    <td class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        RINCIAN TAGIHAN
                                                                    </td>
                                                                    <td class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        PASIEN
                                                                    </td>
                                                                    <td class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        INSTANSI
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Total Tagihan [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtTotalAwalPasien" runat="server" ReadOnly="true" Width="100%"
                                                                            CssClass="txtsummary" Style="text-align: right;"></asp:TextBox>
                                                                        <asp:TextBox ID="txtTAPasien" runat="server" Visible="false"></asp:TextBox>
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtTotalAwalInstansi" runat="server" ReadOnly="true" Width="100%"
                                                                            CssClass="txtsummary" Style="text-align: right;"></asp:TextBox>
                                                                        <asp:TextBox ID="txtTAInstansi" runat="server" Visible="false"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Total Pembayaran [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtBayarPasien" runat="server" ReadOnly="true" Width="100%" CssClass="txtsummary"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtBayarInstansi" runat="server" ReadOnly="true" Width="100%" CssClass="txtsummary"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <hr />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Sisa Tagihan [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtSisaPasien" runat="server" ReadOnly="true" Width="100%" CssClass="txtsummary"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtSisaInstansi" runat="server" ReadOnly="true" Width="100%" CssClass="txtsummary"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        TAGIHAN HARUS DIBAYAR
                                                                    </td>
                                                                    <td class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        PASIEN
                                                                    </td>
                                                                    <td class="rheaderexpable" style="height: 24px; text-align: center;">
                                                                        INSTANSI
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Sisa Tagihan [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtTotalPasien" runat="server" ReadOnly="true" Width="100%" CssClass="txtsummary"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                        <asp:TextBox ID="txtTPasienValue" runat="server" Visible="false"></asp:TextBox>
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtTotalInstansi" runat="server" ReadOnly="true" Width="100%" CssClass="txtsummary"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                        <asp:TextBox ID="txtTInstansiValue" runat="server" Visible="false"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Diskon Final [%]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtPDiskon" onblur="hitungKembalianOK();FormatCurrency(this);" onfocus="javascript:this.select();"
                                                                            runat="server" AutoPostBack="False" Visible="true" Width="100%" MaxLength="5"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Diskon Final [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtDiskon" onblur="hitungKembalianOK();FormatCurrency(this);" onfocus="javascript:this.select();"
                                                                            runat="server" AutoPostBack="False" Visible="true" Width="100%" MaxLength="15"
                                                                            Style="text-align: right;"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td>
                                                                        Voucher [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtTotalBayarVoucher" onblur="hitungKembalianOK();FormatCurrency(this);"
                                                                            onfocus="javascript:this.select();" runat="server" Text="0.00" Width="100%" MaxLength="16"
                                                                            Style="text-align: right;"></asp:TextBox><!--onKeyPress="return(currencyFormat(this,',','.',event))"/>-->
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Pembulatan [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtPembayaranPasien_NominalPembulatan" runat="server" Text="0.00"
                                                                            Width="100%" ReadOnly="true" MaxLength="50" Style="text-align: right;" CssClass="txtsummary"></asp:TextBox><!--onKeyPress="return(currencyFormat(this,',','.',event))"/>-->
                                                                    </td>
                                                                    <td style="width: 24px; text-align: center;">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <hr />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Total Tagihan Akhir [Rp]
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtPembayaranPasien_Akhir" runat="server" Text="0.00" Width="100%"
                                                                            ReadOnly="true" MaxLength="50" Style="text-align: right; font-size: 14pt;" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox ID="txtPembayaranInstansi_Akhir" runat="server" Text="0.00" Width="100%"
                                                                            ReadOnly="true" MaxLength="50" Style="text-align: right; font-size: 14pt;" CssClass="txtsummary"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="display: none;">
                                            <td>
                                                <table cellspacing="0" cellpadding="1" width="100%" border="0">
                                                    <tr>
                                                        <td class="rBodyInfo" valign="top" width="99%">
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
                                                                <table cellspacing="10" cellpadding="0" width="100%" bgcolor="mintcream">
                                                                    <tr>
                                                                        <td id="rellink1" width="15%">
                                                                            <p>
                                                                                <font class="txtstrong">Cetak Kwitansi</font>
                                                                                <br />
                                                                                Cetak Kwitansi.
                                                                            </p>
                                                                        </td>
                                                                        <td valign="top" width="20%">
                                                                        </td>
                                                                        <td id="rellink2" width="15%">
                                                                            <p>
                                                                                <font class="txtstrong">Cetak Kwitansi (English)</font>
                                                                                <br />
                                                                                Cetak Kwitansi(English).
                                                                            </p>
                                                                        </td>
                                                                        <td valign="top" width="20%">
                                                                        </td>
                                                                        <td style="display: none" valign="top" width="33%">
                                                                            <asp:LinkButton ID="LbtnCetak" Style="display: none" runat="server" Text="Print"></asp:LinkButton><input
                                                                                class="sbttn" id="lBtnCetak" onmouseover="rellinkp.style.backgroundColor='#FFD27A'"
                                                                                onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.HisConfiguration.ReportsFolder %>fm_/asp/KwitansiBebas.asp?n=' + document.getElementById('txtNobayar').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');"
                                                                                onmouseout="rellinkp.style.backgroundColor='MintCream'" type="button" value="Go...">
                                                                        </td>
                                                                        <td id="rellink3" width="15%">
                                                                            <p>
                                                                                <font class="txtstrong">Update Pembayar</font>
                                                                                <br />
                                                                                Update Pembayar
                                                                            </p>
                                                                        </td>
                                                                        <td valign="top" width="20%">
                                                                        </td>
                                                                        <td style="display: none" valign="top" width="33%">
                                                                            <asp:LinkButton ID="Linkbutton1" Style="display: none" runat="server" Text="Print"></asp:LinkButton><input
                                                                                class="sbttn" id="lBtnCetak" onmouseover="rellinkp.style.backgroundColor='#FFD27A'"
                                                                                onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.HisConfiguration.ReportsFolder %>fm_/asp/KwitansiBebas.asp?n=' + document.getElementById('txtNobayar').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');"
                                                                                onmouseout="rellinkp.style.backgroundColor='MintCream'" type="button" value="Go...">
                                                                        </td>
                                                                    </tr>
                                                                    <tr valign="top">
                                                                        <td id="rc_a" width="20%">
                                                                            <p>
                                                                                <font class="txtstrong">Print Cetak Kwitansi Detil</font>
                                                                                <br />
                                                                                Print Cetak Kwitansi Detil.
                                                                            </p>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Button ID="PrintKwitansiDet" onmouseover="rc_a.style.backgroundColor='#FFD27A'"
                                                                                onmouseout="rc_a.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                                CssClass="sbttn"></asp:Button>
                                                                        </td>
                                                                        <td id="rc_b" width="20%">
                                                                            <p>
                                                                                <font class="txtstrong">Print Cetak Kwitansi Detil (English)</font>
                                                                                <br />
                                                                                Print Cetak Kwitansi Detil (English).
                                                                            </p>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Button ID="PrintKwitansiDeteng" onmouseover="rc_b.style.backgroundColor='#FFD27A'"
                                                                                onmouseout="rc_b.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                                CssClass="sbttn"></asp:Button>
                                                                        </td>
                                                                        <td style="display: none" valign="top" width="33%">
                                                                        </td>
                                                                        <td id="rellinkx" width="15%">
                                                                        </td>
                                                                        <td valign="top" width="20%">
                                                                        </td>
                                                                        <td style="display: none" valign="top" width="33%">
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
                                </asp:Panel>
                                <!-- BEGIN KONFIRMASI PIUTANG -->
                                <!-- #include file="konfirmasiPiutang.Incl.aspx" -->
                                <!-- BEGIN KONFIRMASI VOID-->
                                <!-- #include file="konfirmasiVoid.Incl.aspx" -->
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <asp:Button class="sbttn" ID="lBtnUpdatePenjamin" Visible="False" onmouseover="rellink3.style.backgroundColor='#FFD27A'"
        onmouseout="rellink3.style.backgroundColor='MintCream'" runat="server" Text="Go">
    </asp:Button>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" class="rdbCetakan" runat="server">
            <asp:ListItem Value="CetakKuitansi" Text="Cetak Kuitansi [Bahasa Indonesia]"></asp:ListItem>
        </asp:RadioButtonList>
        <%--<div class="rightPanelContent borderBox">
            <asp:Button class="sbttn" ID="lBtnRePrintKwitansiDet" onmouseover="rellink1.style.backgroundColor='#FFD27A'"
                onmouseout="rellink1.style.backgroundColor='MintCream'" runat="server" Text="Go">
            </asp:Button>
            <div class='qmtitle'>Cetak Kuitansi [Bahasa Indonesia]</div>
            <div class='qmdescription'>Cetak Kuitansi [Bahasa Indonesia].</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button class="sbttn" ID="lBtnRePrintKwitansiDetE" onmouseover="rellink2.style.backgroundColor='#FFD27A'"
                onmouseout="rellink2.style.backgroundColor='MintCream'" runat="server" Text="Go">
            </asp:Button>
            <div class='qmtitle'>Cetak Kuitansi [English]</div>
            <div class='qmdescription'>Cetak Kuitansi [English].</div>
        </div>--%>
    </div>
    <!-- End Side Menu -->
    </form>
    <script src='/qislib/scripts/common/common.js' language="javascript"></script>
    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>
    <script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
			End Function
			Public Function rpl(ByVal str)
				rpl = replace(str,",","")
			End Function			
			Public Function cur(ByVal value)
				cur = replace(FormatCurrency(value),"$","")
			End Function			
    </script>
    <script language="javascript">
        function fokus() {
            try {
                var noresep;
                noresep = document.getElementById('txtNoResep').value;
                noresep = ditrim(noresep);
                if (noresep == '') {
                    document.getElementById('lBtnNoResep').focus();
                    document.getElementById('lBtnNoResep').select();
                }
                else {
                    document.getElementById('txtTotalPembayaranCash').focus();
                    document.getElementById('txtTotalPembayaranCash').select();
                }
            }
            catch (e) {
            }
        }


        //        function updateDiskon(type) {
        //            var totpasien,pdiskon, diskon;
        //            totpasien = $('#<%= txtTotalPasien.ClientID %>').value();
        //            pdiskon = $('#<%= txtPDiskon.ClientID %>').value();
        //            diskon = $('#<%= txtDiskon.ClientID %>').value();
        //            if (type == 1) {
        //                diskon = totpasien * pdiskon / 100.0;
        //                $('#<%= txtDiskon.ClientID %>').value(diskon);
        //            }
        //            else {
        //                pdiskon = diskon * 100.0 / totpasien;
        //                $('#<%= txtPDiskon.ClientID %>').value(pdiskon);
        //            }
        //        }


        function hitungKembalianOK(control) {
            //try{
            var bayar = strToFloat(document.getElementById('txtTotalPembayaranCash').value.replace(',', ''));
            //}catch(err){return 0;} //handle pada saat hanya show panel piutang			
            var bayar1 = strToFloat(document.getElementById('txtTotalBayarKartu1').value.replace(',', ''));
            var bayar2 = strToFloat(document.getElementById('txtTotalBayarKartu2').value.replace(',', ''));
            var bayar3 = strToFloat(document.getElementById('txtTotalBayarKartu3').value.replace(',', ''));
            var bayar4 = strToFloat(document.getElementById('txtTotalBayarKartu4').value.replace(',', ''));
            var Voucher = strToFloat(document.getElementById('txtTotalBayarVoucher').value.replace(',', ''));
            var sisa = strToFloat(document.getElementById('txtTotalPasien').value);
            var pdiskon = strToFloat(document.getElementById('txtPDiskon').value);
            var diskon = strToFloat(document.getElementById('txtDiskon').value);
            var bulat = strToFloat(document.getElementById('txtPembayaranPasien_NominalPembulatan').value);
            var totalBayar_Pembulatan;
            var pembulatan;
            var kembali;
            var bayarLain;
            var tagihan_akhir = strToFloat(document.getElementById('txtPembayaranPasien_Akhir').value);
            var plafon = 0;
            var kdPerusahaan = "";

            //try { plafon = strToFloat(document.getElementById('txtJmPiutang').value); } catch (err) { }

            try { kdPerusahaan = document.getElementById('txtKdPerusahaan').value.replace(" ", ""); } catch (err) { }

            bayarLain = bayar1 + bayar2 + bayar3 + bayar4;

            if (pdiskon > 0) {
                diskon = (sisa * pdiskon) / 100;
                document.getElementById('txtDiskon').value = diskon;
            }

            document.getElementById('txtDiskon').value = numToDollars(strToFloat(document.getElementById('txtDiskon').value));


            if (document.getElementById('txtNobayar').value.replace(' ', '').length > 0) return 0;





            if (bayar > 0) {
                if ((bayarLain == 0)) {
                    bulat = getPembulatan(sisa - diskon - Voucher) - (sisa - diskon - Voucher);
                    document.getElementById('txtPembayaranPasien_NominalPembulatan').value = numToDollars(getPembulatan(sisa - diskon - Voucher) - (sisa - diskon - Voucher));
                    document.getElementById('txtPembayaranPasien_Akhir').value = numToDollars(getPembulatan(sisa - diskon - Voucher));
                    kembali = (bayar) - strToFloat(document.getElementById('txtPembayaranPasien_Akhir').value);
                }
                else {
                    document.getElementById('txtPembayaranPasien_NominalPembulatan').value = numToDollars(0);
                    document.getElementById('txtPembayaranPasien_Akhir').value = numToDollars(sisa - diskon - Voucher + bulat);
                    kembali = 0;
                    if (bayar + bayarLain > (sisa - diskon - Voucher)) {
                        var selisih = (bayar + bayarLain) - (sisa - diskon - Voucher);
                        control.value = numToDollars(strToFloat(control.value) - selisih);
                    }
                }

                if (kembali < 0) {
                    document.getElementById('txtTotalKembalian').value = numToDollars(0);
                }
                else {
                    document.getElementById('txtTotalKembalian').value = numToDollars(kembali);
                }
            }
            else if (bayarLain > 0) {
                document.getElementById('txtPembayaranPasien_NominalPembulatan').value = numToDollars(0);
                document.getElementById('txtTotalKembalian').value = numToDollars(0);
                document.getElementById('txtPembayaranPasien_Akhir').value = numToDollars(sisa - diskon - Voucher);
                if (bayar + bayarLain > (sisa - diskon - Voucher)) {
                    var selisih = (bayar + bayarLain) - (sisa - diskon - Voucher);
                    control.value = numToDollars(strToFloat(control.value) - selisih);
                }
            }
            else {
                //document.getElementById('txtPembayaranPasien_NominalPembulatan').value = numToDollars(getPembulatan(sisa - diskon - Voucher) - (sisa - diskon - Voucher));
                //document.getElementById('txtPembayaranPasien_NominalPembulatan').value = numToDollars(0);
                document.getElementById('txtTotalKembalian').value = numToDollars(0);
                document.getElementById('txtPembayaranPasien_Akhir').value = numToDollars(sisa - diskon - Voucher + bulat);
            }


        }

        function hitungKembalian() {
            /*var jmtrans;
            var jmbayar1;
            var jmbayar2;
            var jmbayar3;
            var jmbayar4;
            var jmbayar5;
            var voucher;
            var jmdiskon;
            var jmkembali;
				
            jmtrans = parseFloat(rpl(document.getElementById('txtTotal').value));	
            jmbayar1 = parseFloat(rpl(document.getElementById('txtTotalPembayaranCash').value));
            jmbayar2 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu1').value));
            jmbayar3 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu2').value));
            jmbayar4 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu3').value));
            jmbayar5 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu4').value));
            voucher = parseFloat(rpl(document.getElementById('txtTotalBayarVoucher').value));
            jmdiskon = parseFloat(rpl(document.getElementById('txtDiskon').value));
				
            jmkembali = jmbayar1 + jmbayar2 + jmbayar3 + jmbayar4 + jmbayar5 + voucher + jmdiskon - jmtrans;
				
            if (jmkembali > 0)
            {
            document.getElementById('txtTotalKembalian').value = cur(jmkembali);
            }
            else
            {
            document.getElementById('txtTotalKembalian').value = 0.00;
            }*/
            var bayar = strToFloat(document.getElementById('txtTotalPembayaranCash').value.replace(',', ''));
            var bayar1 = strToFloat(document.getElementById('txtTotalBayarKartu1').value.replace(',', ''));
            var bayar2 = strToFloat(document.getElementById('txtTotalBayarKartu2').value.replace(',', ''));
            var bayar3 = strToFloat(document.getElementById('txtTotalBayarKartu3').value.replace(',', ''));
            var bayar4 = strToFloat(document.getElementById('txtTotalBayarKartu4').value.replace(',', ''));
            var Voucher = strToFloat(document.getElementById('txtTotalBayarVoucher').value.replace(',', ''));
            var sisa = strToFloat(document.getElementById('txtTotal').value);
            var diskon = strToFloat(document.getElementById('txtDiskon').value);
            var totalBayar_Pembulatan;
            var pembulatan;
            var kembali;

            if (document.getElementById('txtNobayar').value.replace(' ', '').length > 0) return 0;

            //document.getElementById('txtPembayaranPasien_Pembulatan').value = document.getElementById('txtTotal').value;
            //document.getElementById('txtPembayaranPasien_NominalPembulatan').value = "0.00";

            //document.getElementById('txtTotalSeluruh').value = numToDollars(sisa - diskon - Voucher);
            if ((bayar + bayar1 + bayar2 + bayar3 + bayar4) != 0) {
                document.getElementById('txtPembayaranPasien_NominalPembulatan').value = "0.00";
                document.getElementById('txtPembayaranPasien_Pembulatan').value = numToDollars(sisa - diskon - Voucher);
            }
            //document.getElementById('txtPembayaranPasien_Pembulatan').value = numToDollars(sisa - diskon - Voucher);

            if (bayar > 0) {
                kembali = (bayar + bayar1 + bayar2 + bayar3 + bayar4) - (sisa - diskon - Voucher);
                /*if (kembali!=0)
                if ((bayar + bayar1 + bayar2 + bayar3 + bayar4) >= getPembulatan(sisa - diskon - Voucher))
                {
                document.getElementById('txtPembayaranPasien_Pembulatan').value = numToDollars(getPembulatan(sisa-diskon-Voucher));
                document.getElementById('txtPembayaranPasien_NominalPembulatan').value = numToDollars(getPembulatan(sisa-diskon-Voucher) - (sisa - diskon - Voucher));
                pembulatan = parseFloat(document.getElementById('txtPembayaranPasien_NominalPembulatan').value.replace(',',''));
                kembali = kembali - pembulatan; 
                }*/
                document.getElementById('txtPembayaranPasien_Pembulatan').value = numToDollars(getPembulatan(sisa - diskon - Voucher));
                document.getElementById('txtPembayaranPasien_NominalPembulatan').value = numToDollars(getPembulatan(sisa - diskon - Voucher) - (sisa - diskon - Voucher));
                pembulatan = parseFloat(document.getElementById('txtPembayaranPasien_NominalPembulatan').value.replace(',', ''));
                kembali = kembali - pembulatan;

                if (kembali < 0) {
                    document.getElementById('txtTotalKembalian').value = numToDollars(0);
                }
                else {
                    document.getElementById('txtTotalKembalian').value = numToDollars(kembali);
                }
            }
            else {
                document.getElementById('txtTotalKembalian').value = numToDollars(0);
            }
        }

        function hitungpersen() {
            var persen = strToFloat(document.getElementById('txtPDiskon').value);
            var total = strToFloat(document.getElementById('txtTotal').value);
            document.getElementById('txtDiskon').value = numToDollars(persen / 100 * total);
            hitungKembalian();
        }

        function hitungTotalSetelahPembulatan() {
            var diskon = strToFloat(document.getElementById('txtDiskon').value);
            var total = strToFloat(document.getElementById('txtTotal').value);
            document.getElementById('txtPembayaranPasien_Pembulatan').value = numToDollars(total - diskon);
            hitungKembalian();
        }
			
    </script>
    <script language="javascript">
        function calcCC(noCC) {
            var total = strToFloat(document.getElementById('txtTotalPasien').value);
            var diskon = strToFloat(document.getElementById('txtDiskon').value);
            var voucher = strToFloat(document.getElementById('txtTotalBayarVoucher').value);
            var byr = strToFloat(document.getElementById('txtTotalPembayaranCash').value);
            var kembali = strToFloat(document.getElementById('txtTotalKembalian').value.replace(',', ''));
            var ttl = 0.00;
            var plafon = 0.00;
            //try { plafon = strToFloat(document.getElementById('txtJmPiutang').value); } catch (err) { }
            //var tagihan_akhir = strToFloat(document.getElementById('txtPembayaranPasien_Akhir').value);

            /*if (byr == 0) // jika ada pembayaran tunai maka gunakan pembulatan
            {
            document.getElementById('txtPembayaranPasien_Pembulatan').value = numToDollars(total - diskon - voucher);
            document.getElementById('txtPembayaranPasien_NominalPembulatan').value = "0.00";
            document.getElementById('txtPembayaranPasien_Akhir').value = numToDollars(total - diskon - voucher - plafon);
            }*/
            //document.getElementById('txtPembayaranPasien_Pembulatan').value = numToDollars(total - diskon - voucher);
            document.getElementById('txtPembayaranPasien_NominalPembulatan').value = "0.00";
            document.getElementById('txtPembayaranPasien_Akhir').value = numToDollars(total - diskon - voucher);
            ttl = strToFloat(document.getElementById('txtPembayaranPasien_Akhir').value);
            document.getElementById('txtTotalKembalian').value = numToDollars(0);

            /*var ttl = parseFloat(document.getElementById('txtPembayaranPasien').value.replace(',', ''));
            var byr = parseFloat(document.getElementById('txtTotalPembayaranCash').value.replace(',', ''));
            ttl = ttl - parseFloat(document.getElementById('txtDiskon').value.replace(',', ''));
            ttl = ttl - parseFloat(document.getElementById('txtTotalBayarVoucher').value.replace(',', ''));
            */
            switch (noCC) {
                case '1':
                    var krt =
							parseFloat(document.getElementById('txtTotalBayarKartu2').value.replace(',', '')) +
							parseFloat(document.getElementById('txtTotalBayarKartu3').value.replace(',', '')) +
							parseFloat(document.getElementById('txtTotalBayarKartu4').value.replace(',', ''));
                    if (document.getElementById('listJenisKartu1').value.length == 5 && (ttl - byr - krt) > 0) {
                        document.getElementById('txtTotalBayarKartu1').value = numToDollars(ttl - byr - krt);
                    }
                    else {
                        document.getElementById('txtTotalBayarKartu1').value = '0.00';
                        hitungKembalianOK();
                    }
                    document.getElementById('txtNomorKartu1').focus();
                    break;
                case '2':
                    var krt =
							parseFloat(document.getElementById('txtTotalBayarKartu1').value.replace(',', '')) +
							parseFloat(document.getElementById('txtTotalBayarKartu3').value.replace(',', '')) +
							parseFloat(document.getElementById('txtTotalBayarKartu4').value.replace(',', ''));
                    if (document.getElementById('listJenisKartu2').value.length == 5 && (ttl - byr - krt) > 0)
                        document.getElementById('txtTotalBayarKartu2').value = numToDollars(ttl - byr - krt);
                    else {
                        document.getElementById('txtTotalBayarKartu2').value = '0.00';
                        hitungKembalianOK();
                    }
                    document.getElementById('txtNomorKartu2').focus();
                    break;
                case '3':
                    var krt =
							parseFloat(document.getElementById('txtTotalBayarKartu1').value.replace(',', '')) +
							parseFloat(document.getElementById('txtTotalBayarKartu2').value.replace(',', '')) +
							parseFloat(document.getElementById('txtTotalBayarKartu4').value.replace(',', ''));
                    if (document.getElementById('listJenisKartu3').value.length == 5 && (ttl - byr - krt) > 0)
                        document.getElementById('txtTotalBayarKartu3').value = numToDollars(ttl - byr - krt);
                    else {
                        document.getElementById('txtTotalBayarKartu3').value = '0.00';
                        hitungKembalianOK();
                    }
                    document.getElementById('txtNomorKartu3').focus();
                    break;
                case '4':
                    var krt = strToFloat(document.getElementById('txtTotalBayarKartu1').value) +
							strToFloat(document.getElementById('txtTotalBayarKartu2').value) +
							strToFloat(document.getElementById('txtTotalBayarKartu3').value);
                    if (document.getElementById('listBank4').value.length == 2) {
                        if ((ttl - byr - krt) > 0) {
                            document.getElementById('txtTotalBayarKartu4').value = numToDollars(ttl - byr - krt);
                        }
                        else
                            document.getElementById('txtTotalBayarKartu4').value = "0.00";
                    }
                    else {
                        document.getElementById('txtTotalBayarKartu4').value = '0.00';
                        hitungKembalianOK();
                    }
                    document.getElementById('txtNomorKartu4').focus();
                    break;
            }
        }
    </script>
    <script language="javascript" src="/qislib/scripts/common/FormatNumber.js"></script>
</body>
</html>
