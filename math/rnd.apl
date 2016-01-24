data←dec rnd data;rnd_factor
⍝ ... Round float by N decimals
 rnd_factor←(10*dec)
 data←⌈data×rnd_factor
 data←data÷rnd_factor
