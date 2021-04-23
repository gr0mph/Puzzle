import 'dart:io';

var error = stderr.writeln, read = stdin.readLineSync , parse = int.parse;

void main() {
    int n = parse(read());
    for (int i = 0; i < n; i++) {

        var card = read().replaceAll(' ','').split('').reversed;
        bool parity = true;
        int luhn = 0;

        error(card);

        for( final String digit in card )
        {
            if( parity == true )
            {
                parity = false;
                luhn += parse(digit);
            }
            else
            {
                parity = true;
                int _ = 2 * parse(digit);
                luhn += _ > 9 ? _ - 9 : _;
            }
        }
        print( (luhn % 10) == 0 ? 'YES' : 'NO');
    }
}
