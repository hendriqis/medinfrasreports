<!-- BEGIN ADDNEW PERMINTAAN -->
<asp:panel id="panelPermintaanAddNewRow" runat="server">
	<TABLE CLASS="rBodyAddNew" CELLSPACING="0" BORDERCOLORDARK="#98aab1" CELLPADDING="5" WIDTH="100%">
		<TR CLASS="rheader">
			<TD CLASS="rheadercol" ALIGN="left" HEIGHT="25">
			Edit atau Tambah Item Permintaan Barang
			</TD>
		</TR>
		<TR>
			<TD>
				<TABLE CELLSPACING="1" CELLPADDING="1" WIDTH="100%">
					<TR>
						<TD width="60%">
							<!-- LEFT SECTION -->
							<TABLE width="100%">
								<TR>
									<TD CLASS="rBodyAddNewFld" WIDTH="20%">
									</TD>
									<TD CLASS="rBodyAddNewFld" WIDTH="40%">
										<ASP:TEXTBOX 
											ID="txtCounter" 
											RUNAT="server" 
											VISIBLE="False">
										</ASP:TEXTBOX>
									</TD>
								</TR>
								<TR style="display:none">
									<TD CLASS="rBodyAddNewFld" >Kelompok Item
									</TD>
									<TD CLASS="rBodyAddNewFld" >
										<ASP:DROPDOWNLIST
											ID="ddlLineItem"
											RUNAT="server"
											AUTOPOSTBACK="True"
											CSSCLASS="drpdwn"
											WIDTH="100%">
										</ASP:DROPDOWNLIST>
									</TD>
								</TR>
                                <tr>
                                    <td class="rBodyAddNewFld">
                                        &nbsp;
                                    </td>
                                    <td class="rBodyAddNewFld">
                                        <asp:checkbox runat="server" ID="chkItemBalanceOnly" Text="Hanya barang yang ada di lokasi ini" AutoPostBack="true" checked="true"/>
                                    </td>
                                    <td class="rBodyAddNewFld">
                                        &nbsp;
                                    </td>
                                </tr>
								<TR>
									<TD CLASS="rBodyAddNewFld">
										<ASP:LINKBUTTON 
											ID="lBtnKodeItem" 
											RUNAT="server" 
											TEXT="Kode Item" 
											ONMOUSEOVER="window.status='Click here to select from existing data.';return true"
											ONMOUSEOUT="window.status='';return true;" 
											TITLE="Click here to select from existing data."
											CAUSESVALIDATION="False">
										</ASP:LINKBUTTON>
									</TD>
									<TD CLASS="rBodyAddNewFld" >
										<ASP:TEXTBOX 
											ID="txtKodeItem" 
											RUNAT="server" 
											MAXLENGTH="10" 
											WIDTH="100%"
											AUTOPOSTBACK="True">
										</ASP:TEXTBOX>
									</TD>
									<TD CLASS="rBodyAddNewFld">
										<ASP:REQUIREDFIELDVALIDATOR 
											ID="rfvKodeItem" 
											RUNAT="server" 
											DISPLAY="dynamic" 
											ERRORMESSAGE="Kode Item"
											CONTROLTOVALIDATE="txtKodeItem">** 
										</ASP:REQUIREDFIELDVALIDATOR>
										<ASP:LABEL ID="lblKodeLine" RUNAT="server" VISIBLE="False"></ASP:LABEL>
									</TD>
								</TR>
								<TR>
									<TD CLASS="rBodyAddNewFld" >
									Nama Item
									</TD>
									<TD CLASS="rBodyAddNewFld" >
										<ASP:TEXTBOX
											ID="txtNamaItem" 
											RUNAT="server" 
											WIDTH="100%">
										</ASP:TEXTBOX>
									</TD>
									<TD CLASS="rBodyAddNewFld">
									</TD>
								</TR>
								<TR>
									<TD CLASS="rBodyAddNewFld" >Kuantitas
									</TD>
									<TD CLASS="rBodyAddNewFld" >
										<ASP:TEXTBOX 
											ID="txtKuantitas" 
											RUNAT="server" 
											MAXLENGTH="10" 
											WIDTH="100%">
										</ASP:TEXTBOX>
									</TD>
									<TD CLASS="rBodyAddNewFld">
										<ASP:COMPAREVALIDATOR 
											ID="cvKuantitas" 
											RUNAT="server" 
											CONTROLTOVALIDATE="txtKuantitas"
											OPERATOR="DataTypeCheck" 
											TYPE="Double" 
											ERRORMESSAGE="Kuantitas" 
											DISPLAY="Dynamic">** Harus diisi dengan angka **
										</ASP:COMPAREVALIDATOR>
										<ASP:COMPAREVALIDATOR 
											ID="cvKuantitas1" 
											RUNAT="server" 
											CONTROLTOVALIDATE="txtKuantitas"
											OPERATOR="GreaterThan" 
											TYPE="Double" 
											VALUETOCOMPARE="0.00" 
											ERRORMESSAGE="Kuantitas" 
											DISPLAY="Dynamic">**  Harus lebih dari 0.00 **
										</ASP:COMPAREVALIDATOR>
										<ASP:REQUIREDFIELDVALIDATOR 
											ID="rfvtxtKuantitas" 
											RUNAT="server" 
											DISPLAY="dynamic" 
											ERRORMESSAGE="Kuantitas"
											CONTROLTOVALIDATE="txtKuantitas">** 
										</ASP:REQUIREDFIELDVALIDATOR>
									</TD>
								</TR>
								<TR>
									<TD CLASS="rBodyAddNewFld" >Satuan
									</TD>
									<TD CLASS="rBodyAddNewFld" >
										<ASP:DROPDOWNLIST 
											ID="ddlSatuan" 
											RUNAT="server" 
											WIDTH="100%" 
											AUTOPOSTBACK="True">
										</ASP:DROPDOWNLIST>
									</TD>
									<TD CLASS="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
								<TR>
									<TD CLASS="rBodyAddNewFld">Faktor
									</TD>
									<TD CLASS="rBodyAddNewFld" >
										<ASP:TEXTBOX 
											ID="txtFaktor" 
											RUNAT="server" 
											MAXLENGTH="10" 
											WIDTH="100%" 
											TEXT="0.00"
											READONLY="True">
										</ASP:TEXTBOX>
									</TD>
									<TD CLASS="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
								<TR>
									<TD CLASS="rBodyAddNewFld" >
									Jenis Item
									</TD>
									<TD CLASS="rBodyAddNewFld" >
										<ASP:TEXTBOX
											ID="txtJenisItem" 
											RUNAT="server" 
											WIDTH="100%">
										</ASP:TEXTBOX>
									</TD>
									<TD CLASS="rBodyAddNewFld">
									</TD>
								</TR>
							</TABLE>							
						</TD>
					<TD width="40%" valign="top">
							<!-- RIGHT SECTION -->
						<asp:panel id="panelInfopermintaanbarangbelumproses" runat="server" visible="False">
								<!-- Begin Informasi Permintaan Barang Yang Belum di Proses. -->																
									<TABLE cellSpacing="0" cellPadding="1" width="100%" border="0">
										<TR>
											<TD bgcolor="yellow">
												Informasi Permintaan Barang Yang Belum di Proses.
											</TD>
										</TR>
										<TR>
											<TD class="rBodyInfo" vAlign="middle" width="99%" height="100%">
												<TABLE id="__infp" width="100%" bgColor="mintcream">
													<TR>
														<TD vAlign="middle" width="100%" colSpan="2">
															<asp:DataGrid id="griditembelumproses" runat="server" Width="100%" AutoGenerateColumns="False" CellSpacing="0"
																BorderColor="Gainsboro" BorderWidth="0" GridLines="none" Height="100%" AllowPaging="False"
																PageSize="20" DataKeyField="" ShowFooter="True" CellPadding="0">
																<HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																<Columns>
																	<asp:TemplateColumn runat="server" HeaderText="No. Permintaan" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
																		<itemtemplate>
																			<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "nominta") %>' ID="griditembelumproses_lblnominta"/>
																		</itemtemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn runat="server" HeaderText="Tanggal" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"
																		FooterStyle-HorizontalAlign="Left">
																		<itemtemplate>
																			<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "tglminta"), "dd-MM-yyyy") %>' ID="griditembelumproses_lbltglminta"/>
																		</itemtemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn runat="server" HeaderText="Bagian" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="left"
																		FooterStyle-HorizontalAlign="right">
																		<itemtemplate>
																			<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "bagian") %>' ID="griditembelumproses_lblbagian"/>
																		</itemtemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn runat="server" HeaderText="Deskripsi" HeaderStyle-HorizontalAlign="center" ItemStyle-HorizontalAlign="center"
																		FooterStyle-HorizontalAlign="right">
																		<itemtemplate>
																			<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "deskripsi") %>' ID="griditembelumproses_deskripsi"/>
																		</itemtemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn runat="server" HeaderText="Kuantitas" HeaderStyle-HorizontalAlign="right" ItemStyle-HorizontalAlign="right"
																		FooterStyle-HorizontalAlign="right">
																		<itemtemplate>
																			<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "qty") %>' ID="griditembelumproses_qty"/>
																		</itemtemplate>
																	</asp:TemplateColumn>
																	<asp:TemplateColumn runat="server" HeaderText="Satuan" HeaderStyle-HorizontalAlign="right" ItemStyle-HorizontalAlign="right"
																		FooterStyle-HorizontalAlign="right">
																		<itemtemplate>
																			<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' ID="griditembelumproses_satuan"/>
																		</itemtemplate>
																	</asp:TemplateColumn>
																	
																</Columns>
															</asp:DataGrid>
														</TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>																		
							 <!-- End Informasi Permintaan Barang Yang Belum di Proses.  -->
							</asp:panel>
						</TD>
					</TR>										
				</TABLE>
				<TABLE WIDTH="100%">										
					<TR>
						<TD>
							<ASP:BUTTON 
								ID="btnAddNewRow" 
								RUNAT="server" 
								TEXT="Save" 
								CSSCLASS="sbttn" 
								WIDTH="100"
								ACCESSKEY="V">
							</ASP:BUTTON>
							<ASP:BUTTON 
								ID="btnDone" 
								RUNAT="server" 
								TEXT="Close" 
								CAUSESVALIDATION="False" 
								CSSCLASS="sbttn"
								WIDTH="100" 
								ACCESSKEY="D">
							</ASP:BUTTON>
						</TD>
					</TR>
				</TABLE>
			</TD>
		</TR>
		<TR VALIGN="bottom" BGCOLOR="white">
			<TD ALIGN="left" HEIGHT="25">
				<P ALIGN="right">Data yang sudah ada...
				</P>
			</TD>
		</TR>
	</TABLE>
</asp:panel>
<!-- END ADDNEW PERMINTAAN -->
