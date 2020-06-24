
### Details

For this challenge use [character_set1.txt](./char_sets/character_set1.txt)

- NB: Your implementation should use your character set file and be agnostic to the values.
- NB: The charset mappings have changed slightly
- NB: plaintext = starting string. ciphertext = encrypted string
- NB: Each encrypted plaintext character should never be more than two ciphertext characters. If the evaluation of the encrypted character value is > 99, then reset from 0 and continue adding. See below for test cases.
- NB: Each encrypted character should always be two ciphertext characters: if the encrypted plaintext character is '8'  it should be '08' in ciphertext characters

Keep in mind the constraints from the previous step.

### Acceptance Criteria
```ruby
Secret.new('0').encrypt(45) #=> '43'
Secret.new('Look over there!').encrypt(2374) #=> "37141410981421041798190704170452"
Secret.new('Look over there!').encrypt(2473) #=> "37141410981421041798190704170452"
Secret.new('Look over there!').encrypt(2572) #=> "37141410981421041798190704170452"
Secret.new('HELLO, 28 $$$!').encrypt(7) #=> "4239464649850896030864646461"
Secret.new('       ').encrypt(20) #=> "21212121212121"
Secret.new("'\"' a double quote can be tricky, as can be \\ backslashes").encrypt(43) #=> "181918444544485965465649446165596449444745584446494464625347556922444563444745584446494420444645475563564563524963"
```
