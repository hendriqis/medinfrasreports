<!-- START DATAGRID PERMINTAAN -->
<table width="100%">
    <tr>
        <td width="100%" height="100%">
            <asp:datagrid id="gridPermintaan" runat="server" width="100%" autogeneratecolumns="False"
                cellspacing="0" bordercolor="Gainsboro" borderwidth="1" GridLines="none"
                height="100%" datakeyfield="counter" showfooter="True" cellpadding="0" allowsorting="True">
				<HeaderStyle CssClass="gridHeaderStyle" />
                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                <EditItemStyle Font-Bold="false" />
                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
				<COLUMNS>
				    <ASP:TEMPLATECOLUMN>
						<ITEMTEMPLATE>
							<ASP:IMAGEBUTTON 
								RUNAT="server" 
								ID="__ibtnEdit" 
								CAUSESVALIDATION="False" 
								IMAGEURL="/qislib/images/edit.png"
								ALTERNATETEXT="Edit this item" 
								COMMANDNAME="__edit"
								Width="26px"
								visible='<%# Not DataBinder.Eval(Container.DataItem, "approval") and Not DataBinder.Eval(Container.DataItem, "batal")  %>' >
							</ASP:IMAGEBUTTON>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:TEMPLATECOLUMN>
						<ITEMTEMPLATE>
							<ASP:IMAGEBUTTON 
								RUNAT="server" 
								ID="__ibtnDelete" 
								CAUSESVALIDATION="False" 
								IMAGEURL="/qislib/images/delete.png"
								ALTERNATETEXT="Delete this item" 
								COMMANDNAME="__delete"
								Width="26px"
								visible='<%# Not DataBinder.Eval(Container.DataItem, "approval") and Not DataBinder.Eval(Container.DataItem, "batal")  %>'>
							</ASP:IMAGEBUTTON>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:BOUNDCOLUMN DATAFIELD="nominta" VISIBLE="False"></ASP:BOUNDCOLUMN>
					<ASP:BOUNDCOLUMN DATAFIELD="kdbarang" VISIBLE="False"></ASP:BOUNDCOLUMN>
					<ASP:TEMPLATECOLUMN 
						RUNAT="server" 
						HEADERTEXT="Counter" 
						HEADERSTYLE-HORIZONTALALIGN="Center" 
						ITEMSTYLE-HORIZONTALALIGN="Left"
						VISIBLE="False">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server"	
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
								ID="_lblCounter">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>					
					<ASP:TEMPLATECOLUMN 
						RUNAT="server" 
						HEADERTEXT="Kode Line" 
						HEADERSTYLE-HORIZONTALALIGN="Center" 
						ITEMSTYLE-HORIZONTALALIGN="Left"
						VISIBLE="False">
						<ITEMTEMPLATE>
							<ASP:LABEL 
								RUNAT="server"	
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem, "kdline") %>' 
								ID="_lblKodeLine">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:TEMPLATECOLUMN 
						SortExpression="kdbarang" 
						RUNAT="server" 
						HEADERTEXT="Kode Item" 
						HEADERSTYLE-HORIZONTALALIGN="Left" 
						ITEMSTYLE-HORIZONTALALIGN="Left"
						VISIBLE="True">
						<ITEMTEMPLATE>
							<ASP:LABEL 
								RUNAT="server"	
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
								ID="_lblKodeItem">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:TEMPLATECOLUMN 
						SortExpression="nmbarang1" 
						RUNAT="server" 
						HEADERTEXT="Nama Item" 
						ITEMSTYLE-HORIZONTALALIGN="Left" 
						HEADERSTYLE-HORIZONTALALIGN="Left">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server"	
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem, "nmbarang1") %>' 
								ID="_lblNamaItem">
							</ASP:LABEL>
						</ITEMTEMPLATE>
						<FOOTERTEMPLATE>
							<ASP:LINKBUTTON 
								RUNAT="server" 
								ID="_btnAddNewRow" 
								CAUSESVALIDATION="True" 
								COMMANDNAME="_AddNewRow"
								ONMOUSEOVER="window.status='Click here to add new record.';return true" 
								ONMOUSEOUT="window.status='';return true;"
								TITLE="Click here to add new record." 
								TEXT="Tambah Data" 
								ACCESSKEY="A">
							</ASP:LINKBUTTON>
						</FOOTERTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					
					
					<ASP:TEMPLATECOLUMN 
						SortExpression="nmbarang2" 
						RUNAT="server" 
						HEADERTEXT="Catalog No." 
						ITEMSTYLE-HORIZONTALALIGN="Left" 
						HEADERSTYLE-HORIZONTALALIGN="Left">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server"	
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem, "nmbarang2") %>' 
								ID="_lblCatalogNo">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					
					<ASP:TEMPLATECOLUMN 
						SortExpression="jenisitem" 
						RUNAT="server" 
						HEADERTEXT="JENIS ITEM" 
						ITEMSTYLE-HORIZONTALALIGN="Left" 
						HEADERSTYLE-HORIZONTALALIGN="Left">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server"	
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem, "jenisitem") %>' 
								ID="_lblJenisItem">
							</ASP:LABEL>
						</ITEMTEMPLATE>
                        <FOOTERTEMPLATE>
							<ASP:LINKBUTTON 
								RUNAT="server" 
								ID="_btnQuickPicks" 
								CAUSESVALIDATION="True" 
								COMMANDNAME="_QuickPicks"																
								TITLE="Click here to add new record with Quick Picks." 
								TEXT="Quick Picks" 
								ACCESSKEY="Q">
							</ASP:LINKBUTTON>
						</FOOTERTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					
					<ASP:TEMPLATECOLUMN 
						SortExpression="qty" 
						RUNAT="server" 
						HEADERTEXT="Kuantitas" 
						ITEMSTYLE-HORIZONTALALIGN="Right" 
						HEADERSTYLE-HORIZONTALALIGN="Right">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server" 
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# Format(DataBinder.Eval(Container.DataItem, "qty"),"#,##0.00") %>' 
								ID="_lblKuantitas">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:TEMPLATECOLUMN 
						SortExpression="satuan" 
						RUNAT="server" 
						HEADERTEXT="Satuan" 
						ITEMSTYLE-HORIZONTALALIGN="Right" 
						HEADERSTYLE-HORIZONTALALIGN="Right"
						VISIBLE="false">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server" 
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem,"satuan") %>' 
								ID="_lblSatuan">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:TEMPLATECOLUMN 
						SortExpression="nmsatuan" 
						RUNAT="server" 
						HEADERTEXT="Satuan" 
						ITEMSTYLE-HORIZONTALALIGN="Right" 
						HEADERSTYLE-HORIZONTALALIGN="Right">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server" 
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>' 
								ID="_lblnmSatuan">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:TEMPLATECOLUMN 
						RUNAT="server" 
						HEADERTEXT="Faktor" 
						ITEMSTYLE-HORIZONTALALIGN="Right" 
						HEADERSTYLE-HORIZONTALALIGN="Right"
						VISIBLE="False">
						<ITEMTEMPLATE>
							<ASP:LABEL
								RUNAT="server" 
								STYLE="margin-left:5;margin-right:5" 
								TEXT='<%# Format(DataBinder.Eval(Container.DataItem,"faktor"), "#,##0.00") %>' 
								ID="_lblFaktor">
							</ASP:LABEL>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>
					<ASP:TEMPLATECOLUMN 
						RUNAT="server"
						HEADERTEXT="Approval"
						ITEMSTYLE-HORIZONTALALIGN="Center" 
						HEADERSTYLE-HORIZONTALALIGN="Center">
						<ITEMTEMPLATE>
							<ASP:CHECKBOX
								RUNAT="server" 
								STYLE="margin-left:5;margin-right:5" 
								Enabled="False"
								Checked='<%# DataBinder.Eval(Container.DataItem, "approval") %>' 
								ID="_chkApproval">
							</ASP:CHECKBOX>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>	
					<ASP:TEMPLATECOLUMN 
						RUNAT="server"
						HEADERTEXT="Tutup"
						ITEMSTYLE-HORIZONTALALIGN="Center" 
						HEADERSTYLE-HORIZONTALALIGN="Center">
						<ITEMTEMPLATE>
							<ASP:CHECKBOX
								RUNAT="server" 
								STYLE="margin-left:5;margin-right:5"
								Enabled="False" 
								Checked='<%# DataBinder.Eval(Container.DataItem, "batal") %>' 
								ID="_chkBatal">
							</ASP:CHECKBOX>
						</ITEMTEMPLATE>
					</ASP:TEMPLATECOLUMN>		

					<asp:TemplateColumn		SortExpression="usrupdate" 
											runat="server"
											HeaderText="Petugas" 
											HeaderStyle-HorizontalAlign="Left" 
											ItemStyle-HorizontalAlign="Left"> 
						<itemtemplate>
							<asp:label		runat="server" 
											style="margin-left:5;margin-right:5"
											Text='<%# DataBinder.Eval(Container.DataItem, "usrupdate") %>' 
											ID="_lblPetugas"/>
						</itemtemplate>
					</asp:TemplateColumn >
																
				</COLUMNS>
			</asp:datagrid>
        </td>
    </tr>
    <tr>
        <td>
            <font style="font-size: x-small; color: teal;">Shortcut Key : [Alt+A] = Tambah Barang.
                [Alt+V] = Simpan Barang. [ALT+D] = Selesai. </font>
        </td>
        <tr>
</table>
<!-- END DATAGRID PERMINTAAN -->
