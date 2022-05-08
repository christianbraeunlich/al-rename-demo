page 88000 "Base Setup CHB"
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = "Base Setup CHB";
    Caption = 'Base Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}