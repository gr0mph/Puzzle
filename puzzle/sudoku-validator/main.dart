import 'dart:io';

//  Create a function that check equality between two list
bool equals(List<int> l1, List<int> l2) {
    for( int i = 0 ; i < l1.length ; i++ )
    {
        if( l1[i] != l2[i] )    return false;
    }
    return true;
}

//  Compare each row
//  Compare each col
//  Compare each quadrant

//  Generate a 2d array

void main() {

    List inputs;
    var k_1d = List.generate( k_COL , (i) => i + 1 , growable : false );
    var k_2d = List.generate( k_ROW ,
    (i) => List.generate( k_COL , (i) => 0 , growable : false ) , growable : false ) ;

    for ( int y_row = 0 ; y_row < 9 ; y_row++ ) {
        inputs = read().split(' ');
        for (int x_col = 0; x_col < 9; x_col++) {

            int n = parse(inputs[x_col]);
            k_2d[y_row][x_col] = n;
        }
    }

    print('true');
}
