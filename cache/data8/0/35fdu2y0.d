   �         )https://persons.shgjj.com/js/UserLogin.js�       ����      %7z�p              �      
     O K      Date   Sat, 14 Apr 2018 02:28:53 GMT   Server   nginx   Content-Type   text/javascript   Vary   Accept-Encoding   ETag   W/"1559-1452495238000"   Last-Modified   Mon, 11 Jan 2016 06:53:58 GMT   Content-Encoding   gzip function login_submit(fb){
	if(fb.username.value==""){
		alert("�������û�����");
		fb.username.focus();
		return;
	}

	if(fb.password.value==""){
		alert("���������룡");
		fb.password.focus();
		return;
	}
	if(fb.imagecode.value==""){
		alert("��������֤�룡");
		fb.imagecode.focus();
		return;
	}
	if(fb.imagecode.value.length<4){
		alert("��֤��Ϊ4λ����");
		fb.imagecode.focus();
		return;
	}
	fb.password_md5.value=hex_md5(fb.password.value);
	 if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){
        alert("��ܰ��ʾ�� ��httpsҳ����ת��http����ְ�ȫ�Ծ���Ի������������������ɵġ��ڳ��ֶԻ���ʱ��������������������ʡ�");
   } 
	fb.password_md5.value=hex_md5(fb.password.value);
	fb.action="MainServlet";
	fb.submit();
	}
	
	
	
function login_submit_new(fb){
	if(fb.username.value==""){
		alert("�������û�����");
		fb.username.focus();
		return;
	}

	if(fb.password.value==""){
		alert("���������룡");
		fb.password.focus();
		return;
	}
	if(fb.imagecode.value==""){
		alert("��������֤�룡");
		fb.imagecode.focus();
		return;
	}
	if(fb.imagecode.value.length<4){
		alert("��֤��Ϊ4λ����");
		fb.imagecode.focus();
		return;
	}
	fb.password_md5.value=hex_md5(fb.password.value);
	 if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){
        alert("��ܰ��ʾ�� ��httpsҳ����ת��http����ְ�ȫ�Ծ���Ի������������������ɵġ��ڳ��ֶԻ���ʱ��������������������ʡ�");
   } 
	fb.password_md5.value=hex_md5(fb.password.value);
	fb.action="MainServlet";
	fb.submit();
	}