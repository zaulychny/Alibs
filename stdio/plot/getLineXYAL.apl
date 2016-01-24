line_xy←getLineXYAL arg;x1;y1;x2;y2;x;y;line_xy;X;Y;sign;len;ang

 (x1 y1)(ang len)←arg

 line_xy←⍬
 x2 y2←⌈(x1+len×cos(ang))(y1+len×sin(ang))

 line_xy←getLine(x1 y1)(x2 y2)
