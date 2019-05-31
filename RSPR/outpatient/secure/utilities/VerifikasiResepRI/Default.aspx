<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="QIS.Web.secure.utilities.VerifikasiResepRI.Verifikasi" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<html>
<head>
    <title>Verifikasi Resep Pasien Rawat Inap</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
</head>
<body>
    <form id="frmHistoryBulanan" runat="server">
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
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
                                            Verifikasi Resep Pasien Rawat Inap
                                        </td>
                                    </tr>
                                    <asp:Panel ID="pnlGrid" runat="server">
                                        <tr class="rbody">
                                            <td align="left" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="10%">
                                                            Periode
                                                        </td>
                                                        <td>
                                                            <Module:webcal ID="caltglawal" runat="server" DontResetDate="true"></Module:webcal>
                                                            &nbsp;s/d&nbsp;
                                                            <Module:webcal ID="caltglakhir" runat="server" DontResetDate="true"></Module:webcal>
                                                            &nbsp;&nbsp;
                                                            <asp:LinkButton ID="lBtnRefresh" runat="server" Text="[Refresh]" CausesValidation="true" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Status Transaksi
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlpilihan" runat="server" Width="256" AutoPostBack="true" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table>
                                                    <tr>
                                                        <td width="30%" align="left">
                                                            <asp:Button ID="btnProses" runat="server" Width="100" Text="Verifikasi" CssClass="sbttn">
                                                            </asp:Button>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblKeterangan" runat="server" Text="Proses Verifikasi Selesai" ForeColor="Red"
                                                                Font-Size="14pt">
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <tr class="rbody">
                                        <td>
                                            <table width="100%">
                                                <tr class="rbody">
                                                    <td width="100%">
                                                        <telerik:RadTabStrip ID="rtsResep" runat="server" Skin="Windows7" MultiPageID="rmpResep"
                                                            SelectedIndex="0" CssClass="tabStrip" CausesValidation="false">
                                                            <Tabs>
                                                                <telerik:RadTab Text="Penjualan Resep">
                                                                </telerik:RadTab>
                                                                <telerik:RadTab Text="Retur Resep">
                                                                </telerik:RadTab>
                                                            </Tabs>
                                                        </telerik:RadTabStrip>
                                                        <telerik:RadMultiPage ID="rmpResep" runat="server" SelectedIndex="0" CssClass="multiPage"
                                                            BackColor="#DFE9F5">
                                                            <telerik:RadPageView ID="RadPageView1" runat="server" BackColor="#F5F5F5">
                                                                <asp:DataGrid ID="gridResep" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                    CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                    GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="noresep" ShowFooter="True"
                                                                    CellPadding="0" AllowSorting="True">
                                                                    <HeaderStyle CssClass="gridheaderstyle" />
                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemstyle" />
                                                                    <AlternatingItemStyle CssClass="gridItemstyle" />
                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                    <Columns>
                                                                        <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Enabled='<%# iif(DataBinder.Eval(Container.DataItem, "posting") AND NOT DataBinder.Eval(Container.DataItem, "verifikasiflag"),true,false)  %>'
                                                                                    Checked="false" ID="_chkPesan" />
                                                                            </ItemTemplate>
                                                                            <HeaderTemplate>
                                                                                <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                                            </HeaderTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="verifikasiflag" runat="server" HeaderText="Verifikasi"
                                                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="True"
                                                                            ItemStyle-Width="80">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "verifikasiflag") %>'
                                                                                    ID="_chkVerifikasi" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="posting" runat="server" HeaderText="Approval"
                                                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="True"
                                                                            ItemStyle-Width="80">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "posting") %>'
                                                                                    ID="_chkApproval" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="noresep" runat="server" HeaderText="No. Resep"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <table>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:LinkButton runat="server" ID="__lbtnNoResep" CausesValidation="False" Text='<%# DataBinder.Eval(Container.DataItem, "noresep") %>'
                                                                                                CommandName="__ResepDt" />
                                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noresep") %>'
                                                                                                ID="_lblNoResep" Visible="false" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "tglresep"), "dd-MM-yyyy") %>'
                                                                                                ID="_lblTanggal" />
                                                                                            <%# Left(DataBinder.Eval(Container.DataItem, "jamresep"),2) + ":" + Right(DataBinder.Eval(Container.DataItem, "jamresep"),2) %>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="noreg" runat="server" HeaderText="No. Registrasi"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <table>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>'
                                                                                                ID="_lblNoRegistrasi" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <%# Format(DataBinder.Eval(Container.DataItem, "tglmasuk"), "dd-MMM-yyyy") %>
                                                                                            <%# DataBinder.Eval(Container.DataItem, "jammasuk") %>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="nama" runat="server" HeaderText="Nama Pasien"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <table>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nama") %>'
                                                                                                ID="_lblNamaPasien" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="txtweak">
                                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nminstansi") %>'
                                                                                                ID="_lblNamaInstansi" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn runat="server" HeaderText="Petugas" ItemStyle-HorizontalAlign="Left"
                                                                            HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <table>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <%# DataBinder.Eval(Container.DataItem, "updater") %>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <%# Format(DataBinder.Eval(Container.DataItem, "lupdate1"),"dd-MMM-yyyy HH:mm") %>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn runat="server" HeaderText="Total" ItemStyle-HorizontalAlign="Right"
                                                                            HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "total"), "#,##0.00") %>'
                                                                                    ID="_lblTotal" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                    </Columns>
                                                                </asp:DataGrid>
                                                            </telerik:RadPageView>
                                                            <telerik:RadPageView ID="RadPageView2" runat="server" BackColor="#F5F5F5">
                                                                <asp:DataGrid ID="gridRetur" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                    CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                    GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="nobukti" ShowFooter="True"
                                                                    CellPadding="0" AllowSorting="True">
                                                                    <HeaderStyle CssClass="gridheaderstyle" />
                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemstyle" />
                                                                    <AlternatingItemStyle CssClass="gridItemstyle" />
                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                    <Columns>
                                                                        <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Enabled='<%# DataBinder.Eval(Container.DataItem, "posting") %>'
                                                                                    Checked="false" ID="_chkPesan" />
                                                                            </ItemTemplate>
                                                                            <HeaderTemplate>
                                                                                <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                                            </HeaderTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="verifikasiflag" runat="server" HeaderText="Verifikasi" HeaderStyle-HorizontalAlign="Center"
                                                                            ItemStyle-HorizontalAlign="Center" Visible="True" ItemStyle-Width="80">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "verifikasiflag") %>'
                                                                                    ID="_chkVerifikasiFlag" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="posting" runat="server" HeaderText="Approval" HeaderStyle-HorizontalAlign="Center"
                                                                            ItemStyle-HorizontalAlign="Center" Visible="True" ItemStyle-Width="80">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "posting") %>'
                                                                                    ID="_chkApproval" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="nobukti" runat="server" HeaderText="No. Retur"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton runat="server" ID="__lbtnNoRetur" CausesValidation="False" Text='<%# DataBinder.Eval(Container.DataItem, "nobukti") %>'
                                                                                    CommandName="__ReturDt" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="noreg" runat="server" HeaderText="No. Registrasi"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>'
                                                                                    ID="_lblNoRegistrasi" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="nama" runat="server" HeaderText="Nama Pasien"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nama") %>'
                                                                                    ID="_lblNamaPasien" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="tgtrans" runat="server" HeaderText="Tgl. Retur"
                                                                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "tgtrans"), "dd-MM-yyyy") %>'
                                                                                    ID="_lblTanggal" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn runat="server" HeaderText="Total" ItemStyle-HorizontalAlign="Right"
                                                                            HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "total"), "#,##0.00") %>'
                                                                                    ID="_lblTotal" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                    </Columns>
                                                                </asp:DataGrid>
                                                            </telerik:RadPageView>
                                                        </telerik:RadMultiPage>
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
            </td>
        </tr>
    </table>
    </form>
    <script src='/qislib/scripts/common/util.js' language="javascript"></script>
</body>
</html>
