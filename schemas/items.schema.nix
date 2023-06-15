let 
  alphanumeric = "[a-zA-Z0-9_-]";
in
{
  "$schema" = "https://json-schema.org/draft/2020-12/schema";
  "$id" = "https://alexbechanko.com/ror2/items.schema.json";
  title = "Items";
  description = "A text dataset for all items in Risk of Rain 2";
  type = "object";

  properties = {
    items = {
      description = ''
        List of items to be shown.
      '';
      type = "array";
      items."$ref" = "#$defs/game_item";
    };

  };

  required = [
    "items"
  ];

  "$defs" = {
    game_item = {
      type = "object";

      properties = {
        name = {
          description = ''
            The display name of the item in the game.
          '';
          type = "string";
        };

        description = {
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
    };
  };
}
