
var arr=new Array(6);
for(var i=1;i<=6;i++){
	document.getElementById("second"+i).style.display="none";
	arr[i-1]=0;
}
function changeMenu(index){
	for(var i=1;i<=6;i++){
		if(index==i){
			if(arr[i-1]==0){
				arr[i-1]=1;
				document.getElementById("icon"+i).innerHTML="&#xe6d6;";
				document.getElementById("second"+i).style.display="block";
			}else{
				arr[i-1]=0;
				document.getElementById("icon"+i).innerHTML="&#xe6d5;";
				document.getElementById("second"+i).style.display="none";
			}
		}else{
			document.getElementById("icon"+i).innerHTML="&#xe6d5;";
			document.getElementById("second"+i).style.display="none";
		}
	}
}

