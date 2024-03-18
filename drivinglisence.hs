printstatus :: Int -> IO()
printstatus x =
 if x>16 then putStrLn "They are old enough to drive"
 else do putStrLn $ "More " ++ show (16-x) ++ " Years left"
 


main :: IO()
main = do
 putStrLn "Enter Name"
 name <- getLine
 putStrLn "Enter Age"
 inp <- getLine
 let age = read inp :: Int
 printstatus age