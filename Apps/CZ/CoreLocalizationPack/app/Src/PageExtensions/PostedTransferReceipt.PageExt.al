#if not CLEAN22
pageextension 31133 "Posted Transfer Receipt CZL" extends "Posted Transfer Receipt"
{
    ObsoleteState = Pending;
    ObsoleteTag = '22.0';
    ObsoleteReason = 'Intrastat related functionalities are moved to Intrastat extensions.';

    layout
    {
        addlast("Foreign Trade")
        {
            field("Intrastat Exclude CZL"; Rec."Intrastat Exclude CZL")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Intrastat Exclude (Obsolete)';
                ToolTip = 'Specifies that entry will be excluded from intrastat.';
                ObsoleteState = Pending;
                ObsoleteTag = '22.0';
                ObsoleteReason = 'Intrastat related functionalities are moved to Intrastat extensions. This field is not used any more.';
            }
        }
    }
}
#endif