# Write a program that lists the clothes that fulfil a criteria. It should:
# * Ask the user what type of clothes they are looking for (eg skirt, or shirt)`.
# * Ask the user to size of clothes they are looking for (eg small, large).
# * Ask the user if they have a preference of colour. If the user does it should
# ask the user which colour they prefer.
# Then the program should output all the ids of clothes according to what the
# user has asked for. If the user did not specify a preference for colour all
# colours should be included.
#

# * Example output:
#   ```
#   Enter what type of clothes you are after
#   shirt
#   Enter what size are you looking for
#   large
#   Do you have a preference of colour?
#   no
#   ["1"]
#   ```

clothes = [
  { "id" => "1", "type" => "shirt", "colour" => "red", "size" => "large" },
  { "id" => "2", "type" => "shirt", "colour" => "blue", "size" => "small" },
  { "id" => "3", "type" => "trousers", "colour" => "black", "size" => "medium" },
  { "id" => "4", "type" => "trousers", "colour" => "blue", "size" => "small" },
  { "id" => "5", "type" => "skirt", "colour" => "black", "size" => "large" },
  { "id" => "6", "type" => "skirt", "colour" => "green", "size" => "small" },
  { "id" => "7", "type" => "skirt", "colour" => "red", "size" => "medium" }
]
