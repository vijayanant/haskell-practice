--ch01/wc.hs
--Counts number of words in a file
main =  interact  wordcount
  where  wordcount  input  = show $ length $ lines $ input
