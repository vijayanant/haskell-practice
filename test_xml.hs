module Main where
   
import System.Environment
import Text.XML.HXT.Core
import Text.XML.HXT.Curl
 
main :: IO ()
main = do
     [src, dst] <- getArgs
     runX $
        readDocument [withValidate no
                      ,withCurl []
                      ] src
        >>>
        writeDocument [withIndent yes
                      ,withOutputEncoding isoLatin1
                      ] dst
     return ()
