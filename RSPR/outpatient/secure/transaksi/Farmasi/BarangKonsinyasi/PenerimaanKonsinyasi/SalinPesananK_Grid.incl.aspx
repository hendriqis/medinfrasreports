<script language="javascript">
    function konfirmasi() {
        if (!confirm('Anda yakin akan salin pesanan ini ?'))
            return false;
        else
            return true;
    }
</script>
<!-- START DATAGRID SALIN PESANAN -->
<table width="100%" class="rbody">
    <tr>
        <td width="100%" align="right">
            <br />
            <asp:button id="btnSavePesanan" runat="server" text="Salin" cssclass="sbttn" Width="100" causesvalidation="False" />
            <asp:button id="btnCancel" runat="server" text="Batal" causesvalidation="False" cssclass="sbttn" Width="100" />
        </td>
    </tr>
    <tr>
        <td width="100%" height="100%">
            <div style="overflow: auto; width: 100%;">
                <asp:datagrid id="gridSalinPesanan" runat="server" width="100%" autogeneratecolumns="False"
                    cellspacing="0" bordercolor="Gainsboro" enableviewstate="True" borderwidth="1"
                    GridLines="none" allowpaging="false" pagesize="20" datakeyfield="counter"
                    showfooter="True" cellpadding="0" allowsorting="True">
				    <HeaderStyle CssClass="gridHeaderStyle" />
                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                    <EditItemStyle Font-Bold="false" />
                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                    <Columns>
						<asp:TemplateColumn runat="server" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center">
							<ItemTemplate>
								<asp:checkbox	runat="server" 
												enabled="True" 
												checked="false" 
												ID="_chkPesan" />
							</ItemTemplate>
							<HeaderTemplate>
								<input	name="cbxSelectAll" 
										type="checkbox" 
										onclick="javascript:checkAll(this.form,'_chkPesan');">
							</HeaderTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Counter" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
										ID="_lblCounter"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="nopesan" 
											runat="server" 
											HeaderText="No. Pesan" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>' 
										ID="_lblNoPesan"/>
							</itemtemplate>
						</asp:TemplateColumn>
						
						<asp:TemplateColumn SortExpression="Tanggal" 
											runat="server" 
											HeaderText="Tgl. Pesan" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "Tanggal") %>' 
										ID="_lblTglPesan"/>
							</itemtemplate>
						</asp:TemplateColumn>
						
						<asp:TemplateColumn runat="server" 
											HeaderText="Kode Supplier" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "supplier") %>' 
										ID="_lblKdSupplier"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="kodeitem" 
											runat="server" 
											HeaderText="Kode" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kodeitem") %>' 
										ID="_lblKdBarang"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="namaItem" 
											runat="server" 
											HeaderText="Nama" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "namaItem") %>'
										ID="_lblNmItem"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="namaItem2" 
											runat="server" 
											HeaderText="Catalog No." 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "namaItem2") %>'
										ID="_lblCatalogNo"/>
							</itemtemplate>
						</asp:TemplateColumn>
						
						<asp:TemplateColumn runat="server" 
											HeaderText="Qty Pesan" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "qtypesan"), "##0.00") %>' 
										ID="_lblQtyPesan"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Qty Trm" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "qtytrm"), "##0.00") %>' 
										ID="_lblQtyTerima"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="qtysisa" 
											runat="server" 
											HeaderText="Qty Sisa" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	id="txtQtySisaCek" 
												autopostback="False"
												Runat="server" 
												BorderStyle="None"
												BackColor="Transparent"
												Text='<%# format(DataBinder.Eval(Container.DataItem, "qtysisa"), "##0.00") %>'
												ReadOnly="True" 
												Width="50" />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="qtysisa" 
											runat="server" 
											HeaderText="Qty Terima" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	id="txtQtySisa" 
												autopostback="False" 
												Runat="server" 
												Text='<%# format(DataBinder.Eval(Container.DataItem, "qtysisa"), "##0.00") %>' 
												Width="50" />
							</itemtemplate>
						</asp:TemplateColumn>
						
						
						<asp:TemplateColumn SortExpression="nmsatuan" 
											runat="server" 
											HeaderText="Satuan" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>' 
										ID="_lblSatuan"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Include PPN" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:checkbox	runat="server" 
												enabled="True" 
												checked='<%# DataBinder.Eval(Container.DataItem, "ppn") %>'  
												ID="_chkInclPPn" />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Harga" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	runat="server"	
												style="margin-left:5;margin-right:5" 
												Text='<%# format(DataBinder.Eval(Container.DataItem, "harga"), "#,##0.00") %>' 
												ID="_txtHarga"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Diskon" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	runat="server"	
												style="margin-left:5;margin-right:5" 
												Width="40"
												Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc"), "##0.00") %>' 
												ID="_txtDiskonPc"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="faktor" 
											runat="server" 
											HeaderText="Faktor" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"	
											style="margin-left:5;margin-right:5" 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "faktor"), "##0.00") %>' 
											ID="_lblFaktor"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Expired" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox id="_txtExpired" 
											style="margin-left:5;margin-right:5" 
											autopostback="true" 
											Runat="server" 
											Text='' 
											Width="90"/>
								
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:CompareValidator	id="cvQtyGrid2" 
														runat="server" 
														ControlToValidate="txtQtySisa" 
														Operator="DataTypeCheck" 
														Type="Double" 
														ErrorMessage='<%# "Qty Terima harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:CompareValidator>
								<asp:CompareValidator	id="cvHargaGrid" 
														runat="server" 
														ControlToValidate="_txtHarga" 
														Operator="DataTypeCheck" 
														Type="Currency" 
														ErrorMessage='<%# "Harga harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:CompareValidator>
								<asp:CompareValidator	id="cvDiskonPcGrid" 
														runat="server" 
														ControlToValidate="_txtDiskonPc" 
														Operator="DataTypeCheck" 
														Type="Double" 
														ErrorMessage='<%# "Diskon1 harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:CompareValidator>
								<asp:RangeValidator		id="rvDiskonPcGrid" 
														runat="server" 
														ControlToValidate="_txtDiskonPc" 
														MaximumValue="100" 
														MinimumValue="0" 
														Type="Double" 
														ErrorMessage='<%# "Diskon melebihi 100% - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:RangeValidator>
								
							</itemtemplate>
							</asp:TemplateColumn>
					</Columns>

                </asp:datagrid>
            </div>
        </td>
    </tr>
</table>
<table cellspacing="0" cellpadding="5" width="100%">
    <tr>
        <td align="left">
            <p>
                <asp:validationsummary id="ValidationSummarySalin" runat="server" headertext="Field(s) berikut masih belum benar."></asp:validationsummary>
            </p>
        </td>
    </tr>
</table>
<!-- END DATA GRID -->
