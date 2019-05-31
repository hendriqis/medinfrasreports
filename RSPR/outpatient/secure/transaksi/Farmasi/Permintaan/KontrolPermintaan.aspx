<%@ Page Language="vb" AutoEventWireup="false" Codebehind="KontrolPermintaan.aspx.vb" Inherits="QIS.Web.KontrolPermintaan"%>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../incl/calendarModule.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <HEAD>
		<TITLE>Kontrol Permintaan Barang</TITLE>
		<META NAME="GENERATOR" CONTENT="Microsoft Visual Studio .NET 7.1">
		<META NAME="CODE_LANGUAGE" CONTENT="Visual Basic .NET 7.1">
		<META NAME="vs_defaultClientScript" CONTENT="JavaScript">
		<META NAME="vs_targetSchema" CONTENT="http://schemas.microsoft.com/intellisense/ie5">
		<LINK HREF="/qislib/css/LG_/LG___000001.css" TYPE="text/css" REL="Stylesheet">
		<SCRIPT LANGUAGE="javascript" SRC="/qislib/scripts/LG_/lg___Dlg_RSYS.js"></SCRIPT>
		<SCRIPT LANGUAGE=javascript SRC='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></SCRIPT>
</HEAD>
	<BODY MS_POSITIONING="GridLayout">
		<FORM ID="frmKontrolPermintaan" METHOD="post" RUNAT="server">
			<ASP:PANEL ID="pnlHeader" RUNAT="server">
				<DIV ID="Header">
					<!-- BEGIN PAGE HEADER -->
					<MODULE:HEADER ID="BannerModule" RUNAT="server"></MODULE:HEADER>
					<!-- END PAGE HEADER -->
					<TABLE BORDER="10" BORDERCOLOR="#ffffff" CELLSPACING="0" CELLPADDING="5" WIDTH="100%">
						<TR CLASS="rheader">
							<TD CLASS="rheadercol" ALIGN="left" HEIGHT="25">KONTROL PERMINTAAN BARANG
							</TD>
						</TR>
						<TR CLASS="rbody">
							<TD CLASS="rbodycol" ALIGN="left" HEIGHT="25">
								<P>Halaman ini untuk melakukan kontrol terhadap transaksi permintaan barang.<br />
								</P>
							</TD>
						</TR>
						<TR CLASS="rheader">
							<TD CLASS="rheadercol" ALIGN="left" HEIGHT="4"></TD>
							<!-- SPACER ROW -->
						</TR>
						<TR CLASS="rbody">
							<TD CLASS="rbodycol" ALIGN="center">
								<TABLE WIDTH="100%" BORDER="0">
									<TR>
										<!-- Start Header Sebelah Kiri-->
										<TD WIDTH="50%" VALIGN="top">
											<TABLE WIDTH="100%">
												<TR>
													<TH COLSPAN="4">
														Gudang/Lokasi Distribusi</TH>
												<TR>
													<TD WIDTH="20%">
														<ASP:LINKBUTTON 
															ID="lbtnKodeGudangDist"
															RUNAT="server"
															CAUSESVALIDATION="False"
															TEXT="Gudang"
															ONMOUSEOVER="window.status='Click here to select from existing data.';return true" 
															ONMOUSEOUT="window.status='';return true;"
															TITLE="Click here to select from existing data.">
														</ASP:LINKBUTTON>
													</TD>
													<TD WIDTH="20%">
														<ASP:TEXTBOX
															ID="txtKodeGudangDist"
															RUNAT="server"
															AUTOPOSTBACK="True"
															WIDTH="100%">
														</ASP:TEXTBOX>
													</TD>
													<TD WIDTH="55%">
														<ASP:TEXTBOX
															ID="lblNamaGudangDist"
															RUNAT="server" 
															WIDTH="100%" 
															READONLY="True">
														</ASP:TEXTBOX>
													</TD>
													<TD>
													</TD>
												</TR>
												<TR>
													<TD>Lokasi
													</TD>
													<TD COLSPAN="2">
														<ASP:DROPDOWNLIST
															ID="ddlLokasiDist"
															RUNAT="server"
															WIDTH="100%">
														</ASP:DROPDOWNLIST>
													</TD>
													<TD>
													</TD>
												</TR>
											</TABLE>
										</TD>
										<!-- End Header Sebelah Kiri-->
										<!-- Start Header Sebelah Kanan-->
										<TD WIDTH="50%" VALIGN="top">
											<TABLE WIDTH="100%">
												<TR>
													<TH COLSPAN="3">
														Gudang/Lokasi Permintaan</TH>
												<TR>
													<TD WIDTH="20%">
														<ASP:LINKBUTTON 
															ID="lbtnKodeGudangMinta"
															RUNAT="server"
															CAUSESVALIDATION="False"
															TEXT="Gudang"
															ONMOUSEOVER="window.status='Click here to select from existing data.';return true" 
															ONMOUSEOUT="window.status='';return true;"
															TITLE="Click here to select from existing data.">
														</ASP:LINKBUTTON>
													</TD>
													<TD WIDTH="20%">
														<ASP:TEXTBOX
															ID="txtKodeGudangMinta"
															RUNAT="server"
															AUTOPOSTBACK="True"
															WIDTH="100%">
														</ASP:TEXTBOX>
													</TD>
													<TD WIDTH="55%">
														<ASP:TEXTBOX
															ID="lblNamaGudangMinta"
															RUNAT="server" 
															WIDTH="100%" 
															READONLY="True">
														</ASP:TEXTBOX>
													</TD>
													<TD>
													</TD>
												</TR>
												<TR>
													<TD>Lokasi
													</TD>
													<TD COLSPAN="2">
														<ASP:DROPDOWNLIST
															ID="ddlLokasiMinta"
															RUNAT="server"
															WIDTH="100%">
														</ASP:DROPDOWNLIST>
													</TD>
													<TD>
													</TD>
												</TR>
												<TR>
													<TD>
													</TD>
													<TD COLSPAN="3">
														<ASP:CHECKBOX
															ID="chkSemuaGudang"
															RUNAT="server"
															CHECKED="False"
															AUTOPOSTBACK="True"
															TEXT="Semua Gudang">
														</ASP:CHECKBOX>
													</TD>
												</TR>
											</TABLE>
										</TD>
										<!-- End Header Sebelah Kanan-->
									</TR>
									<TR>
										<TD></TD>
										<TD>
											<ASP:BUTTON
												ID="btnRefresh"
												RUNAT="server"
												TEXT="Refresh" 
												CLASS="sbttn">
											</ASP:BUTTON>
											<ASP:BUTTON
												ID="btnProcess"
												RUNAT="server"
												TEXT="Proses" 
												CLASS="sbttn">
											</ASP:BUTTON>
										</TD>
									</TR>
								</TABLE>
							</TD>
						</TR>
					</TABLE>
				</DIV>
				
				<TABLE CELLSPACING="5" CELLPADDING="5" WIDTH="100%">
					<TR CLASS="rbody">
						<TD WIDTH="100%">
							<TABLE WIDTH="100%">
								<TR>
									<TD WIDTH="100%" HEIGHT="100%">
				
										<!-- Start Grid Kontrol Permintaan -->
										<ASP:DATAGRID
											ID="gridPermintaan" 
											RUNAT="server" 
											WIDTH="100%" 
											CELLPADDING="0" 
											SHOWFOOTER="True" 
											DATAKEYFIELD="counter" 
											GridLines="none" 
											BORDERWIDTH="1" 
											BORDERCOLOR="Gainsboro" 
											CELLSPACING="0" 
											AUTOGENERATECOLUMNS="False">
											<HEADERSTYLE FONT-BOLD="True" BACKCOLOR="#DEE3E7" HEIGHT="20"></HEADERSTYLE>
											<ITEMSTYLE FONT-SIZE="8pt"></ITEMSTYLE>
											<SELECTEDITEMSTYLE BACKCOLOR="CornflowerBlue"></SELECTEDITEMSTYLE>
											<ALTERNATINGITEMSTYLE BACKCOLOR="WhiteSmoke"></ALTERNATINGITEMSTYLE>
											<PAGERSTYLE MODE="NumericPages" HORIZONTALALIGN="right"></PAGERSTYLE>
											<EDITITEMSTYLE FONT-BOLD="true"></EDITITEMSTYLE>
											<COLUMNS>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Nominta" 
													VISIBLE="False">
													<ITEMTEMPLATE>
														<ASP:LABEL	
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "nominta") %>' 
															ID="_lblNoMinta">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Gudang" 
													VISIBLE="True">
													<ITEMTEMPLATE>
														<ASP:LABEL	
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "kdgudang") %>' 
															ID="_lblKdGudang">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Gudang" 
													VISIBLE="False">
													<ITEMTEMPLATE>
														<ASP:LABEL	
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "nmGudang") %>' 
															ID="_lblNmBagian">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Lokasi" 
													VISIBLE="True">
													<ITEMTEMPLATE>
														<ASP:LABEL	
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>' 
															ID="_lblKdLokasi">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="counter" 
													VISIBLE="False">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
															ID="_lblCounter">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Kode Barang" 
													VISIBLE="false">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
															ID="_lblKodeBarang">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Nama Barang">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "nmbarang1") %>' 
															ID="_lblNmItem">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Minta">
													<ITEMTEMPLATE>
														<ASP:LABEL 
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# Format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>' 
															ID="_lblQtyMinta">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Satuan" 
													VISIBLE="true">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
															ID="_lblSatuan">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="SatuanKc" 
													VISIBLE="false">
													<ITEMTEMPLATE>
														<ASP:LABEL	
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>' 
															ID="_lblSatuanKc">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Faktor" 
													VISIBLE="false">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "faktor") %>' 
															ID="_lblFaktor">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Stock" 
													VISIBLE="True" 
													ITEMSTYLE-HORIZONTALALIGN="Right" 
													HEADERSTYLE-HORIZONTALALIGN="Right">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# Format(DataBinder.Eval(Container.DataItem, "stock"), "#,##0.00") %>' 
															ID="_lblStock">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>	
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Batal" 
													ITEMSTYLE-HORIZONTALALIGN="Center" 
													HEADERSTYLE-HORIZONTALALIGN="Center">
													<ITEMTEMPLATE>
														<ASP:CHECKBOX
															RUNAT="server" 
															ENABLED="True"
															CHECKED="false"
															ID="_chkBatal">
														</ASP:CHECKBOX>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>																	
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Dist." 
													ITEMSTYLE-HORIZONTALALIGN="Center" 
													HEADERSTYLE-HORIZONTALALIGN="Center">
													<ITEMTEMPLATE>
														<ASP:CHECKBOX
															RUNAT="server" 
															ENABLED="True"
															CHECKED="false"
															ID="_chkDistribusi">
														</ASP:CHECKBOX>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN
													RUNAT="server" 
													HEADERTEXT="Mnt.Beli" 
													ITEMSTYLE-HORIZONTALALIGN="Center" 
													HEADERSTYLE-HORIZONTALALIGN="Center">
													<ITEMTEMPLATE>
														<ASP:CHECKBOX
															RUNAT="server" 
															ENABLED="True"
															CHECKED="false"
															ID="_chkPesan">
														</ASP:CHECKBOX>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Qty Dist." 
													ITEMSTYLE-HORIZONTALALIGN="Right" 
													HEADERSTYLE-HORIZONTALALIGN="Center" 
													VISIBLE="True">
													<ITEMTEMPLATE>
														<ASP:TEXTBOX
															ID="txtQtyKirim" 
															RUNAT="server" 
															STYLE="margin-left:5;margin-right:5" 
															TEXT='<%# Format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>' 
															WIDTH="50">
														</ASP:TEXTBOX>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Satuan">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
															ID="_lblSatuanKirim">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Mnt.Beli" 
													ITEMSTYLE-HORIZONTALALIGN="Right" 
													HEADERSTYLE-HORIZONTALALIGN="Center" 
													VISIBLE="True">
													<ITEMTEMPLATE>
														<ASP:TEXTBOX
															ID="txtQtyPesan" 
															RUNAT="server" 
															STYLE="margin-left:5;margin-right:5" 
															TEXT='<%# Format(DataBinder.Eval(Container.DataItem, "qtyPesan"), "#,##0.00") %>' 
															WIDTH="50">
														</ASP:TEXTBOX>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Satuan">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "satuanBs") %>' 
															ID="_lblSatuanBs">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Faktor" 
													VISIBLE="false">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "faktorbs") %>' 
															ID="_lblFaktorBs">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Keterangan" 
													VISIBLE="False">
													<ITEMTEMPLATE>
														<ASP:LABEL
															RUNAT="server" 
															STYLE="margin-left:1;margin-right:5" 
															TEXT='<%# DataBinder.Eval(Container.DataItem, "keterangan") %>' 
															ID="_lblKeterangan">
														</ASP:LABEL>
													</ITEMTEMPLATE>
												</ASP:TEMPLATECOLUMN>
												<ASP:TEMPLATECOLUMN 
													RUNAT="server" 
													HEADERTEXT="Supplier" 
													ITEMSTYLE-HORIZONTALALIGN="Left" 
													HEADERSTYLE-HORIZONTALALIGN="Left" 
													VISIBLE="True">
													<ITEMTEMPLATE>
														<ASP:TEXTBOX	
															ID="txtPBF" 
															RUNAT="server" 
															TEXT='<%# Trim(DataBinder.Eval(Container.DataItem, "namaSupplier")) + " [" + Trim(DataBinder.Eval(Container.DataItem, "kdsupplier2 ")) + "]" %>'
															BORDERSTYLE="None" 
															STYLE="CURSOR: hand"
															WIDTH="100%"
															FORECOLOR="#FF6600"
															FONT-BOLD="True"
															BACKCOLOR="Transparent"
															READONLY="True">
														</ASP:TEXTBOX>
													</ITEMTEMPLATE>
													<ITEMSTYLE WIDTH="200px"></ITEMSTYLE>
												</ASP:TEMPLATECOLUMN>
											</COLUMNS>
										</ASP:DATAGRID>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</ASP:PANEL>
			<ASP:PANEL ID="pnlMessage" RUNAT="server" >
				<table border="0" width="100%" cellspacing="0" cellpadding="0">
					<tr>
						<td width="100%" valign="top">
							<table cellSpacing="10" cellPadding="0" width="100%" border="0">
								<tr>
									<td style="PADDING-TOP: 5px" align="left">
										<TABLE cellSpacing="0" cellPadding="5" width="100%">
											<TR CLASS="rheader">
												<TD CLASS="rheadercol" ALIGN="left" HEIGHT="25">KONTROL PERMINTAAN BARANG
												</TD>
											</TR>
											<TR CLASS="rbody">
												<TD CLASS="rbodycol" ALIGN="left" HEIGHT="25">
													<P>Halaman ini untuk melakukan kontrol terhadap transaksi permintaan barang.<br />
													</P>
												</TD>
											</TR>
											<TR class="rheader">
												<TD class="rheadercol" align="left" height="2">
												</TD>
											</TR>
											<TR CLASS="rbody">
												<TD CLASS="rbodycol" ALIGN="left" HEIGHT="25">
													<ASP:LABEL ID="lblMessage" RUNAT="server"></ASP:LABEL>
													<br />
													<br />
													<ASP:BUTTON 
														ID="btnDone" 
														RUNAT="server" 
														TEXT="Done" 
														CSSCLASS=sbttn 
														CAUSESVALIDATION="False">
													</ASP:BUTTON>
												</TD>
											</TR>
											<TR class="rheader">
												<TD class="rheadercol" align="left" height="2">
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</TD>
					<TR>
				<TABLE>
				
			</ASP:PANEL>						
		</FORM>
		<SCRIPT LANGUAGE="javascript">
		function CheckStatus(idtr,suffix)
		{
			var chkBatal = document.getElementById(idtr+'__chkBatal');
			var chkPesan = document.getElementById(idtr+'__chkPesan');
			var chkDistribusi = document.getElementById(idtr+'__chkDistribusi');

			if (suffix=='_chkBatal')
			{
				chkPesan.checked=false;
				chkDistribusi.checked=false;
			}			
			
			if (suffix=='_chkPesan')
			{
				chkBatal.checked=false;
				chkDistribusi.checked=false;
			}	
			
			if (suffix=='_chkDistribusi')
			{
				chkBatal.checked=false;
				chkPesan.checked=false;
			}	
		}

		</SCRIPT>
		<SCRIPT LANGUAGE="javascript" SRC="/qislib/scripts/common/common.js"></SCRIPT>
		<SCRIPT LANGUAGE="vbscript" SRC="/qislib/scripts/common/common.vbs"></SCRIPT>
	</BODY>
</HTML>
