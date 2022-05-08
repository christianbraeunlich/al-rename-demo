table 88000 "Base Setup CHB"
{
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            NotBlank = false;
        }
        field(10; Name; Text[64])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        RecordHasBeenRead: Boolean;

    procedure GetRecordOnce()
    begin
        if RecordHasBeenRead then
            exit;
        Get();
        RecordHasBeenRead := true;
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;

}