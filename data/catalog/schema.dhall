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
    = { item : ItemDescription, code : Text, location : Text }

let Level
    : Type
    = { description : ItemDescription, newt_altars : List Text }

in  { Level, Artifact, GameItem, Dlc, Rarity }