Imports System
Imports System.Collections.Generic
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ASPxGridView1_CellEditorInitialize(ByVal sender As Object, ByVal e As ASPxGridViewEditorEventArgs)
        If e.Column.FieldName = "min_lvl" OrElse e.Column.FieldName = "max_lvl" Then
            Dim txtBox As ASPxTextBox = CType(e.Editor, ASPxTextBox)
            txtBox.ClientSideEvents.Validation = "function(s,e) {{ e.isValid = ValidateEditorValue(); e.errorText = 'MinLvl should be less than MaxLvl';}}"
        End If
    End Sub
End Class
