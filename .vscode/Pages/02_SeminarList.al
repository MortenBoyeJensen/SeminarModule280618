page 123456702 "CSD Seminar List"
{
    Caption='Seminar List';
    PageType = List;
    SourceTable = "CSD Seminar";
    Editable = false;
    CardPageId = 123456701;
    UsageCategory = Lists;

    

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field(Name; Name)
                {
                }
                field("Seminar Duration";
                "Seminar Duration")
                {
                }
                field("Seminar Price"; "Seminar Price")
                {
                }
                field("Minimum Participants";
                "Minimum Participants")
                {
                }
                field("Maximum Participants";
                "Maximum Participants")
                {
                }
            }
        }
    
    area(FactBoxes)
    {
        systempart("Links";Links)
        {
        }
        systempart("Notes"; Notes)
        {
        }
    }
    }
    actions
    {
        area(Navigation)
        {      
            Group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject=page "CSD Seminar Comment sheet";
                    RunPageLink = "Table Name"=const(Seminar), "No."=field("No.");
                    Image = Comment;
                }
            }
        }
    }
}