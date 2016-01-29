ix←x xFind y;lx
 ⍝ ... Find indecies of each 'y' element in the 'x' vector. If Y element does not belong to X zero index assigned
 ix←x⍳y
 lx←ix∊1+⊃⍴x
 (lx/ix)←0
