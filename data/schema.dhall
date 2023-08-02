let Item : Type =
      { name : Text
      , description : Text
      , image : Text
      , background : Text
      }

let Category : Type =
  { name : Text 
  , items : List Item
  }
  
let Catalog : Type = List Category

in { Item = Item
   , Category = Category
   , Catalog = Catalog
   }
