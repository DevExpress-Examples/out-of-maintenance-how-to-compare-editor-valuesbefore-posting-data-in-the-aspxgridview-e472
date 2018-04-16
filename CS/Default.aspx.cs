using System;
using System.Collections.Generic;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {

    protected void ASPxGridView1_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e) {
        if(e.Column.FieldName == "min_lvl" || e.Column.FieldName == "max_lvl") {
            ASPxTextBox txtBox = (ASPxTextBox)e.Editor;
            txtBox.ClientSideEvents.Validation = "function(s,e) {{ e.isValid = ValidateEditorValue(); e.errorText = 'MinLvl should be less than MaxLvl';}}";
        }
    }
}
