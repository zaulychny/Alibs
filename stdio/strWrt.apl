{lbv}strWrt str;line_char;ulb;dlv;lbv;dlb;extnum

 :If 0∊⎕NC'lbv'
     lbv←0 0
 :EndIf
 ulb dlb←2⍴lbv,0

 line_char←'-'
 extnum←2
 :If ulb
     ⎕←(extnum+⍴str)⍴line_char
 :EndIf

 ⎕←str

 :If dlb
     ⎕←(extnum+⍴str)⍴line_char
 :EndIf
