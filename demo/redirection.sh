#!bin/sh

# çıktıyı file a basar
who > file

# file1 ve file2 yi birleştirip file3 e ekler (append eder)
cat file1 file2 >> file3

# file içeriğini tom a gönderir
mail tom < file

# ana dizinde file isimli dosyayı ararken oluşan hataları errors dosyasına basar
# 0: stdin
# 1: stdout
# 2: stderr
find / -name file -print 2> errors

