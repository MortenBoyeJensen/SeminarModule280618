page 123456707 "CSD Seminar Comment List"

{
    SourceTable = "CSD Seminar Comment Line";
    Caption='Seminar Comment List';
    PageType = List;
    Editable=false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                }
                field(code;code)
                {
                Visible=false;
                }
                field(Comment;Comment)
                {
            }
        }
    }
}
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}