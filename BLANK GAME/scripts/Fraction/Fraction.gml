function Fraction(_num, _den) constructor {

    num = _num;
    den = _den;

    add = function(addend) {
        var lcd;

        for (var i = 1; i <= den * addend.den; i++) {
            if (i % den == 0 && i % addend.den == 0) {
                lcd = i;
                break;
            }
        }

        num = num * (lcd / den) + addend.num * (lcd / addend.den);
        den = lcd;

        simplify();
    };

    subtract = function(addend) {
        var lcd;

        for (var i = 1; i <= den * addend.den; i++) {
            if (i % den == 0 && i % addend.den == 0) {
                lcd = i;
                break;
            }
        }

        num = num * (lcd / den) - addend.num * (lcd / addend.den);
        den = lcd;

        simplify();
    };

    multiply = function(factor) {
        var gcf;

        for (var i = den; i > 0; i--) {
            if (den % i == 0 && factor % i == 0) {
                gcf = i;
                break;
            }
        }

        den /= gcf;
        num *= factor / gcf;

        simplify();
    };

    divide = function(divisor) {
        if (num % divisor == 0) {
            num /= divisor;
        } else {
            den *= divisor;
        }

        simplify();
    };

    simplify = function() {
        var gcf = 1;

        for (var i = 1; i <= abs(num); i++) {
            if (num % i == 0 && den % i == 0) {
                gcf = i;
            }
        }

        num /= gcf;
        den /= gcf;

        if (den < 0) {
            num *= -1;
            den *= -1;
        }
    };
}