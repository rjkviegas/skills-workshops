### Details

Characters have the following values
```
a-z : 1-26, A-Z : 27-52
white space is 0
! is 53
```

### Acceptance Criteria
```ruby
secret = Secret.new('My name is Edward!')
secret.encrypt(3) #=> "4228317416831222334726421756"
secret.encrypt(7) #=> "4632721820127162673811308251160"

# Bonus
'My name is Edward!'.encrypt(3) #=> "4228317416831222334726421756"
```
