#!/bin/csh

# file ı ararken oluşan hataları terminal e basar
(find / -name file -print > dev/tty) >& errors

