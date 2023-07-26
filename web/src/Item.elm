module Item exposing (Item, backgroundClass, defaultItemOrder)


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


backgroundClass : Item -> String
backgroundClass item =
    case item.rarity of
        "Common" ->
            "bg-rarity-common"

        "Rare" ->
            "bg-rarity-rare"

        "Legendary" ->
            "bg-rarity-legendary"

        "Boss" ->
            "bg-rarity-boss"

        "Lunar" ->
            "bg-rarity-lunar"

        "Void" ->
            "bg-rarity-void"

        "Equipment" ->
            "bg-rarity-equipment"

        _ ->
            ""


defaultItemOrder : Item -> Item -> Order
defaultItemOrder a b =
    compare (raritytoInt a) (raritytoInt b)
