ix←x xTo y

 ix←⍬
 :If y>x
     ix←x,(x+⍳⊃(y-x))
 :EndIf
