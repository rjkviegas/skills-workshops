### Details

Run your program from your command line

Your command should take 3 arguments [cipher] [method] [file] and optionally take a [key]

Eg: running a script that will encrypt the text in example.txt using a letter-letter cipher.
```sh
$ ./cipher.sh ll enc example.txt
$ ./cipher.sh ln enc example.txt 104
```

or using an executable command
```sh
$ cipher ll -e example.txt
$ cipher ln -e example.txt 104
```

###
Acceptance Criteria

The result of encryption for a file `example.txt` should create a new file named `example.txt.enc`
The result of decryption for a file `example.txt.enc` should create a new file named `example.txt`
