#!/bin/bash


for i in {1..254}
do
expect<<EOF

spawn ssh -o StrictHostKeyChecking=no 176.43.4.$i
expect "password" {send "Taren1\n"}
expect "#" {send "shutdown\n"}
expect "#" {send "exit\n"}
EOF
done







