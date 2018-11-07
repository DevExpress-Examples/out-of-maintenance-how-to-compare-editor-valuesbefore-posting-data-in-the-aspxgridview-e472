<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>


<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
        function ValidateEditorValue() {
            return GetEditorValue("min_lvl") < GetEditorValue("max_lvl");
        }

        function GetEditorValue(fieldName) {
            var editor = grid.GetEditor(fieldName);
            return parseInt(editor.GetValue());
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid"
                DataSourceID="AccessDataSource1" KeyFieldName="job_id" OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" Width="832px">
                <columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                <dxwgv:GridViewDataTextColumn FieldName="job_id" ReadOnly="True" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="job_desc" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="min_lvl" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="max_lvl" VisibleIndex="4">
                </dxwgv:GridViewDataTextColumn>
            </columns>
            </dxwgv:ASPxGridView>
        </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
            SelectCommand="SELECT * FROM [jobs]"
            DeleteCommand="DELETE FROM [jobs] WHERE [job_id] = ?"
            InsertCommand="INSERT INTO [jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (?, ?, ?, ?)"
            UpdateCommand="UPDATE [jobs] SET [job_desc] = ?, [min_lvl] = ?, [max_lvl] = ? WHERE [job_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="job_id" Type="Int16" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="job_desc" Type="String" />
                <asp:Parameter Name="min_lvl" Type="Byte" />
                <asp:Parameter Name="max_lvl" Type="Byte" />
                <asp:Parameter Name="job_id" Type="Int16" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="job_id" Type="Int16" />
                <asp:Parameter Name="job_desc" Type="String" />
                <asp:Parameter Name="min_lvl" Type="Byte" />
                <asp:Parameter Name="max_lvl" Type="Byte" />
            </InsertParameters>
        </asp:AccessDataSource>
        &nbsp;&nbsp;
    </form>
</body>
</html>