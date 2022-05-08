page 89000 "Leaf Setup CHB"
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = "Leaf Setup CHB";
    Caption = 'Leaf Setup';
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