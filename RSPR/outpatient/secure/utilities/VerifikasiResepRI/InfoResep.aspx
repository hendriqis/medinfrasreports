<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InfoResep.aspx.vb" Inherits="QIS.Web.secure.utilities.VerifikasiResepRI.InfoResep" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Resep</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script language="javascript" src="/qislib/scripts/RI_/RI___Dlg_RSSM.js"></script>
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/common/common.js' language="javascript"></script>
</head>
<body onload="center();">
    <form id="frmkunjPoli" runat="server">
    <table border="0" width="100%" cellspacing="5" cellpadding="0">
        <tr>
            <td style="padding-top: 5px" align="left">
                <table cellspacing="0" cellpadding="5" width="100%">
                    <tr class="rheader">
                        <td class="rheadercol" align="left" height="25">
                            Informasi Resep: (<asp:Label ID="lblNama" runat="server" />)
                        </td>
                    </tr>
                    <tr class="rbody">
                        <td class="rbodycol">
                            <table width="100%">
                                <tr>
                                    <td width="20%">
                                        No. Resep
                                    </td>
                                    <td width="50%">
                                        <asp:TextBox ID="txtNoResep" runat="server" ReadOnly="true" Width="45%" />
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <div style="overflow: auto; width: 100%; height: 450">
                                <table cellspacing="0" cellpadding="0" width="100%">
                                    <tr class="rbody">
                                        <td>
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%" height="100%">
                                                        <asp:DataGrid ID="gridResep" runat="server" Width="100%" AutoGenerateColumns="False"
                                                            CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                            DataKeyField="counter" ShowFooter="False" CellPadding="0" AllowSorting="True">
                                                            <HeaderStyle CssClass="gridheaderstyle" />
                                                            <AlternatingItemStyle CssClass="gridAlternatingItemstyle" />
                                                            <AlternatingItemStyle CssClass="gridItemstyle" />
                                                            <SelectedItemStyle BackColor="CornflowerBlue" />
                                                            <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                            <EditItemStyle Font-Bold="true" />
                                                            <Columns>
                                                                <asp:BoundColumn DataField="noresep" Visible="False" />
                                                                <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                <asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                            ID="_lblCounter" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Lokasi" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>'
                                                                            ID="_lblLokasi" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="Jenis" runat="server" HeaderText="R/" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "Jenis") %>'
                                                                            ID="_chkResep" />
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Resep" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='' ID="_lblResep" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Tipe" ItemStyle-HorizontalAlign="Center"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "tipe") %>'
                                                                            ID="_lblTipe" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Kode Item" ItemStyle-HorizontalAlign="Center"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                            ID="_lblKodeItem" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Expired" ItemStyle-HorizontalAlign="Center"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "expired"), "dd-MM-yyyy") %>'
                                                                            ID="_lblExpired" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama Item"
                                                                    ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                            ID="_lblNamaItem" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="qtysatuan" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "qtysatuan") %>'
                                                                            ID="_lblQtySatuan" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="satobat" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Center"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satobat") %>'
                                                                            ID="_lblSatuanObat" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="qtyresep" runat="server" HeaderText="Qty Resep"
                                                                    ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyresep"),"#,##0.00") %>'
                                                                            ID="_lblQtyResep" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="hasil" runat="server" HeaderText="Hasil" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hasil"),"#,##0.00") %>'
                                                                            ID="_lblHasil" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Qty Diminta" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyditagih"),"#,##0.00") %>'
                                                                            ID="_lblQtyDitagih" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Tarif" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargajual"),"#,##0.00") %>'
                                                                            ID="_lblHarga" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Selisih" HeaderStyle-HorizontalAlign="Center"
                                                                    ItemStyle-HorizontalAlign="Right" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "selisih"),"#,##0.00") %>'
                                                                            ID="_lblSelisih" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "Diskonpc"),"#,##0.00") %>'
                                                                            ID="_lblDiskon" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Em. Racikan" ItemStyle-HorizontalAlign="right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "embalace"),"#,##0.00") %>'
                                                                            ID="_lblEmbalaceR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Qty Em. Obat" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtykemasO"),"#,##0.00") %>'
                                                                            ID="_lblQtyKemasO" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Em. Obat" ItemStyle-HorizontalAlign="right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "embalaceO"),"#,##0.00") %>'
                                                                            ID="_lblEmbalaceO" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="UangR" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "uangr"),"#,##0.00") %>'
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
                                                                <asp:TemplateColumn runat="server" HeaderText="Kemas Racikan" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kemas") %>'
                                                                            ID="_lblKodeKemasanR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Kemas Obat" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kemasO") %>'
                                                                            ID="_lblKodeKemasanO" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Aturan Pakai" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "aturan") %>'
                                                                            ID="_lblAturan" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="IkutObat" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "ikutobat") %>'
                                                                            ID="_lblIkutObat" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="jamin" runat="server" HeaderText="Dijamin" HeaderStyle-HorizontalAlign="Center"
                                                                    Visible="True">
                                                                    <ItemTemplate>
                                                                        <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "jamin") %>'
                                                                            ID="_chkJamin" />
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Kode UangR" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kduangr") %>'
                                                                            ID="_lblKdUangR" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Hpr" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hpr"),"#,##0.00") %>'
                                                                            ID="_lblHpr" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="HargaDsr" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargadsr"),"#,##0.00") %>'
                                                                            ID="_lblHargaDsr" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="MarkUp" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "markup"),"#,##0.00") %>'
                                                                            ID="_lblMarkUp" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Coverage" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "coverage"),"#,##0.00") %>'
                                                                            ID="_lblCoverage" />
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
                                                        Total Nilai Resep
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
</body>
</html>
