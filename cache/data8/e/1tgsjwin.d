   �         %https://persons.shgjj.com/js/check.js�       ����      %|6 ;O�              �      
     O K      Date   Sat, 14 Apr 2018 02:28:53 GMT   Server   nginx   Content-Type   text/javascript   Vary   Accept-Encoding   ETag   W/"3636-1386032687000"   Last-Modified   Tue, 03 Dec 2013 01:04:47 GMT   Content-Encoding   gzip function IsNumber(theText){
	for (var i=0;i<theText.length;i++){
		var strTemp= theText.charAt(i);
		if (!(strTemp>='0' && strTemp<='9') && (strTemp!='.')){
			return false;
		}
	}
	return true;
}
//��;����������ֻ������Ƿ���ȷ
function checkMobile(s){
	var re = new RegExp("^[1][3-9][0-9]{9}$");
	if (re.test(s)) {
		return true;
	}else{
		return false;
	}
}
//�ж��Ƿ������ֻ���ĸ
function isNumberOr_Letter( s ){
	var re = new RegExp("^[0-9a-zA-Z\_\-]+$");
	if (re.test(s)) {
		return true;
	}else{
		return false;
	}
}
function checkEmail(strEmail){
 	var emailReg = new RegExp("^([-_A-Za-z0-9]+\.)+@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$");
	if( emailReg.test(strEmail) ){
		return true;
	}else{
//alert("�������Email��ַ��ʽ����ȷ��");
 		return false;
	}
}
//���ݼ����������ж��Ƿ�Ϊ����
function checkNumber() {

    //�ж������ַ���keyCode��������48~57֮�䣬�������ַ���false

    if ((event.keyCode >= 48) && (event.keyCode <= 57)) {

        event.returnValue = true;

    } else {

        event.returnValue = false;

    }

}
//�������ʺż��
function checkPri(s){

//	var s = fm.pri_account.value;
	var prefix = "0";
	var suffix = "205";
	if (s.length == 9) {/*�û���������9λ��12λ�������ʺ�*/
		s = s + "205";
	}
	if((s.length != 12) || (s.indexOf(prefix) != 0 && s.indexOf("1") != 0) || (s.lastIndexOf(suffix) == -1 )) {

		return false;
	}else{
		return true;
	}
}

//ע���û������
function checkUserid(_userid){

			if((_userid=="")||(!isNumberOr_Letter(_userid))){
					return false;

			}else{
					return true;
			}

}

function 	check(){
	var radio = document.form1.radiobutton;
	for (i=0;i<3;i++){
		if(radio[i].checked){
			if(radio[i].value=="unitname"){
				document.getElementById("div1").style.display='block';
				document.form1.unit_name.value = "";
				document.getElementById("div2").style.display='none';
				document.form1.unit_code.value = "";
				document.getElementById("div3").style.display='none';
				document.form1.start_date.value = "";
				document.form1.end_date.value = "";
				document.form1.flag.value = "unitname";
			}
			else if(radio[i].value=="unitcode") {
				document.getElementById("div1").style.display='none';
				document.form1.unit_name.value = "";
				document.getElementById("div2").style.display='block';
				document.form1.unit_code.value = "";
				document.getElementById("div3").style.display='none';
				document.form1.start_date.value = "";
				document.form1.end_date.value = "";
				document.form1.flag.value = "unitcode";
			}
			else if(radio[i].value=="opendate") {
				document.getElementById("div1").style.display='none';
				document.form1.unit_name.value = "";
				document.getElementById("div2").style.display='none';
				document.form1.unit_code.value = "";
				document.getElementById("div3").style.display='block';
				document.form1.start_date.value = "";
				document.form1.end_date.value = "";
				document.form1.flag.value = "opendate";
			}
			else{
				document.getElementById("div1").style.display='none';
				document.form1.unit_name.value == "";
				document.getElementById("div2").style.display='none';
				document.form1.unit_code.value == "";
				document.getElementById("div3").style.display='none';
				document.form1.start_date.value == "";
				document.form1.end_date.value == "";
			}
	 }
 }
}

function check1(){
	if(form1.unit_code.value=="" && form1.unit_name.value==""
		&& form1.start_date.value=="" && form1.end_date.value=="")
	{
		alert("�������ѯ������");
		return;
	}
	form1.submit();

}
