<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InfoRetur.aspx.vb" Inherits="QIS.Web.secure.utilities.VerifikasiResepRI.InfoRetur" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Retur Resep</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script language="javascript" src="/qislib/scripts/RI_/RI___Dlg_RSSM.js"></script>
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
</head>
<body onload="center();">
    <form id="frmkunjPoli" runat="server">
    <table border="0" width="100%" cellspacing="5" cellpadding="0">
        <tr>
            <td style="padding-top: 5px" align="left">
                <table cellspacing="0" cellpadding="5" width="100%">
                    <tr class="rheader">
                        <td class="rheadercol" align="left" height="25">
                            Informasi Retur Resep: (<asp:Label ID="lblNama" runat="server" />)
                        </td>
                    </tr>
                    <tr class="rbody">
                        <td class="rbodycol" align="middle" height="25">
                            <table width="100%">
                                <tr>
                                    <td width="20%">
                                        No. Retur
                                    </td>
                                    <td width="50%">
                                        <asp:TextBox ID="txtNoRetur" runat="server" ReadOnly="true" Width="45%" />
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <div style="overflow: auto; width: 100%; height: 450">
                                <table cellspacing="0" cellpadding="0" width="100%">
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" height="25">
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%" height="100%">
                                                        <asp:DataGrid ID="gridReturResep" runat="server" Width="100%" AutoGenerateColumns="False"
                                                            CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                            DataKeyField="counter" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                            <HeaderStyle CssClass="gridheaderstyle" />
                                                            <AlternatingItemStyle CssClass="gridAlternatingItemstyle" />
                                                            <AlternatingItemStyle CssClass="gridItemstyle" />
                                                            <SelectedItemStyle BackColor="CornflowerBlue" />
                                                            <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                            <Columns>
                                                                <asp:BoundColumn DataField="nobukti" Visible="False" />
                                                                <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                <asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                            ID="_lblCounter" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="kdbarang" runat="server" HeaderText="Kode Item"
                                                                    ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                            ID="_lblKodeItem" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama Item"
                                                                    ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                            ID="_lblNamaItem" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="qtysatuan" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtysatuan"), "#,##0.00") %>'
                                                                            ID="_lblQtySatuan" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan Obat"
                                                                    ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                            ID="_lblSatuanObat" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargajual"),"#,##0.00") %>'
                                                                            ID="_lblHarga" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Selisih" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "selisih"),"#,##0.00") %>'
                                                                            ID="_lblSelisih" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Expired" ItemStyle-HorizontalAlign="Center"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "expired"), "dd-MM-yyyy") %>'
                                                                            ID="_lblExpired" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="No. Resep" ItemStyle-HorizontalAlign="Center"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "buktirsp") %>'
                                                                            ID="_lblBuktiRsp" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "diskonpc") %>'
                                                                            ID="_lblDiskonPc" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="DiskonRp" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "diskonrp") %>'
                                                                            ID="_lblDiskonRp" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="QtyKemasR" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "qtykemasr") %>'
                                                                            ID="_lblQtyKemasR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="KemasR" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kemasr") %>'
                                                                            ID="_lblKemasR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="EmbalaceR" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "embalacer") %>'
                                                                            ID="_lblEmbalaceR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="QtyKemasO" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "qtykemaso") %>'
                                                                            ID="_lblQtyKemasO" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="KemasO" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kemaso") %>'
                                                                            ID="_lblKemasO" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="EmbalaceO" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "embalaceo") %>'
                                                                            ID="_lblEmbalaceO" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="KdUangR" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kduangr") %>'
                                                                            ID="_lblKdUangR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="UangR" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "uangR") %>'
                                                                            ID="_lblUangR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subtotal"),"#,##0.00") %>'
                                                                            ID="_lblSubTotal" />
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
                                        <td align="right">
                                            <table>
                                                <tr class="rbody">
                                                    <td align="right">
                                                        Total Nilai Retur Obat
                                                    </td>
                                                    <td align="right">
                                                        &nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="lblTotal" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
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
            </td>
        </tr>
    </table>
    </form>
    <script src='/qislib/scripts/common/common.js' language="javascript"></script>
</body>
</html>
