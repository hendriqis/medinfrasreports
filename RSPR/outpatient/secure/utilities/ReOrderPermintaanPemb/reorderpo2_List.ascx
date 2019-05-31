<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="reorderpo2_List.ascx.vb"
    Inherits="QIS.Web.reorderpo2_List" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<table cellspacing="0" cellpadding="0" width="100%" border="0">
    <tr>
        <td>
            <table cellspacing="0" border="0" cellpadding="0" width="100%" class="rheaderexpable">
                <tr>
                    <td style="padding-left: 5px">
                        <font color="White">Lokasi:</font>
                    </td>
                    <td>
                        <font color="White">
                            <asp:Label ID="SectionHeaderCaption_KodeLokasi" runat="server"></asp:Label></font>
                    </td>
                </tr>
                <tr>
                    <td width="150px" style="padding-left: 5px">
                        <font color="White">Nama Lokasi:</font>
                    </td>
                    <td>
                        <font color="White">
                            <asp:Label ID="SectionHeaderCaption_NamaLokasi" runat="server"></asp:Label></font>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="padding-left: 5px">
            <br />
            <asp:Panel ID="SectionPanel" runat="server">
                <asp:DataGrid ID="gridReorderPO" runat="server" Width="100%" AutoGenerateColumns="False"
                    CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                    GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="kdBarang" ShowFooter="True"
                    CellPadding="0" AllowSorting="True">
                    <HeaderStyle CssClass="gridHeaderStyle" />
                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                    <EditItemStyle Font-Bold="false" />
                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                    <SelectedItemStyle BackColor="CornflowerBlue" />
                    <Columns>
                        <asp:TemplateColumn runat="server" HeaderText="SROP" HeaderStyle-HorizontalAlign="Center"
                            Visible="False">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "srop") %>'
                                    ID="_chkSrop" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID='_chkPesan' />
                            </ItemTemplate>
                            <HeaderTemplate>
                                <input name="cbxSelectAll" enabled="" type="checkbox" style="visibility: hidden"
                                    onclick="javascript:checkAll(this.form,'_chkPesan');">
                            </HeaderTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="Gudang" ItemStyle-HorizontalAlign="Left"
                            HeaderStyle-HorizontalAlign="Left" Visible="False">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdgudang") %>'
                                    ID="_lblKdGudang" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="Lokasi" ItemStyle-HorizontalAlign="Left"
                            HeaderStyle-HorizontalAlign="Left" Visible="False">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>'
                                    ID="_lblKdLokasi" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="kdBarang" runat="server" HeaderText="Kode" ItemStyle-HorizontalAlign="Left"
                            HeaderStyle-HorizontalAlign="Left" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>'
                                    ID="_lblKdBarang" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="nmbarang" runat="server" HeaderText="Nama" ItemStyle-HorizontalAlign="Left"
                            HeaderStyle-HorizontalAlign="Left" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang") %>'
                                    ID="_lblNmItem" CssClass="txtlessstrong" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="saldo" runat="server" HeaderText="Saldo" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "saldo"), "#,##0.00") %>'
                                    ID="_lblSaldo" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="saldogdlain" runat="server" HeaderText="Saldo Gd.Lain"
                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "saldogdlain"), "#,##0.00") %>'
                                    ID="_lblSaldoGdLain" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="stokmin" runat="server" HeaderText="Min" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "stokmin"), "#,##0.00") %>'
                                    ID="_lblStockMin" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="stokmax" runat="server" HeaderText="Max" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "stokmax"), "#,##0.00") %>'
                                    ID="_lblStockMax" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="LTime" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# DataBinder.Eval(Container.DataItem, "leadtime") %>'
                                    ID="_lblLeadTime" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="Buffer" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# DataBinder.Eval(Container.DataItem, "safetystock") %>'
                                    ID="_lblSS" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="STime" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# DataBinder.Eval(Container.DataItem, "safetytime") %>'
                                    ID="_lblST" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="AVG" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="false">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "average"), "#,##0.00") %>'
                                    ID="_lblAVG" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="opo" RUNAT="server" HeaderText="On Order" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# format(DataBinder.Eval(Container.DataItem, "opo"), "#,##0.00") %>'
                                    ID="_lblOutStandingPO" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="opp" runat="server" HeaderText="On Request" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 15; margin-right: 5" Text='<%# format(DataBinder.Eval(Container.DataItem, "opp"), "#,##0.00") %>'
                                    ID="_lblOutStandingPP" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="rop" runat="server" HeaderText="ROP" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "rop"), "#,##0.00") %>'
                                    ID="_lblRop" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="satuankc" runat="server" HeaderText="Satuan"
                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="False">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>'
                                    ID="_lblSatuanKcl" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="satuankc" runat="server" HeaderText="Satuan"
                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuankc") %>'
                                    ID="_lblnmSatuanKcl" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="QtyPesan" runat="server" HeaderText="Minta Beli" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:TextBox ID="txtQtyPesan" AutoPostBack="False" runat="server" Style="margin-left: 1;
                                    margin-right: 5" BackColor="Transparent" class="right" Text='<%# format(DataBinder.Eval(Container.DataItem, "QtyPesan"), "#,##0.00") %>'
                                    Width="60" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="Satuan Besar" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center" Visible="True">
                            <ItemTemplate>
                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# Trim(DataBinder.Eval(Container.DataItem, "satuanbs")) & "/" & Trim(DataBinder.Eval(Container.DataItem, "Faktor")) %>'
                                    ID="_lblSatuanBsrFaktor" />
                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuanbs") %>'
                                    ID="_lblSatuanBsr" Visible="False" />
                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Faktor") %>'
                                    ID="_lblfaktor" Visible="False" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn runat="server" HeaderText="PBF" ItemStyle-HorizontalAlign="Left"
                            HeaderStyle-HorizontalAlign="Left" Visible="True">
                            <ItemTemplate>
                                <asp:TextBox ID="txtPBF" runat="server" Text='<%# Trim(DataBinder.Eval(Container.DataItem, "namasupplier")) + " [" + Trim(DataBinder.Eval(Container.DataItem, "kdsupplier2 ")) + "]" %>'
                                    BorderStyle="None" Style="cursor: hand" ForeColor="#FF6600" Font-Bold="True"
                                    BackColor="Transparent" ReadOnly="True" />
                            </ItemTemplate>
                            <ItemStyle Width="125px" />
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="padding-left: 25px">
                        <asp:Label ID="SectionFooterCaption" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!-- SPACER ROW -->
    <tr>
        <td height="18">
        </td>
    </tr>
</table>
