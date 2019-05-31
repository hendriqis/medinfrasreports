<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="returResepRI.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Pelayanan.ReturResep.ReturResepRI.returResepRI" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="PatientBanner" Src="../../../../../incl/PatientBanner.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Retur Resep Pasien Rawat Inap</title>
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
            oPopup.show(topper, lefter + 20, 550, 300, ttip);
        }
		
		//-->
    </script>

    <script language="javascript">
        function Done() {
            var url = '<%= UrlBase + "/secure/transaksi/Pelayanan/ReturResep/ReturResepRI/returResepRI_selregByOrder.aspx?" %>';
            window.location.href = url;
        }
    </script>

</head>
<body onload="ShowPosting()" id="bdRI_Retur">
    <form id="frmReturResepRI" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server" Visible="False">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table border="0" width="100%" style="height: 100%;" cellspacing="0" cellpadding="2">
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
            <td>
                <Module:PatientBanner ID="PatientBanner" runat="server"></Module:PatientBanner>
            </td>
        </tr>
        <tr>
            <td width="100%" style="height: 100%;" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td style="padding-top: 5px" align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            <a href="javascript:Done();">
                                                <img border="0" src="/qislib/images/back.png" alt="Kembali ke halaman Pilih Pasien"
                                                    align="absmiddle" />
                                            </a>&nbsp; Retur Resep Pasien Rawat Inap
                                        </td>
                                    </tr>
                                    <asp:Panel ID="panelHeader" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <!-- ---------------------------------
																	HEADER BEGIN HERE 
																------------------------------------- -->
                                                <table width="100%">
                                                    <tr>
                                                        <!-- ---------------------------------
																			LEFT SECTION
																		------------------------------------- -->
                                                        <td width="50%" valign="top">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnNoBukti" CausesValidation="False" Text="No. Bukti Retur"
                                                                            runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoBukti" AutoPostBack="true" runat="server" MaxLength="20" Width="95%" CssClass="txtautogenerate"/>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        No. Bukti Rawat Inap
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoBuktiRI" AutoPostBack="False" ReadOnly="True" runat="server"
                                                                            MaxLength="15" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none;">
                                                                    <td width="30%">
                                                                        No. Order
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoJO" AutoPostBack="False" ReadOnly="True" runat="server" MaxLength="15"
                                                                            Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none;">
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnNoResep" CausesValidation="False" Text="No. Bukti Resep"
                                                                            runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoResep" AutoPostBack="true" runat="server" MaxLength="15" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal Retur
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggal" ReadOnly="true" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Alasan Retur
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlAlsRetur" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none;">
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblNoreg" CausesValidation="False" Text="No. Registrasi" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoReg" AutoPostBack="true" runat="server" MaxLength="15" Width="95%"
                                                                            ReadOnly="True" />
                                                                        <asp:RequiredFieldValidator ID="rfvNoReG" runat="server" ControlToValidate="txtNoReg"
                                                                            ErrorMessage="NoRegistrasi" Display="dynamic">
																												** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none;">
                                                                    <td width="30%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <span id="ttip" style="color: green; cursor: hand;" onclick="richDialog()">Informasi
                                                                            Pasien :<br />
                                                                            <asp:Label ID="lbtnNamaPasienInfo" runat="server" Text="AnthonieCh" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!-- ----------------------------
																			BEGIN INFORMASI PASIEN
																			----------------------------- -->
                                                            <div id="oDialog" style="display: none;">
                                                                <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 1px solid black;
                                                                    filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=gold, EndColorStr=#FFFFFF);
                                                                    padding: 10px">
                                                                    Informasi Pasien
                                                                    <hr size="1" style="border: 1px solid black;">
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td class="rBodyInfo" height="20" colspan="3">
                                                                                <p>
                                                                                    <table width="100%" bgcolor="MintCream" bgcolor="#b0c7cb" id="__infp">
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                No.RM#
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblNoRm" runat="server" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Nama
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lbtnNamaPasien" runat="server" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Jenis Kelamin
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblJenisKelamin" runat="server" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Alamat
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lbtnAlamat" runat="server" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Telp
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblTelp" runat="server" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Tgl Lahir
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lbtnTglLahir" runat="server" Text="01-07-1976 / 28Th,4Bln,5Hr " />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Ruang
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblKdRuang" runat="server" Text="" />&nbsp;/&nbsp;
                                                                                                <asp:Label ID="lblNmRuang" runat="server" Text="" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Kelas
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblKdKelas" runat="server" Text="" />&nbsp;/&nbsp;
                                                                                                <asp:Label ID="lblNmKelas" runat="server" Text="" />&nbsp;/&nbsp;
                                                                                                <asp:Label ID="lblKdJTKelas" runat="server" Text="" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Charge Type
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblKdCharge" runat="server" Text="" />&nbsp;/&nbsp;
                                                                                                <asp:Label ID="lblNmCharge" runat="server" Text="" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                No. TT
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblNoTT" runat="server" Text="" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Jenis Pasien
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblKdTipeP" runat="server" Text="" />&nbsp;/&nbsp;
                                                                                                <asp:Label ID="lblNmTipeP" runat="server" Text="" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Kode Perusahaan
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblKodePerusahaan" runat="server" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td width="30%">
                                                                                                Perusahaan
                                                                                            </td>
                                                                                            <td>
                                                                                                &nbsp;:&nbsp;
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblPerusahaan" runat="server" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </p>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <br />
                                                                    <input type="button" value="Close Message" class="sbttn" tabindex="-1" onclick="parent.oPopup.hide();" />
                                                                </div>
                                                            </div>
                                                            <!-- ----------------------------
																				END INFORMASI PASIEN
																			----------------------------- -->
                                                        </td>
                                                        <!-- ---------------------------------
																			END LEFT SECTION
																		------------------------------------- -->
                                                        <!-- ---------------------------------
																			RIGHT SECTION
																		------------------------------------- -->
                                                        <td width="50%" valign="top">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnGudang" CausesValidation="False" Text="Gudang" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeGudang" AutoPostBack="true" runat="server" MaxLength="5"
                                                                            Width="24%" />
                                                                        <asp:TextBox ID="lblNamaGudang" runat="server" Width="70%" ReadOnly="true" />
                                                                        <asp:RequiredFieldValidator ID="rfvGudang" runat="server" ControlToValidate="lblNamaGudang"
                                                                            ErrorMessage="Kode Gudang" Display="dynamic">
																												** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblLokasi" runat="server" Text="Lokasi"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="95%">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="rfvLokasi" runat="server" ControlToValidate="ddlLokasi"
                                                                            ErrorMessage="Lokasi" Display="dynamic">
																												** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblDokter" CausesValidation="False" Text="Dokter" runat="server" Visible="False" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeDokter" AutoPostBack="true" runat="server" MaxLength="10"
                                                                            Width="24%" ReadOnly="True" Visible="False" />
                                                                        <asp:TextBox ID="lblNamaDokter" runat="server" Width="70%" ReadOnly="true" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td width="30%">
                                                                        Poliklinik
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlPoliklinik" runat="server" Width="95%" Enabled="False" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td width="30%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Enabled="False" Visible="False" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPPn" runat="server" AutoPostBack="True" Text="PPN" Visible="False" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Lokasi Pembayaran
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlLokPemb" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Jenis Retur
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlJenisRetur" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <!-- ---------------------------------
																			RIGHT SECTION
																		------------------------------------- -->
                                                    </tr>
                                                </table>
                                                <!-- ---------------------------------
																	HEADER END HERE 
																------------------------------------- -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <!-- ---------------------------------
																	ADDNEW ROW BEGIN HERE 
																------------------------------------- -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" valign="top">
                                                            <asp:TextBox ID="txtCounter" runat="Server" Visible="False">
                                                            </asp:TextBox>
                                                            <asp:Panel ID="panelReturRspAddNewRow" runat="server">
                                                                <table cellspacing="0" cellpadding="5" width="100%" class="rBodyAddNew" bordercolordark="#98AAB1">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Retur Resep
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table width="100%" cellpadding="1" cellspacing="1">
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        <asp:LinkButton ID="lbtnKodeBarang" CausesValidation="False" Text="Kode Item" runat="server" />
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtKodeBarang" runat="server" MaxLength="10" AutoPostBack="True"
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtKodeBarang" runat="server" ControlToValidate="AddNewRow_txtKodeBarang"
                                                                                            ErrorMessage="Kode Item" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_lblNamaBarang" runat="server" ReadOnly="True" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Jumlah Obat/Satuan Kecil
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtJumlahObat" runat="server" Width="61%" Text="0.00"
                                                                                            AutoPostBack="False" />
                                                                                        <asp:TextBox ID="AddNewRow_Satuan" runat="server" Width="37%" ReadOnly="True" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:Label ID="AddNewRow_QtyResep" runat="server" Width="100%" Text="0.00" Visible="False" />
                                                                                        <asp:Label class="error" ID="lblError" runat="server" Width="100%" />
                                                                                        <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="AddNewRow_txtJumlahObat"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage="Jumlah Obat" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvJumlahObat" runat="server" ControlToValidate="AddNewRow_txtJumlahObat"
                                                                                            Operator="GreaterThan" Type="Double" ValueToCompare="0" ErrorMessage="Jumlah Obat"
                                                                                            Display="Dynamic">
																																	** Harus lebih dari 0 **
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none">
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Expired (dd-MM-yyyy)
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_TglExpired" runat="server" Width="100%" MaxLength="10" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr class="rheader">
                                                                                    <td class="rheadercol" align="left" height="2" colspan="3">
                                                                                    </td>
                                                                                    <!-- SPACER ROW -->
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Harga
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtHarga" runat="server" ReadOnly="True" Width="100%"
                                                                                            Text="0.00" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvHarga" runat="server" ControlToValidate="AddNewRow_txtHarga"
                                                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Selisih
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtSelisih" runat="server" ReadOnly="True" Width="100%"
                                                                                            Text="0.00" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvSelisih" runat="server" ControlToValidate="AddNewRow_txtSelisih"
                                                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Selisih" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Embalace Resep
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtEmbalaceR" runat="server" Width="100%" Text="0.00" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvEmbalaceR" runat="server" ControlToValidate="AddNewRow_txtEmbalaceR"
                                                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Embalace Obat
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtEmbalaceO" runat="server" Width="100%" Text="0.00" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvEmbalaceO" runat="server" ControlToValidate="AddNewRow_txtEmbalaceO"
                                                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Diskon %
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtDiskon" runat="server" Width="100%" Text="0.00" AutoPostBack="False" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvDiskon" runat="server" ControlToValidate="AddNewRow_txtDiskon"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RangeValidator ID="rvDiskon" runat="server" ControlToValidate="AddNewRow_txtDiskon"
                                                                                            MaximumValue="100.00" MinimumValue="0.00" Type="Double" ErrorMessage="Diskon"
                                                                                            Display="Dynamic">** Angka melewati batas **
                                                                                        </asp:RangeValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none">
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Uang R/
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:DropDownList ID="AddNewRow_ddlUangR" runat="server" Width="100%" AutoPostBack="True" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;/&nbsp;Harga :&nbsp;
                                                                                        <asp:Label ID="AddNewRow_lblUangR" runat="server" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none">
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Total
                                                                                    </td>
                                                                                    <td width="25%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_txtTotal" runat="server" ReadOnly="True" Width="100%"
                                                                                            Text="0.00" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100">
                                                                                        </asp:Button>
                                                                                        <asp:Button ID="btnDone" runat="server" Text="Done" CausesValidation="False" CssClass="sbttn"
                                                                                            Width="100"></asp:Button>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr bgcolor="White" valign="bottom">
                                                                        <td align="left" height="25">
                                                                            <p align="right">
                                                                                Data yang sudah ada...</p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- ---------------------------------
																	ADDNEW ROW END HERE 
																------------------------------------- -->
                                                <!-- START DATAGRID Retur Resep -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridReturResep" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                Height="100%" DataKeyField="counter" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 4" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="nobukti" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                                ID="_lblCounter" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="buktirsp" runat="server" HeaderText="No. Resep"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "buktirsp") %>'
                                                                                ID="_lblBuktiRsp" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            ID="_lblNamaItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKodeItem" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qtysatuan" runat="server" HeaderText="Qty Retur"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtysatuan"), "#,##0.00") %>'
                                                                                ID="_lblQtySatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                ID="_lblSatuanObat" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="true">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                ID="_lblnmSatuanObat" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargajual"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Selisih" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "selisih"),"#,##0.00") %>'
                                                                                ID="_lblSelisih" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Expired" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "expired"), "dd-MM-yyyy") %>'
                                                                                ID="_lblExpired" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "diskonpc") %>'
                                                                                ID="_lblDiskonPc" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon Rp." ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "diskonrp") %>'
                                                                                ID="_lblDiskonRp" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="QtyKemasR" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "qtykemasr") %>'
                                                                                ID="_lblQtyKemasR" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="KemasR" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kemasr") %>'
                                                                                ID="_lblKemasR" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="embalacer" runat="server" HeaderText="EmbalaceR"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "embalacer") %>'
                                                                                ID="_lblEmbalaceR" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="QtyKemasO" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "qtykemaso") %>'
                                                                                ID="_lblQtyKemasO" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="KemasO" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kemaso") %>'
                                                                                ID="_lblKemasO" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="embalaceo" runat="server" HeaderText="EmbalaceO"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "embalaceo") %>'
                                                                                ID="_lblEmbalaceO" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="KdUangR" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kduangr") %>'
                                                                                ID="_lblKdUangR" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="UangR" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "uangR") %>'
                                                                                ID="_lblUangR" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subtotal"),"#,##0.00") %>'
                                                                                ID="_lblSubTotal" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="usrupdate" runat="server" HeaderText="Petugas"
                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "usrupdate") %>'
                                                                                ID="_lblPetugas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>                                                                    
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID Retur Resep -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td align="right">
                                                <table>
                                                    <tr class="rbody">
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotalSelisih" runat="server" Text="Total Selisih Retur">
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
                                                            <asp:Label ID="lblJudulTotal" runat="server" Text="Total Retur Obat">
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
                                                            Total Nilai Pemesanan :
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
                                                <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                </asp:ValidationSummary>
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
                                                    <td align="left" height="10">
                                                        <img style="cursor: hand" onclick="javascript:if (RelatedLinkDiv.style.display == '') {RelatedLinkDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { RelatedLinkDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                            alt="Collapse/Expand" src="/qislib/images/collapse.png" align="absmiddle">
                                                        Quick Menu:
                                                    </td>
                                                </tr>
                                            </table>
                                            <div style="overflow: auto; width: 100%;" id="RelatedLinkDiv">
                                                <table width="100%" bgcolor="MintCream" cellspacing="10" cellpadding="0">
                                                    <tr valign="top">
                                                        <td width="50%" id="rbis">
                                                            <p>
                                                                <font class="txtstrong">Salin Retur</font>
                                                                <br />
                                                                Salin Data Retur
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            
                                                        </td>
                                                    </tr>
                                                    <tr valign="top">
                                                        <td width="50%" id="rbip">
                                                            <p>
                                                                <font class="txtstrong">Cetak Nota Retur Resep</font>
                                                                <br />
                                                                Cetak Rincian Retur Resep untuk retur pelayanan obat.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <input type="button" name="btnCetak1" id="btnCetak1" class="sbttn" onmouseover="rbip.style.backgroundColor='#ffd27a'" style="display:none"
                                                                onmouseout="rbip.style.backgroundColor='MintCream'" value="Go..." onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.ReportsFolder %>fm_/Bukti/ReturResepRI.asp?is=' + document.getElementById('txtNoBukti').value + '&snama=' + document.getElementById('lbtnNamaPasien').innerHTML + '&stgllahir=' + document.getElementById('lbtnTglLahir').innerHTML + '&skdseks=' + document.getElementById('lblJenisKelamin').innerHTML + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />                                                            
                                                        </td>
                                                    </tr>
                                                    <tr valign="top">
                                                        <td width="50%" id="rbup">
                                                            <p>
                                                                <font class="txtstrong">Batal Approval</font>
                                                                <br />
                                                                Batal Approval transaksi retur.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnUnposting" onmouseover="rbup.style.backgroundColor='#ffd27a'"
                                                                onmouseout="rbup.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                CssClass="sbttn" CausesValidation="False"></asp:Button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <!-- End Related Links -->

                                <script language="javascript" src="/qislib/scripts/common/common.js"></script>

                                <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

                                </asp:panel>
                                <asp:Panel ID="PanelSalinRetur" runat="server">
                                    <!--#include file="SalinReturResepRI_Grid.incl.aspx" -->

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

                                    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

                                </asp:Panel>
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
            <asp:Button ID="btnSalinRetur" runat="server" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn"
                CausesValidation="False" />
            <div class='qmtitle'>Ambil Item dari Penjualan Resep</div>
            <div class='qmdescription'>Ambil Item dari Penjualan Resep.</div>
        </div>
    </div>
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakRetur" runat="server" CausesValidation="False" onmouseover="rbip.style.backgroundColor='#ffd27a'"
                onmouseout="rbip.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Nota Retur Resep</div>
            <div class='qmdescription'>Cetak Nota Retur Penjualan Resep.</div>
        </div>        
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkCetakRetur" Text="Cetak Nota Retur Resep" Selected="True"></asp:ListItem>
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
