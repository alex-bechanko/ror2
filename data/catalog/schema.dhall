-- Risk of Rain 2 item viewer
-- Copyright (C) 2024 Alex Bechanko
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.
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
