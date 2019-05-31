<TABLE WIDTH="100%">
	<TR>
		<TD WIDTH="50%" valign="top">
			<TABLE WIDTH="100%">
				<TR>
					<TD WIDTH="30%">
						<ASP:LINKBUTTON 
							ID="lbtnNoBukti"
							RUNAT="server"
							CAUSESVALIDATION="False"
							TEXT="No. Permintaan"
							ONMOUSEOVER="window.status='Click here to select from existing data.';return true" 
							ONMOUSEOUT="window.status='';return true;"
							TITLE="Click here to select from existing data.">
						</ASP:LINKBUTTON>
					</TD>
					<TD>
						<ASP:TEXTBOX
							ID="txtNoBukti"
							RUNAT="server"
							AUTOPOSTBACK="True"
							WIDTH="95%"
                            CssClass="txtautogenerate">
						</ASP:TEXTBOX>
						<ASP:CHECKBOX 
							ID="chkPosting" 
							RUNAT="server" 
							TEXT="Posting" 
							ENABLED="False" 
							VISIBLE="False">
						</ASP:CHECKBOX>
					</TD>
				</TR>
				<TR>
					<TD WIDTH="30%">
						<ASP:LINKBUTTON
							ID="lbtnGudang"
							RUNAT="server"
							CAUSESVALIDATION="False"
							TEXT="Gudang">
						</ASP:LINKBUTTON>
					</TD>
					<TD>
						<ASP:TEXTBOX
							ID="txtKodeGudang"
							RUNAT="server"
							AUTOPOSTBACK="True"
							WIDTH="24%">
						</ASP:TEXTBOX>
						<ASP:TEXTBOX
							ID="lblNamaGudang"
							RUNAT="server" 
							WIDTH="70%" 
							READONLY="TRUE">
						</ASP:TEXTBOX>
						<ASP:REQUIREDFIELDVALIDATOR
							ID="rfvGudang"
							RUNAT="server"
							CONTROLTOVALIDATE="lblNamaGudang"
							ERRORMESSAGE="Gudang harus diisi"
							DISPLAY="Dynamic">**
						</ASP:REQUIREDFIELDVALIDATOR>
					</TD>
				</TR>
				<TR>
					<TD WIDTH="30%">
						Lokasi
					</TD>
					<TD>
						<ASP:DROPDOWNLIST
							ID="ddlLokasi"
							RUNAT="server"
							CSSCLASS="drpdwn"
							WIDTH="95%">
						</ASP:DROPDOWNLIST>
					</TD>
				</TR>
				
			</TABLE>
		</TD>
		<TD WIDTH="50%">
			<TABLE WIDTH="100%">
				<TR>
					<TD WIDTH="30%">
						Tanggal 
					</TD>
					<TD>
						<MODULE:WEBCAL ID="calTglMinta" RUNAT="server" dontresetdate="true">
						</MODULE:WEBCAL>
					</TD>
				</TR>
				<TR>
					<TD WIDTH="30%">
						Bagian 
					</TD>
					<TD>
						<ASP:DROPDOWNLIST
							ID="ddlPemakai"
							RUNAT="server"
							CSSCLASS="drpdwn"
							WIDTH="95%">
						</ASP:DROPDOWNLIST>
					</TD>
				</TR>
				<TR>
					<TD WIDTH="30%" VALIGN="top">
						Deskripsi
					</TD>
					<TD>
						<ASP:DROPDOWNLIST
							ID="ddlDeskripsi"
							RUNAT="server"
							CSSCLASS="drpdwn"
							WIDTH="95%">
						</ASP:DROPDOWNLIST>
					</TD>
				</TR>
				<TR>
					<TD WIDTH="30%" VALIGN="top">
						Keterangan
					</TD>
					<TD>
						<ASP:TEXTBOX
							ID="txtKeterangan"
							RUNAT="server"
							AUTOPOSTBACK="False"
							WIDTH="95%">
						</ASP:TEXTBOX>
					</TD>
				</TR>				
			</TABLE>
		</TD>
	</TR>
</TABLE>