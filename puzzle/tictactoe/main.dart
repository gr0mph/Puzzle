import 'dart:io';

var error = stderr.writeln, read = stdin.readLineSync , parse = int.parse;

bool over( List<int> grid )
{
  //  return true if win condition else false
  //  ...
}

void main() {

    var dict = new Map(), rev = new Map();
    dict['.'] = 0 ; rev[0] = '.' ;
    dict['X'] = 1 ; rev[1] = 'X' ;
    dict['O'] = 2 ; rev[2] = 'O' ;

    List<int> grid = List<int>(9);

    for ( int i = 0 ; i < 3 ; i++ )
    {
        var line = read().split('');
        int j = 0;
        for( final String e in line )
        {
            grid[ j++ + i * 3 ] = dict[e];
        }
    }

    List<int> check;
    for( int i = 0 ; i < 9 ; i++ )
    {
        //  Copy list
        check = List.generate( 9 , (i) => grid[i] , growable : false );
        if( check[i] != 0 )     continue;

        check[i] = 2;

        if( over(check) == true )
        {
            print("${rev[check[0]]}${rev[check[1]]}${rev[check[2]]}");
            print("${rev[check[3]]}${rev[check[4]]}${rev[check[5]]}");
            print("${rev[check[6]]}${rev[check[7]]}${rev[check[8]]}");
            return;
        }
    }

    print('false');
    return;
}
