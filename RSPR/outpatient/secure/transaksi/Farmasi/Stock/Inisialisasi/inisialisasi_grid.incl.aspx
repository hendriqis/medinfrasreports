<table width="100%">
    <tr>
        <td width="100%" valign="top" align="left">
            <asp:button id="btnSave" runat="server" text="Save" cssclass="bttntext" visible="False">
			</asp:button>
        </td>
    </tr>
    <tr>
        <td width="100%" height="100%">
            <div style="overflow: auto; width: 100%; height: 350">
                <asp:datagrid id="gridCheckItem" runat="server" width="100%" autogeneratecolumns="False"
                    cellspacing="0" bordercolor="Gainsboro" enableviewstate="True" borderwidth="1"
                    GridLines="none" allowpaging="false" pagesize="20" datakeyfield="kdBarang"
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
					
					<asp:TemplateColumn SortExpression="kdbarang" 
										runat="server" 
										HeaderText="Kode Item" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
										ID="_lblKdBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn SortExpression="nmdesc1" 
										runat="server" 
										HeaderText="Nama" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
										ID="_lblNamaBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>					
					
					<asp:TemplateColumn SortExpression="qty" 
										runat="server" 
										HeaderText="Qty Inisialisasi" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:TextBox	id="txtQty" 
											autopostback="False"
											Runat="server" 
											Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"),"#,##0.00") %>' 
											Width="50" />
						
						</itemtemplate>
						<itemstyle Width="100px" />
					</asp:TemplateColumn>		
					
					<asp:TemplateColumn SortExpression="satuankc" 
										runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn SortExpression="posting" 
										runat="server" 
										HeaderText="Posting" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:CheckBox	runat="server"	
											style="margin-left:5;margin-right:5" 
											Checked='<%# DataBinder.Eval(Container.DataItem, "posting") %>' 
											ID="_chkPosting"
											Enabled="False" />
						
						</itemtemplate>
					</asp:TemplateColumn>		
					
					<asp:TemplateColumn runat="server" 
										HeaderText="" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
													
							<asp:CompareValidator	id="cvQtyGrid" 
													runat="server" 
													ControlToValidate="txtQty" 
													Operator="DataTypeCheck" 
													Type="Double" 
													ErrorMessage='<%# "Qty inisialisasi harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
													Display="Dynamic">** 
							</asp:CompareValidator>							
							
						</itemtemplate>
					</asp:TemplateColumn>
																																								
				</Columns>

			</asp:datagrid>
            </div>
        </td>
    </tr>
</table>

<script src='/qislib/scripts/common/util.js' language="javascript"></script>

