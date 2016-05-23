main =  putStrLn "First Name?" >>
        getLine >>=
        (\fn -> putStrLn " Last Name?" >> getLine >>= (\ln ->  return (fn, ln) )) >>=
        (\(fn, ln) -> putStrLn  $ "Welcome to Monadic World " ++ fn ++ " " ++ ln ++ "!")

