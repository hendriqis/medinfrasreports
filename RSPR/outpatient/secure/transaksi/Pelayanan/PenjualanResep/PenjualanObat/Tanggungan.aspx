<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Tanggungan.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanResep.PenjualanObat.Tanggungan"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Keluarga Pegawai</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="/qislib/css/RJ_/RJ___000001.css" type="text/css" rel="Stylesheet">
		<script language="javascript" src="/qislib/scripts/RJ_/Rj___Dlg_rs-v2.js"></script>
		
		<script language="javascript">	
				function tengah()
				{
					var xcenter=(screen.availWidth-800)/2;
					var ycenter=(screen.availHeight-600)/2;				
					self.resizeTo(800,580);
					self.moveTo(xcenter,ycenter);
					    
				}
		</script>
	</HEAD>
	<body onload="tengah();">
		<form id="frmTanggungan" runat="server">
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100%" valign="top">
						<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 455px">
							<table cellSpacing="10" cellPadding="0" width="100%" border="0">
								<tr>
									<td style="PADDING-TOP: 5px" align="left">
										<TABLE cellSpacing="0" cellPadding="5" width="100%">
											<TR class="rheader">
												<TD class="rheadercol" align="left" height="25">KELUARGA PEGAWAI
												</TD>
											</TR>
																						
											<TR class="rheader">
												<TD class="rheadercol" align="left" height="2">
												</TD>
											</TR>
											<TR class="rbody">
												<TD class="rbodycol" align="center" height="25">
													<!-- PAGE CONTENT BEGIN HERE -->
													<TABLE width="100%">
													    <TD width="50%" valign="top">
															<table width="100%">																			
															    <tr>
																    <td class="rBodyAddNewFld" width="30%">
																	    	No. Pegawai (N.I.P.)
																    </td>
																    <td width="60%">
																	    <asp:textbox	id="txtNoPegawai" 
																		    runat="server" 
																		    width="100%"
																		    readonly="true"/>
																    </td>
																    <td>&nbsp;
																    </td>					
																</tr>
																
																<tr>
																	<td class="rBodyAddNewFld" width="30%">
																			Nama
																	</td>
																	<td width="60%">
																	    <asp:textbox	id="txtNmPegawai" 
																			runat="server" 
																			width="100%"
																			readonly="true"/>
																	</td>
																	<td>&nbsp;
																	</td>										
																</tr>
																
																<tr>
																	<td class="rBodyAddNewFld" width="30%">
																			Gelar Depan
																	</td>
																	<td width="60%">
																		<asp:textbox	id="txtGelarDpn" 
																			            runat="server" 
																						width="100%"
																						readonly="true"/>
																	</td>
																	<td>&nbsp;
																    </td>
																</tr>
																
																<tr>
																	<td class="rBodyAddNewFld" width="30%">
																			Gelar Belakang
																	</td>
																	<td width="60%">
																		<asp:textbox	id="txtGelarBlkg" 
																					runat="server" 
																					width="100%"
																					readonly="true"/>
																	</td>
																	<td>&nbsp;
																	</td>
																</tr>
															</table>
															
												     	</TD>
														
														<td width="50%">
														    <table width="100%">
																<tr>
																	<td class="rBodyAddNewFld" width="30%">
																		Golongan
																	</td>
																	<td width="60%">
																		<asp:textbox	width="22%" 
																				id="txtKdGolongan" 
																				runat="server"
																				readonly="true"/>
																				
																		<asp:textbox	width="74%" 
																				id="txtNmGolongan" 
																				runat="server"
																				readonly="true"/>
																	</td>
																	<td>&nbsp;
																	</td>
																</tr>
                                                                <tr>
																	<td class="rBodyAddNewFld" width="30%">
																		Jabatan
																	</td>
																	<td width="60%">
																		<asp:textbox	width="22%" 
																			id="txtKdJabatan" 
																			runat="server"
																			readonly="true"/>
																		<asp:textbox	width="74%" 
																			id="txtNmJabatan" 
																			runat="server"
																			readonly="true"/>
																	</td>
																	<td>&nbsp;
																	</td>
																</tr>
																
																<tr>
																	<td class="rBodyAddNewFld" width="30%">
																		Direktorat
																	</td>
																	<td width="60%">
																		<asp:textbox	width="22%" 
																			    id="txtKdDirektorat" 
																			    runat="server"																			    readonly="true"/>
																			<asp:textbox	width="74%" 
																				id="txtNmDirektorat" 
																				runat="server"
																				readonly="true"/>
																	</td>
																	<td>&nbsp;
																	</td>
																</tr>
																
																<tr>
																	<td class="rBodyAddNewFld" width="30%">
																		Bagian
																	</td>
																	<td width="60%">
																		<asp:textbox	width="22%" 
																				id="txtKdBagian" 
																				runat="server"
																				readonly="true"/>
																			<asp:textbox	width="74%" 
																				id="txtNmBagian" 
																				runat="server"
																				readonly="true"/>
																	</td>
																	<td>&nbsp;
																	</td>
																</tr>	
																<tr>
																	<td class="rBodyAddNewFld" width="30%">
																		Jatah Kelas
																	</td>
																	<td width="60%">
																		<asp:textbox 
																			width="22%" 
																			id="txtKodeKelas" 
																			runat="server" 
																			readonly="true" />
																		<asp:textbox 
																			width="74%" 
																			id="txtNamaKelas" 
																			runat="server" 
																			readonly="true" />
																	</td>
																	<td>&nbsp;
																	</td>
																</tr>															
															</table>
														
														</td>
													</TABLE>			   
																
													<!--PAGE CONTENT END HERE-->
												</TD>
											</TR>
										</TABLE>
										
										<!--BEGIN DETIL GRID PANEL-->
										<asp:panel id="panelDetilGrid" runat="server">
											<TABLE cellSpacing="0" cellPadding="5" width="100%">
												<TR class="rbody">
													<TD class="rbodycol" align="center" height="25">
														<TABLE width="100%">
															<TR>
																<TD width="100%" height="100%">
																	<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 260px">
																	<!-- ASP DATAGRID INSERT RIGHT HERE -->
																		<asp:DataGrid	id="grdDetil" 
																				runat="server" 
																				Width="100%" 
																				AutoGenerateColumns="False" 
																				CellSpacing="0"
																				BorderColor="Gainsboro" 
																				BorderWidth="1" 
																				GridLines="none" 
																				AllowPaging="false" 
																				PageSize="20"
																				DataKeyField="counter" 
																				ShowFooter="True" 
																				CellPadding="0">
																			<HeaderStyle	Font-Bold="True" 
																				CssClass="rheadercol" 
																				BackColor="#DEE3E7" 
																				Height="20" />
																				
																				    <ItemStyle		Font-Size="8pt" />
																					<AlternatingItemStyle BackColor="WhiteSmoke" />
																					<PagerStyle		Mode="NumericPages" 
																					    HorizontalAlign="right" />
																					<EditItemStyle Font-Bold="true" />
																							
																						<Columns>
																							
																							<asp:TemplateColumn runat="server" 
																									visible="false">
																								<itemtemplate>
																									<asp:label	runat="server" 
																											style="margin-left:5;margin-right:5" 
																											Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
																											ID="grdDetil_lblcounter"
																											visible="false" />
																								</itemtemplate>
																							</asp:TemplateColumn>
																							
																							<asp:TemplateColumn runat="server" 
																													HeaderText="Nama" 
																													HeaderStyle-HorizontalAlign="Left" 
																													ItemStyle-HorizontalAlign="Left">
																								<itemtemplate>
																									<asp:label	runat="server" 
																											style="margin-left:5;margin-right:5" 
																											Text='<%# DataBinder.Eval(Container.DataItem, "nama") %>'
																											ID="grdDetil_lblnama" />
																								</itemtemplate>
																							</asp:TemplateColumn>
																							
																							<asp:TemplateColumn runat="server" 
																													HeaderText="Hubungan" 
																													HeaderStyle-HorizontalAlign="Left" 
																													ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label	runat="server" 
																													style="margin-left:5;margin-right:5" 
																													Text='<%# DataBinder.Eval(Container.DataItem, "nmkduser") %>'
																													ID="grdDetil_lblkdhubklg" />
																									</itemtemplate>
																							</asp:TemplateColumn>	
																																																	
																							<asp:TemplateColumn runat="server" 
																													HeaderText="TglLahir" 
																													HeaderStyle-HorizontalAlign="Left" 
																													ItemStyle-HorizontalAlign="Left">
																								<itemtemplate>
																									<asp:label	runat="server" 
																													style="margin-left:5;margin-right:5" 
																													Text='<%# DataBinder.Eval(Container.DataItem, "tgllahir","{0:MM/dd/yyyy}") %>'
																													ID="grdDetil_lbltgllahir" />
																								</itemtemplate>
																							</asp:TemplateColumn>

																							<asp:TemplateColumn runat="server" 
																													HeaderText="Usia" 
																													HeaderStyle-HorizontalAlign="Left" 
																													ItemStyle-HorizontalAlign="Left">
																								<itemtemplate>
																									<asp:label	runat="server" 
																													style="margin-left:5;margin-right:5" 
																													Text='<%# DataBinder.Eval(Container.DataItem, "umurthn")& " Thn " & DataBinder.Eval(Container.DataItem, "umurbln")& " Bln " %>'
																													ID="grdDetil_lblusia" />
																								</itemtemplate>
																							</asp:TemplateColumn>
																								
																							<asp:TemplateColumn runat="server" 
																										HeaderText="Berobat" 
																										HeaderStyle-HorizontalAlign="Left" 
																										ItemStyle-HorizontalAlign="Left">
																								<itemtemplate>
																									<asp:checkbox	runat="server" 
																													style="margin-left:5;margin-right:5" 
																													checked='<%# DataBinder.Eval(Container.DataItem, "tanggungobat") %>'
																													ID="grdDetil_lbltanggungobat" 
																													enabled="false"/>
																								</itemtemplate>
																							</asp:TemplateColumn>
																								
																								
																								
																						</Columns>
																		</asp:DataGrid>							
																	</DIV>
																</TD>
															</TR>
														</TABLE>
													</TD>
												</TR>
											</TABLE>
													
										</asp:panel>													
										<!--END DETIL GRID PANEL-->
										
								
				</td> </tr>
			</table>
			<TR class="rheader">
									<TD class="rheadercol" align="left" height="2"></TD>
								<TR>
									<TD>
										<TABLE width="100%">
											<TR>												
												<TD width="50%" align="right">
													<input type="button" value="Close" onClick="window.close();" Class="sbttn" width="100%">
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
				</tr>
			</DIV></TD></TR></TBODY></TABLE>
		</form>
		<script src='/qislib/scripts/common/common.js' language="javascript"></script>
	</body>
</HTML>