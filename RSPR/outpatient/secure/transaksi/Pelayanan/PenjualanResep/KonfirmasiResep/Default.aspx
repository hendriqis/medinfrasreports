<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI, Version=1.9.0.0, Culture=neutral, PublicKeyToken=24d65337282035f2" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="QIS.Web.Secure.Transaksi.Pelayanan.PenjualanResep.KonfirmasiResep" %>

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
                       <tr>
                          <td align="left" colspan="4">
                              <asp:Panel ID="pnl_1" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tbody>
                                            <tr class="rheader">
                                                <td class="rheadercol" align="left" height="25">
                                                    Konfirmasi Resep
                                                </td>
                                            </tr>
                                                 <asp:Panel ID="pnl_Order" runat="server">
                                                        <table width="100%">
                                                            <tr>
                                                                <td>
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td width="20%">
                                                                                Tanggal Resep
                                                                            </td>
                                                                            <td width="40%">
                                                                                <Module:webcal ID="calTanggal" runat="server" DontResetDate="true"></Module:webcal>
                                                                            </td>
                                                                            <td align="right">
                                                                            </td>
                                                                        </tr>
                                                                     </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%">
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
                                                                <td width="100%">
                                                                    <div style="border-right: gainsboro 1px solid; border-top: gainsboro 1px solid; overflow: auto;
                                                                        border-left: gainsboro 1px solid; width: 100%; border-bottom: gainsboro 1px solid;
                                                                        height: 500px">
                                                                        <table bordercolor="gainsboro" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                                          <tr>
                                                                                <td class="rfieldgroup" align="right">
                                                                                      <asp:Button class="sbttn" ID="btnSave" Width="100" runat="server" Text="Save"></asp:Button>
                                                                                </td>
                                                                           </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:DataGrid ID="gridInformasiPasien" runat="server" Width="100%" CellPadding="0"
                                                                                        Height="100%" GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro"
                                                                                        AutoGenerateColumns="False" AllowSorting="True" CellSpacing="0" ShowFooter="True"
                                                                                       >
                                                                                        <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                        <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                        <EditItemStyle Font-Bold="false" />
                                                                                        <Columns>
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
                                                                                            <asp:TemplateColumn SortExpression="noresep" runat="server" HeaderText="No Resep"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                <ItemTemplate>
                                                                                                     <asp:Label ID="_lblNoResep" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noresep") %>'>
                                                                                                    </asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn SortExpression="nama" runat="server" HeaderText="Informasi Pasien"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                <ItemTemplate>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td colspan="2" style="color: #000000">
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmpasien") %>'
                                                                                                                    ID="_lblNama" />
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
                                                                                           <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Informasi Item"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                <ItemTemplate>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td colspan="2" style="color: #000000">
                                                                                                              <asp:Label Visible="false" runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                                                    ID="_lblKodeItem" />
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                                                    ID="_lblNamaItem" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                       <tr>
                                                                                                            <td align="right" class="txtweak" style="font-style: italic">
                                                                                                                Qty : 
                                                                                                            </td>
                                                                                                            <td class="txtweak">
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "hasil") %>'
                                                                                                                    ID="_lblHasil" />
                                                                                                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satobat") %>'
                                                                                                                    ID="_lblSatuanResep" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                            <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"
                                                                                                HeaderText="Approval">
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox runat="server" ID="grdRegHeader_chkApproval" Checked = '<%# DataBinder.Eval(Container.DataItem, "isApproval")%>'
                                                                                                    enabled ='<%# iif(DataBinder.Eval(Container.DataItem, "isApproval")=false, "true", "false") %>'/>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateColumn>
                                                                                           <asp:TemplateColumn HeaderText="Diterima">
                                                                                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="txtKeterangan" runat="server" Width="150" TextMode="MultiLine" Text='<%# DataBinder.Eval(Container.DataItem, "ketapproval") %>'></asp:TextBox>
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
