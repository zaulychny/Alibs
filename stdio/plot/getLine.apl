line_xy←getLine arg;x1;y1;x2;y2;x;y;line_xy;X;Y;sign;dx;dy
 ⍝ ... Generate line coordinates (X,Y) from point 1 to point 2
 ⍝ ... Point #1 (x1,y1)
 ⍝ ... Point #2 (x2,y2)
 (x1 y1)(x2 y2)←arg

⍝_________________________
⍝ ... Initialization
⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
 line_xy←⍬

 X←,x1       ⍝ ... Get rendering series for X axis
 :If x1≠x2
     sign←×(x2-x1)
     X,←x1+sign×⍳|(x2-x1)
 :EndIf
 Y←,y1       ⍝ ... Get rendering series for Y axis
 :If y1≠y2
     sign←×(y2-y1)
     Y,←y1+sign×⍳|(y2-y1)
 :EndIf


⍝_________________________
⍝ ... Calculate line pixels using its slope value vs X or Y axes
⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
 dx←(x2-x1)
 dy←(y2-y1)

 :If x2≠x1    ⍝ ... Start with common line equation y=(dy/dx)*x+y0 where X axe is main
     :For x :In X
         line_xy,←⊂⌈x(y1+(dy÷dx)×(x-x1))
     :EndFor
 :EndIf

 :If x2=x1    ⍝ ... If we got vertical line to plot
 :AndIf y2≠y1      ⍝ ... which is not zero length
     :For y :In Y    ⍝ ... We do it using Y axe as main
         line_xy,←⊂⌈(x1+(dx÷dy)×(y-y1))y
     :EndFor
 :EndIf

 :If x2=x1        ⍝ ... Trivial case of zero length line. Just return one pixel
 :AndIf y2=y1
     line_xy←,⊂⌈x1 y1
 :EndIf
