   �         *https://persons.shgjj.com/js/correction.js�       ����      %|6 ;O�              �      
     O K      Date   Sat, 14 Apr 2018 02:28:54 GMT   Server   nginx   Content-Type   text/javascript   Vary   Accept-Encoding   ETag   W/"206-1386032687000"   Last-Modified   Tue, 03 Dec 2013 01:04:47 GMT   Content-Encoding   gzip function correction(docId, docTitle, docUrl) {
	window.location.href="/apex-cms/frontweb/correct.jsp?docId="+docId + "&docTitle=" + encodeURIComponent(encodeURIComponent(docTitle))+ "&docUrl=" + docUrl;
}