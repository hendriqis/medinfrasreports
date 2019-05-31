<asp:panel id="pnlKonfirmasiPiutang" runat="server" visible="false">
	<TABLE cellSpacing="0" cellPadding="5" width="100%">
		<TR class="rbody">
			<TD class="rbodycol" align="left" height="25" colspan="3">
				<P>Apakah Sisa Tagihan akan dijadikan Piutang (A/R) ?<br />
				</P>
			</TD>
		</TR>
		<TR>
			<TD width="20%">Piutang Pasien
			</TD>
			<TD width="40%">
				Rp.&nbsp;
				<asp:TextBox 
					id="txtPiutangPasien" 
					runat="server" 
					readonly="true" 
					style="text-align:right;" >
				</asp:TextBox>
			</TD>
			<TD>&nbsp;
			</TD>
		</TR>
		<TR>
			<TD width="20%">Piutang Instansi
			</TD>
			<TD width="40%">
				Rp.&nbsp;
				<asp:TextBox 
					id="txtPiutangInstansi" 
					runat="server" 
					readonly="true" 
					style="text-align:right;" >
				</asp:TextBox>
			</TD>
			<TD>&nbsp;
			</TD>
		</TR>
		
		<TR class="rheader">
			<TD class="rheadercol" align="left" height="2" colspan=3>
			</TD>
		</TR> 
	</TABLE>
	
	<TABLE width="100%">
		<TR>
			<TD width="100%">
				<asp:Button id="btnYesPiutang" width="10%" runat="server" text="Yes" CssClass="sbttn" />
				<asp:Button id="btnCancelPiutang" width="10%" runat="server" text="Close" CssClass="sbttn" />
			</TD>
		</TR>
	</TABLE>
</asp:panel>