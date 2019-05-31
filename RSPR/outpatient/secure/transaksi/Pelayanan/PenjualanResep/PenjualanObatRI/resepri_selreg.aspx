<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="resepri_selreg.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanResep.PenjualanObatRI.ResepRiSelReg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Penjualan Resep Pasien Rawat Inap: Pilih Pasien</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta http-equiv="refresh" content="600" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <!--
	<div id=loadingmsg style="position:absolute; z-index:3; left:240; top:200; width:200; height:60; 
			  border-width:1; border-style:ridge; background-color:#eeeeee">
			<center>
				<br /><br /><img src="/qislib/images/cursor_hourglas.gif"><font face='Verdana' Size=1>Loading, Please wait ...</font><br /><br />
			</center>
	</div>
	-->
</head>
<body ms_positioning="GridLayout" onload="ffocus()">
    <form id="frmResepRiSelReg" runat="server">
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tbody>
            <tr>
                <td width="100%" height="100%" valign="top">
                    <div style="width: 100%; height: 100%; overflow: auto;">
                        <table cellspacing="0" cellpadding="5" width="100%" border="0">
                            <tr class="rfieldgroup">
                                <td align="center">
                                    <asp:CheckBox ID="chkAllPasien" runat="server" Text="Tampilkan Semua Pasien" AutoPostBack="True">
                                    </asp:CheckBox>
                                </td>
                            </tr>
                            <tr class="rbody">
                                <td align="left">
                                    <asp:Panel ID="pnl_1" runat="server">
                                        <table cellspacing="0" cellpadding="5" width="100%">
                                            <tr class="rheader">
                                                <td class="rheadercol" align="left" height="25">
                                                    Penjualan Resep Pasien Rawat Inap: Pilih Pasien
                                                </td>
                                            </tr>
                                            <asp:Panel ID="pnlGrid" runat="server">
                                                <tr class="rbody">
                                                    <td align="left" height="25">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="20%">
                                                                    <asp:CheckBox ID="chkSemua" runat="server" AutoPostBack="True" Text="Semua pasien dirawat">
                                                                    </asp:CheckBox>
                                                                </td>
                                                                <td width="50%">
                                                                    Ruang Perawatan:<br />
                                                                    <asp:DropDownList ID="ddlRuang" runat="server" AutoPostBack="True" Width="150">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    No. Registrasi
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:TextBox ID="txtNoReg" runat="server" Width="150" MaxLength="15"></asp:TextBox>&nbsp;&nbsp;
                                                                    <asp:Button class="sbttn" ID="BtnNoReg" runat="server" Text="Go" Width="50"></asp:Button>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr class="rbody">
                                                    <td class="rbodycol" align="center" height="25">
                                                        <asp:Panel ID="List" Style="overflow: auto" runat="server" Height="475">
                                                            <asp:DataGrid ID="gridPasienRI" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="Noreg"
                                                                ShowFooter="True" CellPadding="0">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:TemplateColumn runat="server" HeaderText="NAMA PASIEN" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmpasien") %>'
                                                                                ID="_lblNmPasien" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="No. Register" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>'
                                                                                ID="_lblNoreg" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="No. RM" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "norm") %>'
                                                                                ID="_lblNorm" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Ruang Rawat" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmruang") %>'
                                                                                ID="_lblnmruang" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="No. TT" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nott") %>'
                                                                                ID="_lblNoTT" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </asp:Panel>
                                        </table>
                                    </asp:Panel>
                                    <!-- Panel 2 -->
                                    <asp:Panel ID="pnl_2" runat="server">
                                        <table cellspacing="0" cellpadding="5" width="100%">
                                            <tr class="rheader">
                                                <td class="rheadercol" align="left" height="25">
                                                    Penjualan Resep Pasien Rawat Inap: Pilih Pasien
                                                </td>
                                            </tr>
                                            <tr class="rbody">
                                                <td class="rbodycol" align="center">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <!-- PAGE CONTENT BEGIN HERE -->
                                                        <tr>
                                                            <td width="100%" align="center">
                                                                <table width="50%">
                                                                    <tr>
                                                                        <td align="right" width="20%">
                                                                            Tanggal
                                                                        </td>
                                                                        <td>
                                                                            <Module:webcal ID="calTanggal" runat="server" DontResetDate="true"></Module:webcal>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none">
                                                                        <td width="20%">
                                                                            No. Bukti
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtNoBukti" runat="server" MaxLength="15" Width="22%"></asp:TextBox>
                                                                            <asp:Button class="sbttn" ID="btnNoBukti" runat="server" Text="Go..."></asp:Button>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" width="20%">
                                                                            No. Registrasi
                                                                        </td>
                                                                        <td colspan="3">
                                                                            <asp:TextBox ID="txtNoreg2" runat="server" Width="150" MaxLength="15"></asp:TextBox>&nbsp;&nbsp;
                                                                            <asp:Button class="sbttn" ID="btnGo2" runat="server" Text="Go.."></asp:Button>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="width: 50%">
                                                                            <asp:LinkButton ID="lbtnRefresh2" runat="server" witdh="20%" Text="[Refresh]" CausesValidation="False"></asp:LinkButton>
                                                                            &nbsp; &nbsp <a href="javascript:openResepRI('');">[Lihat Transaksi Resep]</a>
                                                                        </td>
                                                                        <td align="right" style="width: 50%">
                                                                            <asp:Label ID="lblTotalNoBukti" runat="server"></asp:Label>
                                                                            <asp:TextBox ID="txtTotalNoBukti" runat="server" Width="80" Style="text-align: right;"
                                                                                ReadOnly="true" BackColor="WhiteSmoke"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <asp:Panel ID="pnlPasienRI2" runat="server">
                                                                <td width="100%">
                                                                    <div style="overflow: auto; width: 100%; height: 450px">
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:DataGrid ID="gridPasienRI2" runat="server" Width="100%" Height="100%" AutoGenerateColumns="False"
                                                                                        CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                                        AllowPaging="False" PageSize="20" DataKeyField="" ShowFooter="False" CellPadding="0"
                                                                                        AllowSorting="True">
                                                                                        <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                        <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                        <EditItemStyle Font-Bold="false" />
                                                                                        <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                                        <Columns>
                                                                                            <asp:TemplateColumn SortExpression="nobukti" runat="server" HeaderText="No. Bukti"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nobukti") %>'
                                                                                                        ID="_lblNoBukti" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="notransaksi" runat="server" HeaderText="No. Resep"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "notransaksi") %>'
                                                                                                        ID="_lblNoResep" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nmpasien" runat="server" HeaderText="Nama Pasien"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmpasien") %>'
                                                                                                        ID="_lblNama" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="noreg" runat="server" HeaderText="Nomor Registrasi"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" class="LikeLink" Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>'
                                                                                                        ID="_lblNomorRegister" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="norm" runat="server" HeaderText="Nomor Rekam Medis"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "norm") %>'
                                                                                                        ID="_lblNomorRawatMedis" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nmruang" runat="server" HeaderText="Ruang Rawat"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmunit") %>'
                                                                                                        ID="_lblRuang" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nott" runat="server" HeaderText="Nomor Tempat Tidur"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nott") %>'
                                                                                                        ID="_lblNomorTempatTidur" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                                                                HeaderText="Validasi">
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "validasi") %>'
                                                                                                        ID="_chkValidasi" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                        </Columns>
                                                                                    </asp:DataGrid>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                            </asp:Panel>
                                                            <asp:Panel ID="pnlPasienRI3" runat="server">
                                                                <td width="100%">
                                                                    <div style="overflow: auto; width: 100%;">
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:DataGrid ID="gridPasienRI3" runat="server" Width="100%" Height="100%" AutoGenerateColumns="False"
                                                                                        CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                                        AllowPaging="False" PageSize="20" DataKeyField="" ShowFooter="False" CellPadding="0"
                                                                                        AllowSorting="True">
                                                                                        <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                        <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                        <EditItemStyle Font-Bold="false" />
                                                                                        <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                                        <Columns>
                                                                                            <asp:TemplateColumn runat="server" HeaderText="App" HeaderStyle-HorizontalAlign="Left"
                                                                                                ItemStyle-HorizontalAlign="Left" Visible="False">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "App") %>'
                                                                                                        ID="_lblApp" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nourut" runat="server" HeaderText="#" HeaderStyle-HorizontalAlign="Center"
                                                                                                ItemStyle-HorizontalAlign="Center" ItemStyle-Width="40" ItemStyle-VerticalAlign="top">
                                                                                                <ItemTemplate>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td style="text-align: right">
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5; font-size: 16pt"
                                                                                                                    Text='<%# DataBinder.Eval(Container.DataItem, "nourut") %>' ID="_lblNoUrut" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Label runat="server" Text='<%# iif(DataBinder.Eval(Container.DataItem, "isserviced")=false, "<img src=/qislib/images/nurse_outstanding.png border=0 align=absmiddle title=Outstanding />", "<img src=/qislib/images/nurse_done.png border=0 align=absmiddle title=Checked-in />") %>'
                                                                                                                    ID="_lblStatus" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nojo" runat="server" HeaderText="Informasi Order"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="top">
                                                                                                <ItemTemplate>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td style="color: #000000" colspan="2">
                                                                                                                <asp:Label ID="_lblNoJO" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nojo") %>'>
                                                                                                                </asp:Label>
                                                                                                                &nbsp;|&nbsp;
                                                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nobukti") %>'
                                                                                                                    ID="_lblNoBukti" />
                                                                                                                &nbsp;|&nbsp;
                                                                                                                <asp:Label ID="_lblTglOrder" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "TglOrder"), "dd-MMM-yyyy") %>'>
                                                                                                                </asp:Label>
                                                                                                                &nbsp;|&nbsp;
                                                                                                                <asp:Label ID="Label1" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "TglInsert"), "HH:mm") %>' />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="txtweak" style="font-style: italic; text-align: right; width: 80px;">
                                                                                                                Unit
                                                                                                            </td>
                                                                                                            <td class="txtweak">
                                                                                                                <asp:Label ID="_lblUnit" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NmUnit") %>'>
                                                                                                                </asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="txtweak" style="font-style: italic; text-align: right; width: 80px;">
                                                                                                                Asal Pasien
                                                                                                            </td>
                                                                                                            <td class="txtweak">
                                                                                                                <asp:Label ID="_lblAsalPasien" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmApp") %>'>
                                                                                                                </asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="txtweak" style="font-style: italic; text-align: right; width: 80px;">
                                                                                                                Petugas
                                                                                                            </td>
                                                                                                            <td class="txtweak">
                                                                                                                <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "UsrInsert") %>'>
                                                                                                                </asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="TipeJenisResep" runat="server" HeaderText="Tipe dan No. Resep"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="top">
                                                                                                <ItemTemplate>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td colspan="2">
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "TipeJenisResep") %>'
                                                                                                                    ID="_lblTipeJenisResep" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td style="font-style: italic; text-align: right; width: 80px;">
                                                                                                                No. Resep
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "notransaksi") %>'
                                                                                                                    ID="_lblNoResep" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nama" runat="server" HeaderText="Informasi Pasien"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="top">
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
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="top">
                                                                                                <ItemTemplate>
                                                                                                    <table style="width: 220px">
                                                                                                        <tr>
                                                                                                            <td style="color: #000000" colspan="2">
                                                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>'
                                                                                                                    ID="_lblNomorRegister" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <asp:Panel ID="_pnlRuang" runat="server" Visible='<%# LEN(DataBinder.Eval(Container.DataItem, "nmunit")) > 0 %>'>
                                                                                                            <tr>
                                                                                                                <td class="txtweak" style="font-style: italic; text-align: right; width: 100px;">
                                                                                                                    Ruang
                                                                                                                </td>
                                                                                                                <td class="txtweak">
                                                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmunit") %>'
                                                                                                                        ID="_lblNmRuang" />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="txtweak" style="font-style: italic; text-align: right; width: 100px;">
                                                                                                                    No. Tempat Tidur
                                                                                                                </td>
                                                                                                                <td class="txtweak">
                                                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nott") %>'
                                                                                                                        ID="_lblNomorTempatTidur" />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </asp:Panel>
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
                                                                                            <asp:TemplateColumn SortExpression="nmInstansi" HeaderText="Penjamin" ItemStyle-Width="150"
                                                                                                ItemStyle-VerticalAlign="top">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="_lblPenjaminBayar" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmInstansi") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                                                                HeaderText="Validasi">
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "validasi") %>'
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
                                                                                            <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center">
                                                                                                <ItemTemplate>
                                                                                                    <asp:ImageButton runat="server" ID="btnSave" CausesValidation="False" ImageUrl="/qislib/images/done.png"
                                                                                                        alt="Check-in" CommandName="Save" Visible='<%# iif(DataBinder.Eval(Container.DataItem,"validasi")=false,false,iif(DataBinder.Eval(Container.DataItem,"isserviced")=false,true,false)) %>' />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn runat="server" HeaderText="KdLayan" HeaderStyle-HorizontalAlign="Left"
                                                                                                ItemStyle-HorizontalAlign="Left" Visible="False">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "KdLayan") %>'
                                                                                                        ID="_lblKdLayan" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                        </Columns>
                                                                                    </asp:DataGrid>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                            </asp:Panel>
                                                        </tr>
                                                        <!-- PAGE CONTENT END HERE -->
                                                    </table>
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
        </tbody>
    </table>
    </form>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script language="javascript">
        function ffocus() {
            try {
                document.getElementById('txtNoReg').focus()
            }
            catch (e) {
            }
        }
    </script>

    <!--TRIDESIGNCOMMENT-,33,34,2,2,3,3,34,2,2,3,3,34,2,2,3,33TRIDESIGNCOMMENTEND-3TRIDESIGNPRECOMMENT-TRIDESIGNCOMMENT-33,34,2,2,3,3,34,2,2,3,3,34,2,2,3,33TRIDESIGNCOMMENTEND-33TRIDESIGNPRECOMMENT-

<script>
	if (document.all) document.all.loadingmsg.style.visibility='hidden';
</script>
<script>
	if (document.layers) document.loadingmsg.visibility='hidden'
</script>
<script>
	if (document.getElementById) document.getElementById('loadingmsg').style.visibility='hidden'
</script>

-->
    </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></FORM>
</body>
</html>
