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
-- makeLoan :: Database -> Person -> Book -> Database
-- returnLoan :: Database -> Person -> Book -> Database
main :: IO ()
main = print $ books exampleBase "Alice"