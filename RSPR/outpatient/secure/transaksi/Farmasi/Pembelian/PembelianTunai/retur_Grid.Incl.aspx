<asp:DataGrid	id="gridRetur" 
				runat="server" 
				Width="100%" 
				AutoGenerateColumns="False" 
				CellSpacing="0" 
				BorderColor="Gainsboro" 
				BorderWidth="1" 
				GridLines="none" 
				Height="100%" 
				DataKeyField="counter" 
				ShowFooter="True" 
				CellPadding="0"
				AllowSorting="True">
	<HeaderStyle CssClass="gridHeaderStyle" />
    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
    <EditItemStyle Font-Bold="false" />
    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
	<Columns>
		
		<asp:EditCommandColumn	runat="server" 
								EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>" 
								UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>" 
								CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>" >
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
									style="margin-top: 2" />
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:BoundColumn DataField="noretur" Visible="False" />
		<asp:BoundColumn DataField="kdbarang" visible="False" />
		
		<asp:TemplateColumn SortExpression="nmbarang" 
							runat="server" 
							HeaderText="Item" 
							ItemStyle-HorizontalAlign="Left" 
							HeaderStyle-HorizontalAlign="Left">
			<itemtemplate>
			    <table>
			        <tr>
			            <td style="color:#000000;">
			                <asp:label	runat="server" 
							Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang") %>' 
							ID="_lblNamaItem"/>
			            </td>
			        </tr>
			        <tr>
			            <td class="txtweak">
			                <asp:label	runat="server" 
							Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
							ID="_lblKodeItem"/>
			            </td>
			        </tr>
			    </table>				
			</itemtemplate>
			
		</asp:TemplateColumn>
		
		<asp:TemplateColumn runat="server" 
							HeaderText="Expired" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Center" 
							Visible="False">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:5;margin-right:5" 
							Text='<%# DataBinder.Eval(Container.DataItem, "expired") %>' 
							ID="_lblExpired"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn SortExpression="qty" 
							runat="server" 
							HeaderText="Qty" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:5;margin-right:5" 
							Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"),"#,##0.00") %>' 
							ID="_lblKuantitas"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn SortExpression="satuan" 
							runat="server" 
							HeaderText="Satuan" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right"
							visible="False">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:5;margin-right:5" 
							Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>' 
							ID="_lblSatuan"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:TemplateColumn SortExpression="nmsatuan" 
							runat="server" 
							HeaderText="Satuan" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right"
							visible="True">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:5;margin-right:5" 
							Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>' 
							ID="_lblnmSatuan"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn SortExpression="faktor" 
							runat="server" 
							HeaderText="Faktor" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:5;margin-right:5" 
							Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>' 
							ID="_lblFaktor"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn runat="server" 
							HeaderText="Harga" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:5;margin-right:5" 
							Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"),"#,##0.00") %>' 
							ID="_lblHarga"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn runat="server" 
							HeaderText="Diskon" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:5;margin-right:5" 
							Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskon"),"#,##0.00") %>' 
							ID="_lblDiskonPc"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn runat="server" 
							HeaderText="Jumlah Diskon" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:10;margin-right:10" 
							Text='<%# Format(DataBinder.Eval(Container.DataItem, "totaldiskondt"), "#,##0.00") %>' 
							ID="_lblTotalDisc"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn runat="server" 
							HeaderText="SubTotal" 
							ItemStyle-HorizontalAlign="Right" 
							HeaderStyle-HorizontalAlign="Right">
			<ItemTemplate>
				<asp:label	runat="server" 
							style="margin-left:10;margin-right:10" 
							Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"),"#,##0.00") %>' 
							ID="_lblSubTotal"/>
			</ItemTemplate>
		</asp:TemplateColumn>
		
		<asp:TemplateColumn		SortExpression="usrupdate"
								runat="server"
								HeaderText="Petugas" 
								HeaderStyle-HorizontalAlign="Right" 
								ItemStyle-HorizontalAlign="Right"> 
			<itemtemplate>
				<asp:label		runat="server" 
								style="margin-left:5;margin-right:5"
								Text='<%# DataBinder.Eval(Container.DataItem, "usrupdate") %>' 
								ID="_lblPetugas"/>
			</itemtemplate>
		</asp:TemplateColumn >											
		
	</Columns>
</asp:DataGrid>