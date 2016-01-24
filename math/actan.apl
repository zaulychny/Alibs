res←actan tval;pi;rad;sin_val
 ⍝ ... ArcCoTangent of angle in degrees

 :If 0<|tval
     res←atan 1÷tval
 :Else
     outWrt'ERROR: Cotangent of infinity is zero!'
     res←0
 :EndIf
