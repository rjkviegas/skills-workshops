### Details

We have a new requirement!

1. Build a letter-letter substitution cipher.

Let's take this opportunity to refactor to take advantage of OOP's polymorphism. The public interface to all our ciphers should be methods #encrypt and #decrypt.

- NB: Ciphers should assume a valid character set
- NB: Individual ciphers use the Cipher namespace
- NB: Use your testing framework of choice to automate running tests
- NB: Create more tests to help you develop your program and cover different code paths.

Hint: start with updating your Letter Number cipher.

### Acceptance Criteria

```ruby
char_set1 = # something that represents character set 1
char_set2 = # something that represents the character set 2
original_plain_text = 'Look over there!'
key = 2374

# Letter Number test case
letter_number_cipher = Cipher::LetterNumber.new(char_set: char_set1, key: key)
p letter_number_cipher.encrypt(original_plain_text) #=> "37141410981421041798190704170452"
p letter_number_cipher.decrypt("37141410981421041798190704170452") #=> 'Look over there!'

# Letter Letter test case
letter_letter_cipher = Cipher::LetterLetter.new(char_set: char_set2)
p letter_letter_cipher.encrypt(original_plain_text) #=> "B!!ym!9DAm2§DAD "
p letter_letter_cipher.decrypt("B!!ym!9DAm2§DAD ") #=> 'Look over there!'

# Encryption suite test case
ciphers = [letter_number_cipher, letter_letter_cipher]
ciphers.each do |cipher|
  cipher_text = cipher.encrypt(original_plain_text)
  plain_text = cipher.decrypt(cipher_text)
  puts "#{cipher.class} encryption: #{original_plain_text == plain_text}"
end

# expected output
# Cipher::LetterNumber encryption: true
# Cipher::LetterLetter encryption: true
```
