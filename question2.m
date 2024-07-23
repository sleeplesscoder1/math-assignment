b = input('enter b: ');
a = input('enter a: ');

function ret = sq(x)
    ret = x^2;
end

integral = ((b-a)/6) * (sq(a) + 4*sq((a+b)/2) + sq(b));
disp(integral)


