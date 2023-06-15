{
  type = "object";

  properties = {
    name.type = "string";

    categories = {
      description = ''
        The list of string keys to different categories in the `game_categories` object.
        These categories are used to determine how items are grouped.
      '';
      type = "array";
      items.type = "string";
    };

    tags = {
      description = ''
        A list of alternative ways to describe the item.
        These are used for searching purposes.
        Search criteria that matches these tags will highlight those items.
      '';
    };

    item_description = {
      description = ''
        The description of the item in the game.
      '';
      type = "string";
    };

  };

  required = [
    "name"
    "description"
  ];
}
