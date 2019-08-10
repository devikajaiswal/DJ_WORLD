#!/bin/bash
mail_body="DATE : `date +%d/%m/%Y`"
echo $mail_body | mail -s "DATE from Jenkins Program" devika.jaiswal@kpn.com

x=1

prev_month=$(echo $x | /usr/xpg4/bin/awk -v date="$(date "+%d %m %Y")" -v OFS="_" '
{
  num=$0
  split(date, a); d=a[1]; m=a[2]; y=a[3]
  m-=num
  while(m < 1) {m+=12; y--}
  printf("%02d%s%s\n", m)
}')

dd=`date +%d`
yr=`date +%Y`

first_arg=$prev_month-$dd-$yr
echo $first_arg

second_arg=`date +%m-%d-%Y`
echo $second_arg
