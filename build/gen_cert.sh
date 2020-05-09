#!/bin/bash

out_dir=../image/ssl_wiz/cert
country=CN
city=ShenZhen
organization="SSLWizExample Tech."
domain=wizexample.com

rm -rf $out_dir
mkdir $out_dir

openssl req -new -newkey rsa:2048 -sha256 -nodes -out $out_dir/server.csr -keyout $out_dir/server.key -subj "/C=${country}/ST=${city}/L=${city}/O=${organization}/OU=Web Secutiry/CN=${domain}"

openssl x509 -req -days 30 -in $out_dir/server.csr -signkey $out_dir/server.key -out $out_dir/server.crt
