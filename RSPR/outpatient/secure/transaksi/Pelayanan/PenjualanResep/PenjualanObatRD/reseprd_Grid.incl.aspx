<!-- START DATAGRID Resep -->
<table width="100%">
    <tr>
        <td width="100%" height="100%">
            <asp:datagrid id="gridResep" runat="server" width="100%" autogeneratecolumns="False"
                cellspacing="0" bordercolor="Gainsboro" borderwidth="1" GridLines="none"
                height="100%" datakeyfield="counter" showfooter="True" cellpadding="0" allowsorting="True">
				<HeaderStyle Font-Bold="false" BackColor=#DEE3E7  Height=20 />								
                <AlternatingItemStyle BackColor=#EEEEEE  />
                <EditItemStyle Font-Bold="false" />
                <PagerStyle	Mode="NumericPages" HorizontalAlign="right" />
				<Columns>
					<asp:EditCommandColumn	runat="server" 
											EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>" 
											UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>" 
											CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
						<itemstyle HorizontalAlign="center" Width="26px" />
					</asp:EditCommandColumn>
					
					<asp:TemplateColumn ItemStyle-Width="26px">
						<ItemTemplate>
							<asp:ImageButton	Runat="server" 
												ID="__ibtnDelete" 
												CausesValidation="False" 
												ImageUrl="/qislib/images/delete.png" 
												AlternateText="Delete this item" 
												CommandName="__delete"
												style="margin-top:2" />
						</ItemTemplate>
					</asp:TemplateColumn>
					
					<asp:BoundColumn DataField="noresep" Visible="False" />
					<asp:BoundColumn DataField="kdbarang" visible="False" />																																																																																					
					
					<asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
										ID="_lblCounter"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn runat="server" HeaderText="Lokasi" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>' 
										ID="_lblLokasi"/>
						
						</itemtemplate>
					</asp:TemplateColumn>																																								
																					
					<asp:TemplateColumn SortExpression="Jenis" runat="server" HeaderText="R/" HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:checkbox	runat=server 
											enabled=false 
											checked='<%# DataBinder.Eval(Container.DataItem, "Jenis") %>' 
											ID="_chkResep" />
						
						</ItemTemplate>
						<itemstyle HorizontalAlign="Center" Width="50px" />
					</asp:TemplateColumn>
																					
					<asp:TemplateColumn runat="server" HeaderText="Resep" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='' 
										ID="_lblResep"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																																								
					<asp:TemplateColumn runat="server" HeaderText="Tipe" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "tipe") %>' 
										ID="_lblTipe"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn runat="server" HeaderText="Kode Item" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
										ID="_lblKodeItem"/>
						
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" HeaderText="Expired" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "expired"), "dd-MM-yyyy") %>' 
										ID="_lblExpired"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama Item" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
										ID="_lblNamaItem"/>
						
						</itemtemplate>
						
						<footertemplate>
						
							<asp:linkbutton		runat="server" 
												id="_btnAddNewRow" 
												CausesValidation="False" 
												CommandName="_AddNewRow" 
												Text="Tambah Data" 
												AccessKey="A" />
						
						</footertemplate>
					</asp:TemplateColumn>
																															
					<asp:TemplateColumn SortExpression="qtysatuan" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "qtysatuan") %>' 
										ID="_lblQtySatuan"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="satobat" runat="server" HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center"
										visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satobat") %>' 
										ID="_lblSatuanObat"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					<asp:TemplateColumn SortExpression="nmsatobat" runat="server" HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmsatobat") %>' 
										ID="_lblnmSatuanObat"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn SortExpression="qtyresep" runat="server" HeaderText="Qty Resep" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyresep"),"#,##0.00") %>' 
										ID="_lblQtyResep"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn SortExpression="hasil" runat="server" HeaderText="Hasil" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "hasil"),"#,##0.00") %>' 
										ID="_lblHasil"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn runat="server" HeaderText="Qty Diminta" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="false">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyditagih"),"#,##0.00") %>' 
										ID="_lblQtyDitagih"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Tarif" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargajual"),"#,##0.00") %>' 
										ID="_lblHarga"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Selisih" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right">
						<ItemTemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "selisih"),"#,##0.00") %>' 
										ID="_lblSelisih"/>
						
						</ItemTemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "Diskonpc"),"#,##0.00") %>' 
										ID="_lblDiskon"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="embalace" runat="server" HeaderText="Em. Racikan" ItemStyle-HorizontalAlign="right" HeaderStyle-HorizontalAlign="Center" Visible="True">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "embalace"),"#,##0.00") %>' 
										ID="_lblEmbalaceR"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Qty Em. Obat" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtykemasO"),"#,##0.00") %>' 
										ID="_lblQtyKemasO"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="embalaceO" runat="server" HeaderText="Em. Obat" ItemStyle-HorizontalAlign="right" HeaderStyle-HorizontalAlign="Center" Visible="True">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "embalaceO"),"#,##0.00") %>' 
										ID="_lblEmbalaceO"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="UangR" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "uangr"),"#,##0.00") %>' 
										ID="_lblUangR"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																			
					<asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:10;margin-right:10" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "subtotal"),"#,##0.00") %>' 
										ID="_lblSubTotal"/>
						
						</ItemTemplate>																																									
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Kemas Racikan" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kemas") %>' 
										ID="_lblKodeKemasanR"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Kemas Obat" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kemasO") %>' 
										ID="_lblKodeKemasanO"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Aturan Pakai" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "aturan") %>' 
										ID="_lblAturan"/>
						
						</ItemTemplate>																						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="IkutObat" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "ikutobat") %>' 
										ID="_lblIkutObat"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="jamin" runat="server" HeaderText="Dijamin" HeaderStyle-HorizontalAlign="Center" Visible="True">
						<ItemTemplate>
						
							<asp:checkbox	runat=server 
											enabled=false 
											checked='<%# DataBinder.Eval(Container.DataItem, "jamin") %>' 
											ID="_chkJamin" />
						
						</ItemTemplate>
						<itemstyle HorizontalAlign="Center" Width="50px" />
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Kode UangR" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kduangr") %>' 
										ID="_lblKdUangR"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn runat="server" HeaderText="Hpr" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:10;margin-right:10" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "hpr"),"#,##0.00") %>' 
										ID="_lblHpr"/>
						
						</ItemTemplate>																																									
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="HargaDsr" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:10;margin-right:10" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargadsr"),"#,##0.00") %>' 
										ID="_lblHargaDsr"/>
						
						</ItemTemplate>																																									
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="MarkUp" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:10;margin-right:10" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "markup"),"#,##0.00") %>' 
										ID="_lblMarkUp"/>
						
						</ItemTemplate>																																									
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Coverage" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:10;margin-right:10" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "coverage"),"#,##0.00") %>' 
										ID="_lblCoverage"/>
						
						</ItemTemplate>																																									
					</asp:TemplateColumn>

					<asp:TemplateColumn		SortExpression="updater" 
											runat="server"
											HeaderText="Petugas" 
											HeaderStyle-HorizontalAlign="Right" 
											ItemStyle-HorizontalAlign="Right"> 
						<itemtemplate>
							<asp:label		runat="server" 
											style="margin-left:5;margin-right:5"
											Text='<%# DataBinder.Eval(Container.DataItem, "updater") %>' 
											ID="_lblPetugas"/>
						</itemtemplate>
					</asp:TemplateColumn >
					
					<asp:TemplateColumn runat="server" HeaderText="Aturan Lain" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:label	runat="server" 
										style="margin-left:10;margin-right:10" 
										Text='<%# DataBinder.Eval(Container.DataItem, "aturanLain") %>' 
										ID="_lblAturanLain"/>
						
						</ItemTemplate>																																									
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" HeaderText="Obat Dalam" HeaderStyle-HorizontalAlign="Center" Visible="False">
						<ItemTemplate>
						
							<asp:checkbox	runat=server 
											enabled=false 
											checked='<%# DataBinder.Eval(Container.DataItem, "ObatDalam") %>' 
											ID="_chkObatDalam" />
						
						</ItemTemplate>
						<itemstyle HorizontalAlign="Center" Width="50px" />
					</asp:TemplateColumn>										
				</Columns>

			</asp:datagrid>
        </td>
    </tr>
</table>
<table width="100%">
    <tr>
        <td align="left" width="50%" class="txtweakinfo">
            Tombol Pintas: [Alt+A]=Tambah Data | [Alt+V]=Save | [Alt+D]=Close
        </td>
        <td align="right" width="50%">
            <asp:label id="txtRecCount" runat="server" text="0" width="100%" class="right"></asp:label>
        </td>
    </tr>
</table>
<!-- END DATAGRID Resep -->
