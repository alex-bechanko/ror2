module Data exposing (..)

import Dict exposing (Dict)
import Json.Decode as D exposing (Decoder)


itemsDecoder : Decoder Items
itemsDecoder =
    D.map3 Items
        (D.field "game_meta_categories" (D.dict gameMetaCategoryDecoder))
        (D.field "game_categories" (D.dict gameCategoryDecoder))
        (D.field "game_items" (D.list itemDecoder))


gameMetaCategoryDecoder : Decoder GameMetaCategory
gameMetaCategoryDecoder =
    D.map3 GameMetaCategory
        (D.field "name" D.string)
        (D.field "category_description" D.string)
        (D.maybe (D.field "default" D.bool))


gameCategoryDecoder : Decoder GameCategory
gameCategoryDecoder =
    D.map2 GameCategory
        (D.field "name" D.string)
        (D.field "meta_category" D.string)


itemDecoder : Decoder Item
itemDecoder =
    D.map3 Item
        (D.field "name" D.string)
        (D.field "categories" (D.list D.string))
        (D.maybe (D.field "tags" (D.list D.string)))


type alias Items =
    { game_meta_categories : Dict String GameMetaCategory
    , game_categories : Dict String GameCategory
    , game_items : List Item
    }


type alias GameMetaCategory =
    { name : String
    , category_description : String
    , default : Maybe Bool
    }


type alias GameCategory =
    { name : String
    , metacategory : String
    }


type alias Item =
    { name : String
    , categories : List String
    , tags : Maybe (List String)
    }
