<asp:DataGrid	id="gridResep" 
				runat="server" 
				Width="100%" 
				AutoGenerateColumns="False" 
				CellSpacing="0" 
				BorderColor="Gainsboro" 
				Enableviewstate="True"
				BorderWidth="1" 
				GridLines="none" 							
				AllowPaging="false" 
				PageSize="20" 
				DataKeyField="noresep" 
				ShowFooter="True" 
				CellPadding="0"
				AllowSorting="True">
				
	<HeaderStyle Font-Bold="false" BackColor=#DEE3E7  Height=20 />								
    <AlternatingItemStyle BackColor=#EEEEEE  />
    <EditItemStyle Font-Bold="false" />
	<PagerStyle	Mode="NumericPages" HorizontalAlign="right" />
	
	<Columns>
		
		<asp:TemplateColumn runat="server"
							ItemStyle-HorizontalAlign="Center" 
							HeaderStyle-HorizontalAlign="Center">
			<ItemTemplate>
			
				<asp:checkbox	runat=server 
								enabled='<%# iif(DataBinder.Eval(Container.DataItem, "posting") AND NOT DataBinder.Eval(Container.DataItem, "verifikasiflag"),true,false)  %>' 
								checked=false
								ID="_chkPesan" />
			
			</ItemTemplate>
			
			<HeaderTemplate>
				
				<input	name="cbxSelectAll" 
						type="checkbox" 
						onclick="javascript:checkAll(this.form,'_chkPesan');">

			</HeaderTemplate>
			
		</asp:TemplateColumn>
		
		<asp:TemplateColumn SortExpression="posting" 
							runat="server" 
							HeaderText="App" 
							HeaderStyle-HorizontalAlign="Center" 
							ItemStyle-HorizontalAlign="Center" 
							Visible="True">
			<itemtemplate>
				<asp:CheckBox	runat="server" 
								style="margin-left:0;margin-right:5"
								enabled="false"
								checked='<%# DataBinder.Eval(Container.DataItem, "posting") %>' 
								ID="_chkApproval"/>
			</itemtemplate>
		</asp:TemplateColumn >
		
				<asp:TemplateColumn SortExpression="verifikasiflag" 
							runat="server" 
							HeaderText="V" 
							HeaderStyle-HorizontalAlign="Center" 
							ItemStyle-HorizontalAlign="Center" 
							Visible="True">
			<itemtemplate>
				<asp:CheckBox	runat="server" 
								style="margin-left:0;margin-right:5"
								enabled="false"
								checked='<%# DataBinder.Eval(Container.DataItem, "verifikasiflag") %>' 
								ID="_chkVerifikasi"/>
			</itemtemplate>
		</asp:TemplateColumn >
		
		<asp:TemplateColumn SortExpression="noresep" 
							runat="server" 
							HeaderText="No. Resep" 
							ItemStyle-HorizontalAlign="Left" 
							HeaderStyle-HorizontalAlign="Left" 
							Visible="True">
			<itemtemplate>
			
				<asp:label	runat="server"	
							style="margin-left:5;margin-right:5" 
							Text='<%# DataBinder.Eval(Container.DataItem, "noresep") %>' 
							ID="_lblNoResep"/>
			
			</itemtemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn SortExpression="noreg" 
							runat="server" 
							HeaderText="No. Registrasi" 
							ItemStyle-HorizontalAlign="Left" 
							HeaderStyle-HorizontalAlign="Left" 
							Visible="True">
			<itemtemplate>
			
				<asp:label	runat="server"	
							style="margin-left:5;margin-right:5" 
							Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>' 
							ID="_lblNoRegistrasi"/>
			
			</itemtemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn SortExpression="nama" 
							runat="server" 
							HeaderText="Nama Pasien" 
							ItemStyle-HorizontalAlign="Left" 
							HeaderStyle-HorizontalAlign="Left" 
							Visible="True">
			<itemtemplate>
			
				<asp:label	runat="server"	
							style="margin-left:5;margin-right:5" 
							Text='<%# DataBinder.Eval(Container.DataItem, "nama") %>' 
							ID="_lblNamaPasien"/>
			
			</itemtemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn SortExpression="tglresep" 
							runat="server" 
							HeaderText="Tgl. Resep" 
							ItemStyle-HorizontalAlign="Center" 
							HeaderStyle-HorizontalAlign="Center" 
							Visible="True">
			<itemtemplate>
			
				<asp:label	runat="server"	
							style="margin-left:5;margin-right:5" 
							Text='<%# Format(DataBinder.Eval(Container.DataItem, "tglresep"), "dd-MM-yyyy") %>' 
							ID="_lblTanggal"/>
			
			</itemtemplate>
		</asp:TemplateColumn>	
		
		<asp:TemplateColumn runat="server" 
							HeaderText="Total" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right" 
							Visible="True">
			<itemtemplate>
			
				<asp:label	runat="server"	
							style="margin-left:5;margin-right:5" 
							Text='<%# Format(DataBinder.Eval(Container.DataItem, "total"), "#,##0.00") %>' 
							ID="_lblTotal"/>
			
			</itemtemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn ItemStyle-HorizontalAlign="Right" >
			<ItemTemplate>
				<asp:LinkButton		Runat="server"
									ID="__lbtnResepDt"
									style="margin-left:0;margin-right:5"
									CausesValidation=False
									Text="Detil Resep.. "
									CommandName="__ResepDt" />
			</ItemTemplate>
		</asp:TemplateColumn>
																													
	</Columns>

</asp:DataGrid>