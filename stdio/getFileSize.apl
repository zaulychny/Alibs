src_file_size←getFileSize src_file;src_file_tie
⍝ ... Get arbitrary file size
 src_file_tie←src_file ⎕NTIE 0
 src_file_size←⎕NSIZE src_file_tie

 ⎕NUNTIE src_file_tie