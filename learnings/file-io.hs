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

checkIfFileIsEmpty :: IO ()
checkIfFileIsEmpty = do
  fp <- openFile "read.txt" ReadMode
  content <- hIsEOF fp
  firstLine <-
    if not content
      then hGetLine fp
      else return "empty"
  putStrLn "done!"
