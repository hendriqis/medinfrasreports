<!-- SPACER ROW -->

<SCRIPT LANGUAGE="JavaScript">
	function konfirmasi()
		{
			//alert('test');
			if (!confirm('Anda yakin akan ubah status retur ini ?')) return false;
			return true
		}
</SCRIPT>

<!-- START DATAGRID UBAH STATUS -->
																			
<TABLE width="100%" class="rbody">
    <TR>
		<TD width="100%" align=right>
			<br />
			<asp:Button id="btnUbahStatus" 
						runat="server" 
						text="Ubah" 
						Width="100"
						CssClass="sbttn"
						CausesValidation="False"></asp:Button>						
			<asp:Button id="btnCancel" 
						runat="server" 
						text="Batal" 
						CssClass="sbttn"
						Width="100"
						CausesValidation="False"></asp:Button>
		</TD>
	</TR>
	<TR>
		<TD width="100%" height="100%">

			<asp:DataGrid	id="gridUbahStatus" 
							runat="server" 
							Width="100%" 
							AutoGenerateColumns="False" 
							CellSpacing="0" 
							BorderColor="Gainsboro" 
							Enableviewstate="True"
							BorderWidth="1" 
							GridLines="none" 
							Height="100%" 
							AllowPaging="false" 
							PageSize="20" 
							DataKeyField="counter" 
							ShowFooter="True" 
							CellPadding="0">
							
				<HeaderStyle CssClass="gridHeaderStyle" />
                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                <EditItemStyle Font-Bold="false" />
                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                <SelectedItemStyle BackColor="CornflowerBlue" />
				
				<Columns>
					
					<asp:TemplateColumn runat="server"
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center">
						<ItemTemplate>
						
							<asp:checkbox	runat=server 
											enabled=True
											checked=false
											ID="_chkPesan" />
						
						</ItemTemplate>
						
						<HeaderTemplate>
							
							<input	name="cbxSelectAll" 
									type="checkbox" 
									onclick="javascript:checkAll(this.form,'_chkPesan');">

						</HeaderTemplate>
						
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="No. Retur" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "noretur") %>' 
										ID="_lblNoRetur"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="counter" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
										ID="_lblCounter"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Kode Item" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
										ID="_lblKodeBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Nama Item" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
										ID="_lblNamaBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn runat="server" 
										HeaderText="No. Batch" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nobatch") %>' 
										ID="_lblNoBatch"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Faktor" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
							
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "faktor"), "#,##0.00") %>' 
										ID="_lblFaktor"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
										
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
											
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>' 
										ID="_lblQty"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Harga" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
											
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "harga"), "#,##0.00") %>' 
										ID="_lblHarga"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Total" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
											
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "harga")*DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>' 
										ID="_lblTotal"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="CNote" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
											
							<asp:Label		runat="server"	
											style="margin-left:5;margin-right:5" 
											Text='<%# DataBinder.Eval(Container.DataItem, "cnote") %>' 
											ID="_lblCnote" />
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="CNote Baru" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
											
							<asp:TextBox	runat="server"	
											style="margin-left:5;margin-right:5" 
											Text='<%# DataBinder.Eval(Container.DataItem, "cnotedefault") %>' 
											ID="_txtCnote" />
						
						</itemtemplate>
					</asp:TemplateColumn>
																																							
				</Columns>

			</asp:DataGrid>

		</TD>
	</TR>

</TABLE> 

<!-- END DATAGRID UBAH STATUS -->