pageextension 11723 "Cash Receipt Journal CZL" extends "Cash Receipt Journal"
{
    layout
    {
#if not CLEAN22
        addafter("Account No.")
        {
            field("Posting Group CZL"; Rec."Posting Group")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the posting group that will be used in posting the journal line.The field is used only if the account type is either customer or vendor.';
                Visible = false;
                ObsoleteState = Pending;
                ObsoleteTag = '22.0';
                ObsoleteReason = 'Replaced by standard Posting Group field.';
            }
        }
#endif
        addafter("Posting Date")
        {
#if not CLEAN22
            field("VAT Date CZL"; Rec."VAT Date CZL")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'VAT Date (Obsolete)';
                ToolTip = 'Specifies date by which the accounting transaction will enter VAT statement.';
                ObsoleteState = Pending;
                ObsoleteTag = '22.0';
                ObsoleteReason = 'Replaced by VAT Reporting Date.';
                Visible = not ReplaceVATDateEnabled;
            }
#endif
            field("VAT Reporting Date CZL"; Rec."VAT Reporting Date")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the date used to include entries on VAT reports in a VAT period. This is either the date that the document was created or posted, depending on your setting on the General Ledger Setup page.';
#if not CLEAN22
                Visible = ReplaceVATDateEnabled and VATDateEnabled;
#else
                Visible = VATDateEnabled;
#endif
            }
        }
    }
    trigger OnOpenPage()
    begin
        VATDateEnabled := VATReportingDateMgt.IsVATDateEnabled();
#if not CLEAN22
        ReplaceVATDateEnabled := ReplaceVATDateMgtCZL.IsEnabled();
#endif
    end;

    var
        VATReportingDateMgt: Codeunit "VAT Reporting Date Mgt";
#if not CLEAN22
#pragma warning disable AL0432
        ReplaceVATDateMgtCZL: Codeunit "Replace VAT Date Mgt. CZL";
        ReplaceVATDateEnabled: Boolean;
#pragma warning restore AL0432
#endif
        VATDateEnabled: Boolean;
}
