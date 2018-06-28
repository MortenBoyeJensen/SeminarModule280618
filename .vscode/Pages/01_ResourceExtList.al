pageextension 123456701 "CSD ResourceListExp" extends "Resource list"
{
    layout
    {

        modify(Type)
        {
            Visible = ShowType;
        }
        addafter("Type")
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }


            Field("CSD Maximum Participants"; "CSD Maximum Participants")
            
            {
                Visible = ShowMaxField;
            }
        } 
    }

    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type)=Format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField : Boolean;
        [InDataSet]
        ShowType:Boolean;
}