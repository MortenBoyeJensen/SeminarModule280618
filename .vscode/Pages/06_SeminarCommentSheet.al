page 123456706 "CSD Seminar Comment Sheet"

{
    SourceTable = "CSD Seminar Comment Line";
    Caption='Seminar Comment Line';
    PageType = List;

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