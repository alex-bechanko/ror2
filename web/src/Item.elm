module Item exposing (Item, defaultItemOrder)


type alias Item =
    { name : String, description : String, rarity : String, image : String, background : String }


raritytoInt : Item -> Int
raritytoInt item =
    case item.rarity of
        "Common" ->
            0

        "Rare" ->
            1

        "Legendary" ->
            2

        "Boss" ->
            3

        "Lunar" ->
            4

        "Void" ->
            5

        "Equipment" ->
            6

        _ ->
            7


defaultItemOrder : Item -> Item -> Order
defaultItemOrder a b =
    compare (raritytoInt a) (raritytoInt b)
