let ItemDescription
    : Type
    = { name : Text
      , description : Text
      , image : Text
      , background : Optional Text
      }

let Dlc
    : Type
    = < SurvivorsOfTheVoid | SeekersOfTheStorm >

let Rarity
    : Type
    = < Common | Uncommon | Legendary | Boss | Lunar | Void | Equipment >

let GameItem
    : Type
    = { item : ItemDescription
      , advanced_description : Text
      , interactions : List Text
      , dlc : Optional Dlc
      , unlocked_by : Optional Text
      , rarity : Rarity
      }

let Artifact
    : Type
    = { description : ItemDescription
      , code : Text
      , synergies : Text
      , location : Text
      }

let Level
    : Type
    = { description : ItemDescription
      , newt_altars : List Text
      }

let Category
    : Type
    = < Items : List GameItem | Artifacts : List Artifact | Levels : List Level >

let Catalog
    : Type
    = List Category

in  { Catalog, Category, Level, Artifact, GameItem, Dlc, Rarity }
