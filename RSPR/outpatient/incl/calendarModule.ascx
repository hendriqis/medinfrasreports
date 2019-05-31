<%@ Control Language="vb" AutoEventWireup="false" Codebehind="calendarModule.ascx.vb" Inherits="QIS.Web.calendarModule" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

<TABLE cellSpacing="0" cellPadding="0" width="270" border="0">
		<TR>
			<TD>
				
				<SELECT id="itemEndDateMonth" 
						runat="server">
							
							<OPTION value="0">January</OPTION>
							<OPTION value="1">February</OPTION>
							<OPTION value="2">March</OPTION>
							<OPTION value="3">April</OPTION>
							<OPTION value="4">May</OPTION>
							<OPTION value="5">June</OPTION>
							<OPTION value="6">July</OPTION>
							<OPTION value="7">August</OPTION>
							<OPTION value="8">September</OPTION>
							<OPTION value="9">October</OPTION>
							<OPTION value="10">November</OPTION>
							<OPTION value="11">December</OPTION>
				</SELECT>										
				
				<SELECT id="itemEndDateDay" 
						runat="server">
						
						<OPTION value="1">1</OPTION>
						<OPTION value="2">2</OPTION>
						<OPTION value="3">3</OPTION>
						<OPTION value="4">4</OPTION>
						<OPTION value="5">5</OPTION>
						<OPTION value="6">6</OPTION>
						<OPTION value="7">7</OPTION>
						<OPTION value="8">8</OPTION>
						<OPTION value="9">9</OPTION>
						<OPTION value="10">10</OPTION>
						<OPTION value="11">11</OPTION>
						<OPTION value="12">12</OPTION>
						<OPTION value="13">13</OPTION>
						<OPTION value="14">14</OPTION>
						<OPTION value="15">15</OPTION>
						<OPTION value="16">16</OPTION>
						<OPTION value="17">17</OPTION>
						<OPTION value="18">18</OPTION>
						<OPTION value="19">19</OPTION>
						<OPTION value="20">20</OPTION>
						<OPTION value="21">21</OPTION>
						<OPTION value="22">22</OPTION>
						<OPTION value="23">23</OPTION>
						<OPTION value="24">24</OPTION>
						<OPTION value="25">25</OPTION>
						<OPTION value="26">26</OPTION>
						<OPTION value="27">27</OPTION>
						<OPTION value="28">28</OPTION>
						<OPTION value="29">29</OPTION>
						<OPTION value="30">30</OPTION>
						<OPTION value="31">31</OPTION>
				</SELECT>
				
				<SELECT id="itemEndDateYear" 
						runat="server">
						
						<OPTION value="2000">2000</OPTION>
						<OPTION value="2001">2001</OPTION>
						<OPTION value="2002">2002</OPTION>
						<OPTION value="2003">2003</OPTION>
						<OPTION value="2004">2004</OPTION>
						<OPTION value="2005">2005</OPTION>
						<OPTION value="2006">2006</OPTION>
						<OPTION value="2007">2007</OPTION>
						<OPTION value="2008">2008</OPTION>
						<OPTION value="2009">2009</OPTION>
						<OPTION value="2010">2010</OPTION>
						<OPTION value="2011">2011</OPTION>
						<OPTION value="2012">2012</OPTION>
						<OPTION value="2013">2013</OPTION>
						<OPTION value="2014">2014</OPTION>
						<OPTION value="2015">2015</OPTION>
						<OPTION value="2016">2016</OPTION>
						<OPTION value="2017">2017</OPTION>
						<OPTION value="2018">2018</OPTION>
						<OPTION value="2019">2019</OPTION>
						<OPTION value="2020">2020</OPTION>
				</SELECT>
				&nbsp;
				
				<asp:HyperLink id="_cal" Runat="server">
					<asp:Label Runat="server" ID="iCalendar">
						<IMG	id=calIcon 								
								alt="Click here to select a date" 
								src="/qislib/images/datepicker_popup.gif" 								
								align=absmiddle
								border=0>
					</asp:Label>
				</asp:HyperLink>
							
			</TD>
		</TR>
										
</TABLE>