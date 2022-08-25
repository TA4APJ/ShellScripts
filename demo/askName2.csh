echo "What is your name?"
# isim tek bir string olarak alınıyor
set name = $<
echo Hi, $name[1]
#echo  $name[2]

# isim wordlist olarak alınıyor
set name = ( $name )
echo $name[1] $name[2]
