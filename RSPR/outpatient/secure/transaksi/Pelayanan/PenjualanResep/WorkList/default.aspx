<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI, Version=1.9.0.0, Culture=neutral, PublicKeyToken=24d65337282035f2" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="QIS.Web.Secure.Transaksi.Pelayanan.PenjualanResep.WorkList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Work List</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" />
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
    <meta content="JavaScript" name="vs_defaultClientScript" />
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
    <meta http-equiv="refresh" content="600" />
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <script language="javascript" src="/qislib/scripts/MD_/md___Dlg_rs-v2.js"></script>
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">
    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>
    <script language="javascript">
        function calTglLhr(cal) {
            document.getElementById('txtTglLahir').value = cal.date.getMonth() + 1 + "/" + cal.date.getDate() + "/" + cal.date.getFullYear()
        }
    </script>
</head>
<body>
    <form id="frmSelReg" runat="server">
    <table cellspacing="0" cellpadding="2" width="100%" height="100%" border="0">
        <tr>
            <td width="100%" valign="top">
                <Module:RadMenu ID="RadMenu" runat="server" />
            </td>
        </tr>
        <tr>
            <td valign="top" width="100%" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="0" cellpadding="5" width="100%" border="0">
                        <tr class="rfieldgroup">
                            <td align="right" style="width: 50%;">
                                Tampilkan Pasien berdasarkan
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rdbDaftarPasien" runat="server" AutoPostBack="true" RepeatDirection="Horizontal"
                                    ForeColor="#FFFFFF">
                                    <asp:ListItem Value="Registrasi" Text="Pendaftaran" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="Order" Text="Order"></asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="4">
                                <asp:Panel ID="pnl_1" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tbody>
                                            <tr class="rheader">
                                                <td class="rheadercol" align="left" height="25">
                                                    Work List
                                                </td>
                                            </tr>
                                            <tr class="rbody">
                                                <td class="rbodycol" align="center">
                                                    <asp:Panel ID="pnl_Registrasi" runat="server">
                                                        <table width="100%">
                                                            <tr>
                                                                <td>
                                                                    <asp:Panel ID="pnl_Registrasi_Tanggal" runat="server">
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td width="20%">
                                                                                    Tanggal
                                                                                </td>
                                                                                <td width="40%">
                                                                                    <Module:webcal ID="calTglRegistrasi" runat="server" DontResetDate="true"></Module:webcal>
                                                                                </td>
                                                                                <td align="right">
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td width="20%">
                                                                                Asal Pasien
                                                                            </td>
                                                                            <td width="40%">
                                                                                <asp:DropDownList ID="ddlAsalPasienRegistrasi" runat="server" AutoPostBack="True"
                                                                                    Width="99%">
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                            <td>
                                                                                <asp:LinkButton ID="lbtnListTransaksi" runat="server" CausesValidation="false" Text="Lihat Transaksi" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <asp:Panel ID="pnl_ServiceUnit" runat="server">
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td width="20%">
                                                                                    Unit Pelayanan
                                                                                </td>
                                                                                <td width="40%">
                                                                                    <asp:DropDownList ID="ddlServiceUnit" runat="server" AutoPostBack="True" Width="99%">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td align="right">
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                    <table width="100%" style="padding-top: 5px;">
                                                                        <tr>
                                                                            <td style="width: 50%;">
                                                                                [Total Pasien:
                                                                                <asp:Label ID="txtTotalPasienRegistrasi" runat="server"></asp:Label>]
                                                                            </td>
                                                                            <td align="right">
                                                                                Halaman ini akan
                                                                                <asp:LinkButton ID="lbtnRefreshRegistrasi" runat="server" CausesValidation="False"
                                                                                    Text="[refresh]"></asp:LinkButton>
                                                                                setiap 10 menit
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <table bordercolor="gainsboro" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:DataGrid ID="gridRegistrasi" runat="server" Width="100%" CellPadding="0" Height="100%"
                                                                                    GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro" AutoGenerateColumns="False"
                                                                                    AllowSorting="True" CellSpacing="0" ShowFooter="True" OnItemCommand="gridInformasiPasien_ItemCommand">
                                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                    <EditItemStyle Font-Bold="false" />
                                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                                    <Columns>
                                                                                        <asp:TemplateColumn ItemStyle-Width="150px" HeaderText="No. Registrasi">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="_lblNoReg" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NoReg") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateColumn>
                                                                                        <asp:BoundColumn DataField="norm" ItemStyle-Width="150px" HeaderText="No. Rekam Medis">
                                                                                        </asp:BoundColumn>
                                                                                        <asp:BoundColumn DataField="nama" HeaderText="Nama Pasien"></asp:BoundColumn>
																						<asp:BoundColumn DataField="nmruang" HeaderText="Ruang"></asp:BoundColumn>
                                                                                        <asp:BoundColumn DataField="noTTidur" HeaderText="T.Tidur"></asp:BoundColumn>
                                                                                        <asp:BoundColumn DataField="nminstansi" HeaderText="Penjamin"></asp:BoundColumn>
                                                                                    </Columns>
                                                                                </asp:DataGrid>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <asp:Panel ID="pnl_Order" runat="server">
                                                        <table width="100%">
                                                            <!-- PAGE CONTENT BEGIN HERE -->
                                                            <tr>
                                                                <td>
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td width="20%">
                                                                                Tanggal Rencana Realisasi
                                                                            </td>
                                                                            <td width="40%">
                                                                                <Module:webcal ID="calTanggal" runat="server" DontResetDate="true"></Module:webcal>
                                                                            </td>
                                                                            <td align="right">
                                                                            </td>
                                                                        </tr>
                                                                        <%--<tr>
                                                                            <td width="20%">
                                                                                Penunjang Medis
                                                                            </td>
                                                                            <td width="40%">
                                                                                <asp:DropDownList ID="ddlPnjMedis" runat="server" AutoPostBack="True" Width="99%">
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                            <td>
                                                                                &nbsp;
                                                                            </td>
                                                                        </tr>--%>
                                                                        <tr>
                                                                            <td width="20%">
                                                                                Asal Pasien
                                                                            </td>
                                                                            <td width="40%">
                                                                                <asp:DropDownList ID="ddlAsalPasien" runat="server" AutoPostBack="True" Width="99%">
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                            <td>
                                                                                &nbsp;
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%">
                                                                    <!-- VALIDATION SUMMARY BEGIN HERE -->
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
                                                                    <!-- VALIDATION SUMMARY END HERE -->
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <table cellspacing="1" cellpadding="0" width="100%" bgcolor="gainsboro">
                                                                                    <tr>
                                                                                        <td bgcolor="white">
                                                                                            <table cellspacing="0" cellpadding="2" width="100%">
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        Total Pasien
                                                                                                        <asp:TextBox ID="txtTotalPasien" Style="text-align: right" runat="server" Width="40"
                                                                                                            ReadOnly="true"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        Sudah Dilayani
                                                                                                        <asp:TextBox ID="txtTotalSudahDilayani" Style="text-align: right" runat="server"
                                                                                                            Width="40" ReadOnly="true"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        Belum Dilayani
                                                                                                        <asp:TextBox ID="txtTotalBelumDilayani" Style="text-align: right" runat="server"
                                                                                                            Width="40" ReadOnly="true"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td align="right" width="30%">
                                                                                                        Halaman ini akan
                                                                                                        <asp:LinkButton ID="lbtnRefresh" runat="server" CausesValidation="False" Text="[refresh]"></asp:LinkButton>
                                                                                                        setiap 10 menit
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
                                                            <tr>
                                                                <td>
                                                                    <asp:Panel ID="pnlEditWorkList" runat="server">
                                                                        <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                            width="100%">
                                                                            <tr class="rheader">
                                                                                <td class="rheadercol" align="left" height="25">
                                                                                    Edit Work List
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <table cellspacing="0" cellpadding="5" width="100%">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                                                    width="100%">
                                                                                                    <tr>
                                                                                                        <td width="100%">
                                                                                                            <table cellspacing="1" cellpadding="1" width="100%" border="0">
                                                                                                                <tr>
                                                                                                                    <td valign="top" width="100%">
                                                                                                                        <table cellspacing="0" cellpadding="1" width="100%" border="0">
                                                                                                                            <tr>
                                                                                                                                <td valign="top" width="50%">
                                                                                                                                    <table cellspacing="0" cellpadding="1" width="100%" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="20%">
                                                                                                                                                No. Order
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="60%">
                                                                                                                                                <asp:TextBox ID="Edit_txtNoJO" runat="server" Width="30%" Enabled="False"></asp:TextBox>
                                                                                                                                                <asp:TextBox ID="Edit_txtNoReg" runat="server" Width="30%" Enabled="False"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="20%">
                                                                                                                                                Tanggal Order
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="60%">
                                                                                                                                                <asp:TextBox ID="Edit_txtTglOrder" runat="server" Width="30%" Enabled="False"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="20%">
                                                                                                                                                Asal pasien
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="60%">
                                                                                                                                                <asp:DropDownList ID="Edit_ddlAsalPasien" runat="server" Width="100%" Enabled="False">
                                                                                                                                                </asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="20%">
                                                                                                                                                Unit Asal Order
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="60%">
                                                                                                                                                <asp:TextBox ID="Edit_txtKdUnit" runat="server" Width="28%" ReadOnly="True"></asp:TextBox>
                                                                                                                                                <asp:TextBox ID="Edit_txtNmUnit" runat="server" Width="70%" ReadOnly="True"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="20%">
                                                                                                                                                Penunjang Medis
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="60%">
                                                                                                                                                <asp:TextBox ID="Edit_txtKdPMedis" runat="server" Width="28%" ReadOnly="True"></asp:TextBox>
                                                                                                                                                <asp:TextBox ID="Edit_txtNmPMedis" runat="server" Width="70%" ReadOnly="True"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="20%">
                                                                                                                                                Catatan Klinis
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="60%">
                                                                                                                                                <asp:TextBox ID="Edit_txtCatatanKlinis" runat="server" Width="100%" ReadOnly="True"
                                                                                                                                                    TextMode="MultiLine" Height="50"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                                <td valign="top" width="50%">
                                                                                                                                    <table cellspacing="0" cellpadding="1" width="100%">
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="20%">
                                                                                                                                                No. Rekam Medis
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="60%">
                                                                                                                                                <asp:TextBox ID="Edit_txtNoRM" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="15%">
                                                                                                                                                Nama Pasien
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="40%">
                                                                                                                                                <asp:TextBox ID="Edit_txtNmPasien" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="15%">
                                                                                                                                                Marga Pasien
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="40%">
                                                                                                                                                <asp:TextBox ID="Edit_txtMargaPasien" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                                                                                <asp:TextBox ID="Edit_txtNoTelpon" runat="server" Width="100%" ReadOnly="True" Visible="false"></asp:TextBox>
                                                                                                                                                <asp:TextBox ID="Edit_txtNoHP" runat="server" Width="100%" ReadOnly="True" Visible="false"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="15%">
                                                                                                                                                Jenis Kelamin
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="40%">
                                                                                                                                                <asp:DropDownList ID="Edit_ddlJenisKelamin" runat="server" Width="50%" Enabled="False">
                                                                                                                                                </asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="15%">
                                                                                                                                                Tanggal Lahir
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="40%">
                                                                                                                                                <Module:webcal ID="Edit_calTglLahir" runat="server" DontResetDate="true" Visible="False">
                                                                                                                                                </Module:webcal>
                                                                                                                                                <asp:TextBox ID="Edit_txtTglLahir" AutoPostBack="true" Width="50%" runat="server"
                                                                                                                                                    ReadOnly="True" MaxLength="10"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="15%">
                                                                                                                                                Umur
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld" width="40%">
                                                                                                                                                <asp:TextBox ID="Edit_txtUmurTahun" runat="server" ReadOnly="True" MaxLength="3"
                                                                                                                                                    AutoPostBack="True" Width="30"></asp:TextBox>&nbsp;&nbsp;Tahun&nbsp;&nbsp;
                                                                                                                                                <asp:TextBox ID="Edit_txtUmurBulan" runat="server" ReadOnly="True" MaxLength="2"
                                                                                                                                                    AutoPostBack="True" Width="30"></asp:TextBox>&nbsp;&nbsp;Bulan&nbsp;&nbsp;
                                                                                                                                                <asp:TextBox ID="Edit_txtUmurHari" runat="server" ReadOnly="True" MaxLength="2" AutoPostBack="True"
                                                                                                                                                    Width="30"></asp:TextBox>&nbsp;&nbsp;Hari
                                                                                                                                            </td>
                                                                                                                                            <td class="rBodyAddNewFld">
                                                                                                                                                &nbsp;
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <table cellspacing="1" cellpadding="0" width="79.5%" bgcolor="white" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="100%" bgcolor="gainsboro">
                                                                                                                                                <table cellspacing="0" cellpadding="3" width="100%" border="0">
                                                                                                                                                    <asp:Panel ID="pnlTglRencanaRealisasiRI" runat="server">
                                                                                                                                                        <tbody>
                                                                                                                                                            <tr>
                                                                                                                                                                <td class="rBodyAddNewFld" width="25%">
                                                                                                                                                                    Tgl. Rencana Realisasi
                                                                                                                                                                </td>
                                                                                                                                                                <td class="rBodyAddNewFld" width="75%">
                                                                                                                                                                    <Module:webcal ID="Edit_calTglRencanaRealisasi" runat="server" DontResetDate="true">
                                                                                                                                                                    </Module:webcal>
                                                                                                                                                                </td>
                                                                                                                                                            </tr>
                                                                                                                                                    </asp:Panel>
                                                                                                                                                    <tr>
                                                                                                                                                        <td class="rBodyAddNewFld" width="25%">
                                                                                                                                                            Jam Rencana Realisasi
                                                                                                                                                        </td>
                                                                                                                                                        <td class="rBodyAddNewFld" width="75%">
                                                                                                                                                            <ew:MaskedTextBox ID="Edit_txtJamRencana" runat="server" Width="29%">
                                                                                                                                                            </ew:MaskedTextBox>
                                                                                                                                                            &nbsp;(HH:mm)
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td class="rBodyAddNewFld" width="25%">
                                                                                                                                                            Lokasi Pelayanan
                                                                                                                                                        </td>
                                                                                                                                                        <td class="rBodyAddNewFld" width="75%">
                                                                                                                                                            <asp:DropDownList ID="ddlLokasiPelayanan" runat="server" Width="100%">
                                                                                                                                                            </asp:DropDownList>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                                <td valign="top">
                                                                                                                                    <table cellspacing="1" cellpadding="3" width="79.5%" bgcolor="#9900cc" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td class="rBodyAddNewFld" width="100%" bgcolor="mintcream">
                                                                                                                                                <img src="/qislib/Images/info.png"><br>
                                                                                                                                                <font color="#9900cc">[Tgl. Rencana Realisasi] Dapat diganti khusus untuk pasien Rawat
                                                                                                                                                    Inap.<br>
                                                                                                                                                    [Appointment] Berarti data order pasien dibuat menjadi Appointment Pasien Langsung.</font>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td valign="top" width="100%" bgcolor="white">
                                                                                                                        <asp:DataGrid ID="gridDetailOrder" runat="server" Width="100%" CellPadding="0" PageSize="20"
                                                                                                                            Height="100%" GridLines="Horizontal" BorderWidth="1px" BorderColor="Gainsboro"
                                                                                                                            AutoGenerateColumns="False" AllowSorting="True" OnItemDataBound="gridDetailOrder_OnItemDataBound"
                                                                                                                            OnEditCommand="gridDetailOrder_OnEditCommand" OnUpdateCommand="gridDetailOrder_OnUpdateCommand"
                                                                                                                            OnCancelCommand="gridDetailOrder_OnCancelCommand">
                                                                                                                            <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                                                            <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                                                            <EditItemStyle Font-Bold="false" />
                                                                                                                            <Columns>
                                                                                                                                <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/clock.png border=0 align=absmiddle alt='Ubah Status Order menjadi Appointment atau Batal'>"
                                                                                                                                    UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                                                                                    CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                                                                                    <ItemStyle HorizontalAlign="center" />
                                                                                                                                </asp:EditCommandColumn>
                                                                                                                                <asp:TemplateColumn SortExpression="NoJO" HeaderText="No. Order" Visible="False">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblNoJO" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NoJO") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="App" Visible="False">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblApp" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "App") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn SortExpression="KdLayan" HeaderText="Kode Layan">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblKdLayan" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "KdLayan") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn SortExpression="NmLayan" HeaderText="Nama Layan">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblNmLayan" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NmLayan") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn SortExpression="Resep" HeaderText="Resep" Visible="false">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblResep" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Resep") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="Tgl. Rencana Realisasi">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblTglRencanaRealisasi" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "TglRencanaRealisasi"), "dd-MM-yyyy") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="Tgl. Realisasi" Visible="True">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblTglRealisasi" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TglRealisasiDt") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="Kode Status" Visible="False">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblKdStatus" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "KdStatus") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="Status">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblStatus" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NmStatus") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                    <EditItemTemplate>
                                                                                                                                        <asp:DropDownList ID="__ddlStatus" runat="Server" Width="200" />
                                                                                                                                    </EditItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn SortExpression="NoAppointment" HeaderText="No. Appointment">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblNoAppointment" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NoAppointment") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="Tgl. Appointment">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblTglAppointment" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TglApp") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                    <EditItemTemplate>
                                                                                                                                        <Module:webcal ID="__calTglAppointment" runat="server" DontResetDate="true" selectedDate='<%# DataBinder.Eval(Container.DataItem, "TglRencanaRealisasi") %>'>
                                                                                                                                        </Module:webcal>
                                                                                                                                        <asp:ImageButton ID="imgbtnInfoApp" runat="server" src="/qislib/images/search.png"
                                                                                                                                            align="absmiddle" title="Informasi Appointment Penunjang Medis" CommandName="__InfoAppointmentPMedis" />
                                                                                                                                    </EditItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="Jam Appointment">
                                                                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Label ID="_lblJamAppointment" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "JamApp") %>'>
                                                                                                                                        </asp:Label>
                                                                                                                                    </ItemTemplate>
                                                                                                                                    <EditItemTemplate>
                                                                                                                                        <ew:MaskedTextBox ID="__txtJamAppointment" runat="server" MaxLength="5" Mask="99:99"
                                                                                                                                            Text='<%# Trim(DataBinder.Eval(Container.DataItem, "JamApp")) %>' AutoPostBack="False">
                                                                                                                                        </ew:MaskedTextBox>
                                                                                                                                    </EditItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                                <asp:TemplateColumn HeaderText="Tutup">
                                                                                                                                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                                                                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:CheckBox ID="_chkTutup" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "tutup") %>'
                                                                                                                                            Enabled="False"></asp:CheckBox>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:TemplateColumn>
                                                                                                                            </Columns>
                                                                                                                        </asp:DataGrid>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <table width="100%">
                                                                                                                <tr>
                                                                                                                    <td width="5%">
                                                                                                                        <asp:Button class="sbttn" ID="Edit_btnSave" runat="server" Width="100" CausesValidation="False"
                                                                                                                            Text="Save"></asp:Button>
                                                                                                                    </td>
                                                                                                                    <td width="5%">
                                                                                                                        <asp:Button class="sbttn" ID="Edit_btnCancel" runat="server" Width="100" CausesValidation="False"
                                                                                                                            Text="Close"></asp:Button>
                                                                                                                    </td>
                                                                                                                    <td>
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
                                                                    </asp:Panel>
                                                                    <!-- BEGIN AddNewRowWorklist -->
                                                                    <!-- #include file="AddNewRowWorklist.incl.aspx" -->
                                                                    <!-- END AddNewRowWorklist -->
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%">
                                                                    <div style="border-right: gainsboro 1px solid; border-top: gainsboro 1px solid; overflow: auto;
                                                                        border-left: gainsboro 1px solid; width: 100%; border-bottom: gainsboro 1px solid;
                                                                        height: 500px">
                                                                        <table bordercolor="gainsboro" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:DataGrid ID="gridInformasiPasien" runat="server" Width="100%" CellPadding="0"
                                                                                        Height="100%" GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro"
                                                                                        AutoGenerateColumns="False" AllowSorting="True" CellSpacing="0" ShowFooter="True"
                                                                                        OnItemCommand="gridInformasiPasien_ItemCommand">
                                                                                        <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                        <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                        <EditItemStyle Font-Bold="false" />
                                                                                        <Columns>
                                                                                            <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                                                                Visible="true">
                                                                                                <ItemTemplate>
                                                                                                    <%--<asp:ImageButton runat="server" ID="gridWorklist__ibtnDilayani" CausesValidation="False"
                                                                                                        ImageUrl="/qislib/images/done.png" alt="Sudah dilayani" CommandName="Save" Visible='<%# iif(DataBinder.Eval(Container.DataItem,"validasi")=false,false,iif(DataBinder.Eval(Container.DataItem,"isserviced")=false,true,false)) %>' />--%>
                                                                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Iif(DataBinder.Eval(Container.DataItem, "isserviced"),"/qislib/images/nurse_done.png","/qislib/images/nurse_outstanding.png") %>' />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="App" HeaderText="Asal Pasien" Visible="False">
                                                                                                <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblApp" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "App") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="Asal" HeaderText="Asal Pasien" ItemStyle-Width="150">
                                                                                                <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblAsal" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "asal") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nojo" runat="server" HeaderText="Informasi Order"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                <ItemTemplate>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td style="color: #000000" colspan="2">
                                                                                                                <asp:Label ID="_lbtnNoOrder" runat="server" Style="margin-left: 0;" Text='<%# DataBinder.Eval(Container.DataItem, "nojo") %>'>
                                                                                                                </asp:Label>
                                                                                                                &nbsp;|&nbsp;
                                                                                                                <asp:Label ID="_lblTglOrder" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "TglOrder"), "dd-MMM-yyyy") %>'>
                                                                                                                </asp:Label>
                                                                                                                <asp:Label ID="_lblJamOrder" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "TglInsert"), "HH:mm") %>'>
                                                                                                                </asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="txtweak" style="font-style: italic; text-align: right; width: 80px;">
                                                                                                                Unit
                                                                                                            </td>
                                                                                                            <td class="txtweak" style="width: 120px;">
                                                                                                                <asp:Label ID="_lblUnit" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NmUnit") %>'>
                                                                                                                </asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nama" runat="server" HeaderText="Informasi Pasien"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                <ItemTemplate>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td rowspan="3">
                                                                                                                <img id="imgPatient" src='<%# DataBinder.Eval(Container.DataItem, "photoUrl") %>'
                                                                                                                    border="0" align="absmiddle" width="50px" />
                                                                                                            </td>
                                                                                                            <td colspan="2" style="color: #000000">
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmpasien") %>'
                                                                                                                    ID="_lblNama" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td align="right" class="txtweak" style="font-style: italic">
                                                                                                                Tanggal lahir
                                                                                                            </td>
                                                                                                            <td class="txtweak">
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "tgllahir"), "dd-MMM-yyyy") %>'
                                                                                                                    ID="_lblTglLahir" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td align="right" class="txtweak" style="font-style: italic">
                                                                                                                No. RM
                                                                                                            </td>
                                                                                                            <td class="txtweak">
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "norm") %>'
                                                                                                                    ID="_lblNomorRawatMedis" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="noreg" runat="server" HeaderText="Informasi Kunjungan"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                <ItemTemplate>
                                                                                                    <table style="width: 220px">
                                                                                                        <tr>
                                                                                                            <td style="color: #000000" colspan="2">
                                                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>'
                                                                                                                    ID="_lblNomorRegistrasi" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td valign="top" class="txtweak" style="font-style: italic; text-align: right; width: 100px;">
                                                                                                                Catatan Klinis
                                                                                                            </td>
                                                                                                            <td class="txtweak">
                                                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CatatanKlinis") %>'
                                                                                                                    ID="_lblCatatanKlinis" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nmInstansi" HeaderText="Penjamin" ItemStyle-Width="150">
                                                                                                <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblPenjaminBayar" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmInstansi") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="KdUnit" HeaderText="Kode Unit Asal Order" Visible="False">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblKdUnit" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "KdUnit") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nobukti" HeaderText="No. Bukti" Visible="False">
                                                                                                <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblNoBuktiOrder" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nobukti") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn HeaderText="JmlRealisasi" Visible="False">
                                                                                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblJmlRealisasi" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "JmlRealisasi") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                                                                HeaderText="Validasi" Visible="False">
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "validasi") %>'
                                                                                                        ID="_chkValidasi" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                                                                HeaderText="Dilayani" Visible="false">
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "isserviced") %>'
                                                                                                        ID="grdRegHeader_chkDilayani" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            
                                                                                            <asp:TemplateColumn Visible="False">
                                                                                                <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblNoBukti" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nobukti") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn Visible="false">
                                                                                                <ItemTemplate>
                                                                                                    <asp:ImageButton runat="server" ID="gridWorklist__ibtnDelete" CausesValidation="False"
                                                                                                        ImageUrl="/qislib/images/delete.png" alt="Delete this item" CommandName="__deleteWorklist"
                                                                                                        Visible="false" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                        </Columns>
                                                                                    </asp:DataGrid>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <!-- PAGE CONTENT END HERE -->
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>                        
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>
    <script language="javascript" src="/qislib/scripts/common/common.js"></script>
    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>
</body>
</html>
