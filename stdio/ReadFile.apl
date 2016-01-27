 Chars←{enc}ReadFile name;nid;signature;nums;fdata;utf_b;ansi_b;dropb
    ⍝ Read ANSI or Unicode character file (Windows)

 nid←name ⎕NTIE 0
 fdata←⎕NREAD nid 83(⎕NSIZE nid)0
 utf_b←∨/fdata<0
 ansi_b←∧/(0<fdata)

 :If 0∊⎕NC'enc'
     enc←⍬
 :EndIf

 :If (enc≡'UTF-8')∨utf_b ⍝ UTF-8
⍝     fdata←⎕NREAD nid 83(¯2+⎕NSIZE nid)3
     :If dropb←∧/(fdata[⍳3])∊¯17 ¯69 ¯65
         fdata←3↓fdata
     :EndIf
     Chars←'UTF-8'⎕UCS{⍵+256×⍵<0}fdata ⍝ Signed ints
 :EndIf
 :If (2↑fdata)≡¯1 ¯2 ⍝ Unicode (UTF-16)
     Chars←⎕NREAD nid 160(¯1+⎕NSIZE nid)2
 :EndIf
 :If ansi_b ⍝ ANSI
     Chars←⎕NREAD nid 80(⎕NSIZE nid)0
 :EndIf

 ⎕NUNTIE nid
