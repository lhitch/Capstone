<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLog.aspx.cs" Inherits="CCADLog.EmployeeLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="OvenLabel" runat="server" Text="Oven "></asp:Label>
        <asp:Button ID="Button1" CssClass="button" runat="server" Text="Return" OnClick="Return" />
        <br />
        <asp:Table id="log" runat="server">
            <asp:TableRow Height="40%">
                <asp:TableCell CssClass="cell" width="3%"><asp:Label ID="Label1" runat="server" Text="Flight Safety Part"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="4%"><asp:Label ID="Label2" runat="server" Text="Mech In"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="7%"><asp:Label ID="Label3" runat="server" Text="Part Noun"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="7%"><asp:Label ID="Label4" runat="server" Text="Part No."></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="7%"><asp:Label ID="Label11" runat="server" Text="Date in"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="5%"><asp:Label ID="Label5" runat="server" Text="Time in"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="8%"><asp:Label ID="Label6" runat="server" Text="Serial/Tag No."></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="7%"><asp:Label ID="Label12" runat="server" Text="Date Out"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="5%"><asp:Label ID="Label7" runat="server" Text="Time Out"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="3%"><asp:Label ID="Label8" runat="server" Text="Bake Hours"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="4%"><asp:Label ID="Label9" runat="server" Text="Temp Req."></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="3%"><asp:Label ID="Label10" runat="server" Text="Supervisor"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="7%"><asp:Label ID="Label13" runat="server" Text="Date Pulled"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="5%"><asp:Label ID="Label14" runat="server" Text="Time Pulled"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="4%"><asp:Label ID="Label15" runat="server" Text="Mech Out"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="4%"><asp:Label ID="Label16" runat="server" Text="Quantity"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="7%"><asp:Label ID="Label17" runat="server" Text="Procedure"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="5%"><asp:Label ID="Label18" runat="server" Text="Location"></asp:Label></asp:TableCell>
                <asp:TableCell CssClass="cell" width="4%" RowSpan="2"><asp:Button ID="EnterBtn" CssClass="button" OnClick="AddRow" runat="server" Text="Enter" Width="100%" Height="100%" /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow Height="60%">
                <asp:TableCell CssClass="cell"><asp:TextBox ID="FlightSafetyTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="MechStampTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="PartNounTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="PartNoTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="DateInTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="TimeInTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="SerialNoTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="DateOutTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="TimeOutTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="BakeHourReqTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="TempReqTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="InspectTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="DatePulledTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="TimePulledTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="MechStampTxt2" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="QuantityTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="ProcedureTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
                <asp:TableCell CssClass="cell"><asp:TextBox ID="LocationTxt" CssClass="field" runat="server" BackColor="#00CCFF"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div id="PINdiv" runat="server">
            <asp:Panel runat="server">
                <asp:Label ID="PINPromptlbl" runat="server" Text="Enter PIN for verification"></asp:Label>
                <asp:TextBox ID="PINtxt" runat="server"></asp:TextBox>

                <asp:Button ID="Signoffbtn" runat="server" OnClick="Signoffbtn_Click" Text="Sign off" />

            </asp:Panel>
        </div>
        <div id="Errdiv" runat="server">
            <asp:Label ID="ErrNotilbl" runat="server"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" style="margin-top: 2px" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="ID" OnRowCommand="ValidatePart" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="OvenNumber" HeaderText="Oven Number" SortExpression="OvenNumber" />
                <asp:BoundField DataField="FlightSafetyPart" HeaderText="Flight Safety Part" SortExpression="FlightSafetyPart" />
                <asp:BoundField DataField="MechIn" HeaderText="Mech In" SortExpression="MechIn" />
                <asp:BoundField DataField="PartNoun" HeaderText="Part Noun" SortExpression="PartNoun" />
                <asp:BoundField DataField="PartNumber" HeaderText="Part Number" SortExpression="PartNumber" />
                <asp:BoundField DataField="DateIn" HeaderText="Date In" SortExpression="DateIn" DataFormatString="{0:d}" />
                <asp:BoundField DataField="TimeIn" HeaderText="Time In" SortExpression="TimeIn" />
                <asp:BoundField DataField="SerialTagNumber" HeaderText="Serial/Tag Number" SortExpression="SerialTagNumber" />
                <asp:BoundField DataField="DateOut" HeaderText="Date Out" SortExpression="DateOut" DataFormatString="{0:d}" />
                <asp:BoundField DataField="TimeOut" HeaderText="Time Out" SortExpression="TimeOut" />
                <asp:BoundField DataField="BakeHours" HeaderText="Bake Hours" SortExpression="BakeHours" />
                <asp:BoundField DataField="TempRequired" HeaderText="Temp Required" SortExpression="TempRequired" />
                <asp:ButtonField ButtonType="Button" CommandName="Validate" HeaderText="Supervisor" Text="Sign off" />
                <asp:BoundField DataField="DatePulled" HeaderText="Date Pulled" SortExpression="DatePulled" DataFormatString="{0:d}" />
                <asp:BoundField DataField="TimePulled" HeaderText="Time Pulled" SortExpression="TimePulled" />
                <asp:BoundField DataField="MechOut" HeaderText="Mech Out" SortExpression="MechOut" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="CCADProc" HeaderText="Procedure" SortExpression="CCADProc" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CCADLogOffline %>" SelectCommand="SELECT * FROM [Log]"
            DeleteCommand="DELETE FROM [Log] WHERE [ID] = @ID"
            UpdateCommand="UPDATE [Log] SET [OvenNumber] = @OvenNumber, [FlightSafetyPart] = @FlightSafetyPart, [MechIn] = @MechIn, [PartNoun] = @PartNoun, [PartNumber] = @PartNumber, [DateIn] = @DateIn, [TimeIn] = @TimeIn, [SerialTagNumber] = @SerialTagNumber, [DateOut] = @DateOut, [TimeOut] = @TimeOut, [BakeHours] = @BakeHours, [TempRequired] = @TempRequired, [Supervisor] = @Supervisor, [DatePulled] = @DatePulled, [TimePulled] = @TimePulled, [MechOut] = @MechOut, [Quantity] = @Quantity, [CCADProc] = @CCADProc, [Location] = @Location, [Comment] = @Comment WHERE [ID] = @ID" InsertCommand="INSERT INTO [Log] ([OvenNumber], [FlightSafetyPart], [MechIn], [PartNoun], [PartNumber], [DateIn], [TimeIn], [SerialTagNumber], [DateOut], [TimeOut], [BakeHours], [TempRequired], [Supervisor], [DatePulled], [TimePulled], [MechOut], [Quantity], [CCADProc], [Location], [Comment]) VALUES (@OvenNumber, @FlightSafetyPart, @MechIn, @PartNoun, @PartNumber, @DateIn, @TimeIn, @SerialTagNumber, @DateOut, @TimeOut, @BakeHours, @TempRequired, @Supervisor, @DatePulled, @TimePulled, @MechOut, @Quantity, @CCADProc, @Location, @Comment)"
            >
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OvenNumber" Type="Int16" />
                <asp:Parameter Name="FlightSafetyPart" Type="String" />
                <asp:Parameter Name="MechIn" Type="String" />
                <asp:Parameter Name="PartNoun" Type="String" />
                <asp:Parameter Name="PartNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateIn" />
                <asp:Parameter DbType="Time" Name="TimeIn" />
                <asp:Parameter Name="SerialTagNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOut" />
                <asp:Parameter DbType="Time" Name="TimeOut" />
                <asp:Parameter Name="BakeHours" Type="Int16" />
                <asp:Parameter Name="TempRequired" Type="Int32" />
                <asp:Parameter Name="Supervisor" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="DatePulled" />
                <asp:Parameter DbType="Time" Name="TimePulled" />
                <asp:Parameter Name="MechOut" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="CCADProc" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OvenNumber" Type="Int16" />
                <asp:Parameter Name="FlightSafetyPart" Type="String" />
                <asp:Parameter Name="MechIn" Type="String" />
                <asp:Parameter Name="PartNoun" Type="String" />
                <asp:Parameter Name="PartNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateIn" />
                <asp:Parameter DbType="Time" Name="TimeIn" />
                <asp:Parameter Name="SerialTagNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOut" />
                <asp:Parameter DbType="Time" Name="TimeOut" />
                <asp:Parameter Name="BakeHours" Type="Int16" />
                <asp:Parameter Name="TempRequired" Type="Int32" />
                <asp:Parameter Name="Supervisor" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="DatePulled" />
                <asp:Parameter DbType="Time" Name="TimePulled" />
                <asp:Parameter Name="MechOut" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="CCADProc" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="ID" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </form>
</body>
</html>
