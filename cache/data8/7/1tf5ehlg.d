   �         $https://persons.shgjj.com/js/date.js�       ����      %|6 ;O�              �      
     O K      Date   Sat, 14 Apr 2018 02:28:54 GMT   Server   nginx   Content-Type   text/javascript   Vary   Accept-Encoding   ETag   W/"674-1386032687000"   Last-Modified   Tue, 03 Dec 2013 01:04:47 GMT   Content-Encoding   gzip var day=""; 
var month=""; 
var ampm=""; 
var ampmhour=""; 
var myweekday=""; 
var year=""; 
mydate=new Date(); 
myweekday=mydate.getDay(); 
mymonth=mydate.getMonth()+1; 
myday= mydate.getDate(); 
myyear= mydate.getYear(); 
year=(myyear > 200) ? myyear : 1900 + myyear; 
if(myweekday == 0) 
weekday=" ������ "; 
else if(myweekday == 1) 
weekday=" ����һ "; 
else if(myweekday == 2) 
weekday=" ���ڶ� "; 
else if(myweekday == 3) 
weekday=" ������ "; 
else if(myweekday == 4) 
weekday=" ������ "; 
else if(myweekday == 5) 
weekday=" ������ "; 
else if(myweekday == 6) 
weekday=" ������ "; 
document.write(year+"��"+mymonth+"��"+myday+"�� "+weekday); 