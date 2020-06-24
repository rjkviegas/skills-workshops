### Details

You'll need to
- handle invalid commands and arguments and provide useful error messages
- handle invalid character sets and provide useful error messages
- package a library of code and publish it to rubygems
- create a runnable command when installing the package

### Acceptance criteria

For a student named `Ed` in a cohort named `july2020`

one possible implementation:
```sh
$ gem install cipherworld-edjuly2020
$ cipher -charset character_set2.txt ll -e example.txt
$ cipher -charset character_set2.txt ll -d example.txt.enc
$ cipher -charset character_set1.txt ln -k 123 -e example.txt
$ cipher -charset character_set1.txt ln -k 123 -d example.txt.enc
```

You might want to try different approaches - feel free to do so. Document your approach and share it with a coach when you do!
