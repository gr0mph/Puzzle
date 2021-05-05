import 'dart:io';

var error = stderr.writeln, parse = int.parse;

String read() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

void main() {
    int N = parse(read());
    List dock = [];
    for (int i = 0; i < N; i++)
    {

        String line = read();
        bool find = false;

        for( final c in line.split('') )
        {
            find = false;

            for( final stack in dock )
            {
                if( stack.last.compareTo(c) >= 0 )
                {
                    find = true;
                    stack.add(c);
                    break;
                }
            }

            if( find == false )
            {
                dock.add( List.generate( 1 , (i) => c , growable : true ) );
            }
        }
        //  Out
        print(dock.length);

        //  Reset
        dock = [];
    }
}
