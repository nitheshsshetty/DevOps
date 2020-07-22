#!/bin/bash

counter=0

while [[ $counter -lt 50 ]]; do
  let counter=counter+1
 
  name=$(nl people.data | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
  lastname=$(nl people.data | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
  age=$(shuf -i 30-60 -n 1)
  
mysql -u root -p********** people -e "insert into  register values ($counter , '$name' , '$lastname' , $age)"

echo "$counter $name $lastname $age  has been imported to database people SUCCESSFULLY ..!!!" 

done
