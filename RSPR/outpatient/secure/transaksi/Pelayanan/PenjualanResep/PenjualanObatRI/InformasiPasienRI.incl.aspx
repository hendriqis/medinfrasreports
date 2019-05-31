<!-- ----------------------------
			BEGIN INFORMASI PASIEN
			----------------------------- -->
			<DIV ID="oDialog" STYLE="display:none;">
														
				<div style="position: absolute; top:0; left:0; width:100%; height:100%; border:1px solid black; filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=gold, EndColorStr=#FFFFFF); padding:10px" >
					
					<b>Informasi Pasien</b>
					<hr size="1" style="border:1px solid black;">
			
						<table width="100%">
							<tr>
								
								<TD class="rBodyInfo" height="20" colspan=3>
									<P>
										
										<table width="100%" bgcolor=MintCream bgcolor=#b0c7cb id=__infp>
											<tr>
												<td width="30%">No.RM
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblNoRm" Runat="server" />
												</td>
											</tr>											
											<tr>
												<td width="30%">Nama
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lbtnNamaPasien" Runat="server" />
												</td>
											</tr>
											<tr>
												<td width="30%">Jenis Kelamin
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblJenisKelamin" Runat="server" />
												</td>
											</tr>
											<tr>
												<td width="30%">Alamat
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lbtnAlamat" Runat="server" />
												</td>
											</tr>
											<tr>
												<td width="30%">Telepon
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblTelp" Runat="server" />
												</td>
											</tr>
											<tr>
												<td width="30%">Tgl. Lahir
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lbtnTglLahir" Runat="server" text="01-07-1976 / <b>28Th,4Bln,5Hr</b> " />
												</td>
											</tr>
											<tr>
												<td width="30%">Ruang
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblKdRuang" Runat="server" text="" />&nbsp;/&nbsp;
													<asp:Label ID="lblNmRuang" Runat="server" text="" />
												</td>
											</tr>
											<tr>
												<td width="30%">Kelas
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblKdKelas" Runat="server" text="" />&nbsp;/&nbsp;
													<asp:Label ID="lblNmKelas" Runat="server" text="" />&nbsp;/&nbsp;
													<asp:Label ID="lblKdJTKelas" Runat="server" text="" />
												</td>
											</tr>
											<tr>
												<td width="30%">Charge Type
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblKdCharge" Runat="server" text="" />&nbsp;/&nbsp;
													<asp:Label ID="lblNmCharge" Runat="server" text="" />										
												</td>
											</tr>
											<tr>
												<td width="30%">No. TT
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblNoTT" Runat="server" text="" />													
												</td>
											</tr>
											<tr>
												<td width="30%">Jenis Pasien
												</td>
												<td>&nbsp;:&nbsp;
												</td>
												<td>
													<asp:Label ID="lblKdTipeP" Runat="server" text="" />&nbsp;/&nbsp;
													<asp:Label ID="lblNmTipeP" Runat="server" text="" />											
												</td>
											</tr>											
										</table>
										
									</P>
								</TD>
							</tr>	
							
						</table>
						
						<br />
						<input type="button" value="Close Message" class=sbttn tabindex="-1" onclick="parent.oPopup.hide();" />
				</div>		
			</DIV>
			<!-- ----------------------------
				END INFORMASI PASIEN
			----------------------------- -->