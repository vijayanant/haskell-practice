import System.Environment (getArgs)

interactWith function inputFile outputFile = do 
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do  
    allargs <- getArgs
    case allargs of
      [input, output] -> InteractWith function input output
      _ ->putstrLn "error: exactly two arguments needed"

  myFunction = id 
