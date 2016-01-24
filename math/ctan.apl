res←ctan ang;pi;rad;tan_val
 ⍝ ... CoTangent of angle in degrees
 tan_val←tan ang
 :If 0<|tan_val
     res←1÷tan_val
 :Else
     outWrt'ERROR: Cotangent of zero is infinity!'
     res←10 power 20
 :EndIf
