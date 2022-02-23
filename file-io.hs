import System.IO

writeToFile = do
    fp <- openFile "write.txt" WriteMode
    hPutStrLn fp "this line was written from file-io.hs line number 3"
    hClose fp

readFromFile = do
    fp <- openFile "read.txt" ReadMode
    content <- hGetContents fp
    putStrLn content
    hClose fp

