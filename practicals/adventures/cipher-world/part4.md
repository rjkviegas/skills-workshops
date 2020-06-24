### Details

Let's define a new class EncryptedSecret to represent the encrypted secret. It has a public `#decrypt` method

Hint: The ciphertext produced by `Secret#encrypt` is composed of pairs of characters each representing an encrypted plaintext character.


## Acceptance Criteria
```ruby
cipher_text = Secret.new('Look over there!').encrypt(2374) # => '37141410981421041798190704170452'
p EncryptedSecret.new(cipher_text).decrypt(2374) #=> 'Look over there!'

# In short, we encrypt and decrypt with the same key and expect the original plaintext.
p EncryptedSecret.new(Secret.new('0').encrypt(45)).decrypt(45) #=> 0'
p EncryptedSecret.new(Secret.new('Look over there!').encrypt(2374)).decrypt(2374) #=> 'Look over there!'
p EncryptedSecret.new(Secret.new('Look over there!').encrypt(2473)).decrypt(2473) #=> 'Look over there!'
p EncryptedSecret.new(Secret.new('Look over there!').encrypt(2572)).decrypt(2572) #=> 'Look over there!'
p EncryptedSecret.new(Secret.new('HELLO, 28 $$$!').encrypt(7)).decrypt(7) #=> 'HELLO, 28 $$$!'
p EncryptedSecret.new(Secret.new('       ').encrypt(20)).decrypt(20) #=> '       '
p EncryptedSecret.new(Secret.new("'\"' a double quote can be tricky, as can be \\ backslashes").encrypt(43)).decrypt(43) #=> "'\"' a double quote can be tricky, as can be \\ backslashes"
```
