import 'dart:io';

var error = stderr.writeln, parse = int.parse;

String read() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

void main() {
  //  Read
  int N = parse(read());
  int X = parse(read());

  var G = List.generate( N ,
  (i) => List.generate( N , (i) => '0' , growable : false ) , growable : false ) ;

  for (int i = 0 ; i < N ; i++) {
    List g = read().split('');
    for (int j = 0 ; j < N ; j++) {
      G[i][j] = g[j];
    }
  }

  //  Encode
  //  ...

  //  Output
  for( int y = 0 ; y < N ; y++ )
  {
    print(G[y].join());
  }
}
