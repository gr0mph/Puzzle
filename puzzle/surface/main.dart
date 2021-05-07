//  Stack

void compute( List ff , List b , int L , int H , int x , int y )
{
    List<Case> stack = [];
    stack.add( new Case(x: x, y: y, s: 0 ) );

    while( stack.length != 0 )
    {
        Case c = stack.removeLast();
        if( update( ff , b , L , H , c.x , c.y ) == true )
        {
            stack.add( new Case(x: c.x + 1 , y: c.y , s: 0 ) );
            stack.add( new Case(x: c.x - 1 , y: c.y , s: 0 ) );
            stack.add( new Case(x: c.x , y: c.y + 1 , s: 0 ) );
            stack.add( new Case(x: c.x , y: c.y - 1 , s: 0 ) );
        }
    }

}

void surface( List ff )
{
    int s = ff.length;
    for (final c in ff)
    {
        c.s = s;
    }
}
