canvas←canvas plotCanvas pixels;plot_pixels;plot_char;all_canvas_pixels;dy;dxy;dyx;canvas_origin_yx
⍝ ... Simple text ploting function: it takes pixel coordinates and plot the canvas which is the matrix
⍝ ... pixels - vector of (x,y) pairs to plot represented using classical XY Decart coordinates system

 canvas_origin_yx←,⊂(⊃⍴canvas)1

 plot_pixels←(,⊂¯1 1)×⊖¨,pixels  ⍝ ... Convert into canvas cell indecies: Mirror coordinates as canvas has other coordinate system from classical one (-Y,X))
 plot_pixels←canvas_origin_yx+plot_pixels   ⍝ ... Shift pixels using ploting origin

 plot_char←'*'

 all_canvas_pixels←(⊂⍳⊃⍴canvas),¨¨2⊃⍴canvas  ⍝ ... Remove pixels which point out of canvas area
 plot_pixels←plot_pixels~all_canvas_pixels

 canvas[plot_pixels]←plot_char
