type Name = String
type Data = String
data FSItem = File Name Data | Folder Name [FSItem]
  deriving (Show)

myDisk :: FSItem
myDisk =
  Folder "root"
    [ File "goat_yeling_like_man.wmv" "baaaa"
    , File "pope_time.avi" ""
    ]
