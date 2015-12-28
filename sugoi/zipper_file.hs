import Data.List(break)

type Name = String
type Data = String
data FSItem = File Name Data | Folder Name [FSItem]
  deriving (Show)

myDisk :: FSItem
myDisk =
  Folder "root"
    [ File "goat_yeling_like_man.wmv" "baaaa"
    , File "pope_time.avi" "god bless"
    , Folder "pics"
      [ File "ape_throwing_up.jpg" "bleargh"
      , File "watermelon_smash.gif" "smash!"
      , File "skull_man(scary).bmp" "Yikes!"]
    ]

x -: f = f x

data FSCrumb = FSCrumb Name [FSItem] [FSItem]
  deriving (Show)
type FSZipper = (FSItem, [FSCrumb])

fsUp :: FSZipper -> FSZipper
fsUp (item, FSCrumb name ls rs:bs) =
  (Folder name (ls ++ [item] ++ rs), bs)

fsTo :: Name -> FSZipper -> FSZipper
fsTo name (Folder folderName items, bs) =
  let (ls, item:rs) = break (nameIs name) items
  in (item, FSCrumb folderName ls rs:bs)

nameIs :: Name -> FSItem -> Bool
nameIs name (Folder folderName _) = name == folderName
nameIs name (File fileName _) = name == fileName

newFocus =
  (myDisk, []) -: fsTo "pics" -: fsTo "skull_man(scary).bmp"

newFocus2 = newFocus -: fsUp -: fsTo "watermelon_smash.gif" 
