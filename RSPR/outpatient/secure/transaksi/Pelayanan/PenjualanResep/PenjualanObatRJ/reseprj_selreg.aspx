<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reseprj_selreg.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanResep.PenjualanObatRJ.ResepRj_SelReg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Penjualan Resep Pasien Rawat Jalan: Pilih Pasien</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <!--
	<div id=loadingmsg style="position:absolute; z-index:3; left:240; top:200; width:200; height:60; 
			  border-width:1; border-style:ridge; background-color:#eeeeee">
			<center>
				<br /><br /><img src="/qislib/images/cursor_hourglas.gif"><font face='Verdana' Size=1><b>Loading, Please wait ...</b></font><br /><br />
			</center>
	</div>
	-->
</head>
<body ms_positioning="GridLayout" onload="ffocus()">
    <form id="frmResepRjSelReg" runat="server">
    <table border="0" width="100%" style="height: 100%;" cellspacing="0" cellpadding="2">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top" style="height: 100%;">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="0" cellpadding="5" width="100%" border="0">
                        <tr class="rfieldgroup">
                            <td align="center">
                                <asp:CheckBox ID="chkAllPasien" runat="server" Text="Tampilkan Semua Pasien" AutoPostBack="True">
                                </asp:CheckBox>                                    
                            </td>
                        </tr>                        
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Penjualan Resep Pasien Rawat Jalan: Pilih Pasien
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="center" height="25">
                                            <table width="50%">
                                                <tr>
                                                    <td width="20%" style="text-align: right;">
                                                        Tanggal
                                                    </td>
                                                    <td width="40%">
                                                        <Module:webcal ID="calTanggal" runat="server" DontResetDate="true"></Module:webcal>                                                        
                                                    </td>
                                                </tr>
                                                <tr style="display: none">
                                                    <td>
                                                        <asp:LinkButton ID="lbtnPoli" runat="server" Text="Poliklinik" CausesValidation="False" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtKodePoli" runat="server" MaxLength="10" Width="150" AutoPostBack="true" />
                                                        &nbsp;&nbsp; <b>
                                                            <asp:Label ID="Desc_txtKodePoli" runat="server" /></b>
                                                    </td>
                                                </tr>
                                                <tr style="display: none">
                                                    <td>
                                                        No. Bukti
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNoReg" runat="server" MaxLength="15" Width="150" />
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="BtnNoReg" runat="server" Text="Go.." class="sbttn" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td style="width: 100%">
                                            <table width="100%">
                                                <tr>
                                                    <td style="width: 50%;">
                                                        <asp:LinkButton ID="lbtnRefresh" runat="server" Text="[Refresh]" CausesValidation="False" />
                                                        &nbsp;&nbsp;&nbsp; <a href="JavaScript:openResepRJ('','','')">[Lihat Transaksi Resep]</a>
                                                    </td>
                                                    <td style="width: 50%;" align="right">
                                                        <asp:Label ID="lblTotPasien" runat="server"></asp:Label>
                                                        <asp:TextBox ID="txtTotPasien" runat="server" Width="80" ReadOnly="true" BackColor="WhiteSmoke"
                                                            Style="text-align: right;"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td width="100%" height="100%">
                                            <div style="overflow: auto; width: 100%;">
                                                <asp:DataGrid ID="grdRegHeader" CellSpacing="0" CellPadding="0" runat="server" Width="100%"
                                                    ShowFooter="false" DataKeyField="noreg" PageSize="20" AllowPaging="false" GridLines="none"
                                                    BorderWidth="1" BorderColor="Gainsboro" AutoGenerateColumns="False" AllowSorting="True">
                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                    <EditItemStyle Font-Bold="false" />
                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                    <Columns>
                                                        <asp:TemplateColumn SortExpression="nourut" runat="server" HeaderText="#" HeaderStyle-HorizontalAlign="Center"
                                                            ItemStyle-HorizontalAlign="Center" ItemStyle-Width="40" ItemStyle-VerticalAlign="top">
                                                            <ItemTemplate>
                                                                <table>
                                                                    <tr>
                                                                        <td style="text-align: right">
                                                                            <asp:Label runat="server" Style="margin-left: 0; margin-right: 5; font-size: 16pt"
                                                                                Text='<%# DataBinder.Eval(Container.DataItem, "nourut") %>' ID="grdRegHeader_lblNoUrut" />
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
                                                                <table width="300px">
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
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak" style="font-style: italic; text-align: right; width: 80px;">
                                                                            Unit
                                                                        </td>
                                                                        <td class="txtweak" style="width: 210px;">
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
                                                                        <td valign="top" class="txtweak" style="font-style: italic; text-align: right; width: 80px;">
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
                                                                                ID="grdRegHeader_lblNama" />
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
                                                                                ID="grdRegHeader_lblNorm" />
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
                                                                                ID="grdRegHeader_lblNoreg" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak" style="font-style: italic; text-align: right; width: 60px;">
                                                                            Poliklinik
                                                                        </td>
                                                                        <td class="txtweak">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmunit") %>'
                                                                                ID="grdRegHeader_lblNmPoli" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak" style="font-style: italic; text-align: right; width: 60px;">
                                                                            Dokter
                                                                        </td>
                                                                        <td class="txtweak">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdokter") %>'
                                                                                ID="grdRegHeader_lblNmDokter" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmInstansi" HeaderText="Penjamin" ItemStyle-Width="150"
                                                            ItemStyle-VerticalAlign="top">
                                                            <ItemTemplate>
                                                                <asp:Label ID="grdRegHeader_lblInstansi" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmInstansi") %>'>
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                            HeaderText="Validasi">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "validasi") %>'
                                                                    ID="grdRegHeader_chkValidasi" />
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
                                                                    ID="grdRegHeader_lblKdLayan" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn runat="server" HeaderText="Instansi" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdinstansi") %>'
                                                                    ID="grdRegHeader_lblkdInstansi" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn runat="server" HeaderText="Kode Unit" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdunit") %>'
                                                                    ID="grdRegHeader_lblKdPoli" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="kddokter" runat="server" HeaderText="Kode Dokter"
                                                            Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kddokter") %>'
                                                                    ID="grdRegHeader_lblKdDokter" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                            HeaderText="Dilayani" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "isserviced") %>'
                                                                    ID="grdRegHeader_chkDilayani" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                    </Columns>
                                                </asp:DataGrid>
                                            </div>
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

</body>
</html>
