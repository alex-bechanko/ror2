module Config exposing (Config, backgroundImagePath, imagePath)

import Item exposing (Item)


type alias Config =
    { itemImagesDirectory : String
    , itemBackgroundImagesDirectory : String
    }


imagePath : Config -> Item -> String
imagePath conf item =
    conf.itemImagesDirectory ++ "/" ++ item.image


backgroundImagePath : Config -> Item -> String
backgroundImagePath conf item =
    conf.itemBackgroundImagesDirectory ++ "/" ++ item.background
