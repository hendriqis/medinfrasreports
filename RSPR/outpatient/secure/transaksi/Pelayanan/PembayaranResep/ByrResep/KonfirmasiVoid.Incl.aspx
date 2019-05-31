<asp:panel id="pnlVoid" runat="server" visible="false">
	<TABLE cellSpacing="0" cellPadding="5" width="100%">
		<TR class="rbody">
			<TD class="rbodycol" align="left" height="25" colspan="2">
				<P>Kwitansi yang akan dibatalkan mengacu ke Pembayaran yang lain. Apakah semua akan dibatalkan ?<BR>
				</P>
			</TD>
		</TR>
		<TR>
			<TD width="20%">Pembayaran Pertama
			</TD>
			<TD width="40%">
				<asp:TextBox id="txtVoid_nobayar" 
							runat="server" 
							readonly="true" 
							style="text-align:left;"></asp:TextBox>
			</TD>
			<TD>&nbsp;
			</TD>
		</TR>
		<TR>
			<TD width="20%">Pembayaran Kedua
			</TD>
			<TD width="40%">
				<asp:TextBox id="txtVoid_nobayar1" 
							runat="server" 
							readonly="true" 
							style="text-align:left;"></asp:TextBox>
			</TD>
			<TD>&nbsp;
			</TD>
		</TR>
		
		<TR>
			<TD width="20%">Pembayaran Ketiga
			</TD>
			<TD width="40%">
				<asp:TextBox id="txtVoid_nobayar2" 
							runat="server" 
							readonly="true" 
							style="text-align:left;"></asp:TextBox>
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
				<asp:Button id="btnYesVoid" width="10%" runat="server" text="Yes" CssClass="sbttn" />
				<asp:Button id="btnCancelVoid" width="10%" runat="server" text="Cancel" CssClass="sbttn" />
			</TD>
		</TR>
	</TABLE>
</asp:panel>
