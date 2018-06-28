tableextension 123456700 "CSD ResourceExt" extends Resource

{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();

            begin
                Rec.TestField("Unit Cost")
            end;
        }

        field(123456700; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
        }
        field(123456701; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703; "CSD Quanty Per Day"; Decimal)
        {
            Caption = 'Quanty per day';
        }

    }


    var
        myInt: Integer;
}
