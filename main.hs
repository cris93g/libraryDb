type Person = String

type Book = String

type Database = [(Person, Book)]

exampleBase :: Database
exampleBase =
  [ ("Alice", "TinTin"),
    ("Anna", "Little Women"),
    ("Alice", "Asterix"),
    ("Rory", "TinTin")
  ]

books :: Database -> Person -> [Book]
books dBase findPerson =
  [book | (person, book) <- dBase, person == findPerson]

-- borrowers :: Database -> Book -> [Person]
-- borrowed :: Database -> Book -> Bool
-- numBorrowed :: Database -> Person -> Int
makeLoan :: Database -> Person -> Book -> Database
makeLoan dBase person book =
  [(person, book)] ++ dBase

returnLoan :: Database -> Person -> Book -> Database
returnLoan dBase person book =
  [pair | pair <- dBase, pair /= (person, book)]

main :: IO ()
main = print $ books exampleBase "Alice"