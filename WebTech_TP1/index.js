function DisplayInfo(){
    // document.getElementById("ex1").write("Hello World");
		// window.alert("Hello word!");
		document.getElementById("ex1").innerHTML="Hello World!";
}

function Hide_and_Seek(){
			var x = document.getElementById("b1");
  		if (x.style.display === "none") {
    		x.style.display = "block";
  		} else {
   				 x.style.display = "none";
  		}
		// if(document.getElementById("b1")){
		// 	document.getElementById("b2").style.display = "none";
		// }else if(document.getElementById("b2")){
		// 	document.getElementById("b1").style.display = "none";
		// }else{
		// 	document.getElementById("b2").style.display = "block";
		// }
    // document.getElementById("b1").style.visibility = "true";
    // document.getElementById("b2").style.visibility = "false";
}

function CheckPrime(){
    var i,flag=0,number;
		number = Number(document.getElementById("PrimeNumber").value);
		//Check input content is number or not
		var x=document.getElementById("PrimeNumber").value;
		if(isNaN(x)||x.replace(/(^\s*)|(\s*$)/g,"")==""){
		alert("This is not a number!!");
		}
		//Check input content is prime number or not
		for(i=2; i <= number/2; i++)
		{
			if(number%i == 0)
			{
				flag = 1;
				break;
			}
		}
		if(flag == 0)
		{
			window.alert("The inputed number" + " "+number + " "+"is Prime");
		}
		else
		{
			window.alert("The inputted number"+ " "+number + " "+"is not Prime");
		}
	}
function CheckDataType(){
	var x=document.getElementById("demo").value;
	if(isNaN(x)||x.replace(/(^\s*)|(\s*$)/g,"")==""){
		alert("This is not a number!!");
	}
}

function validation(){
//Check empty


// Make a POST request
	var name;
	var age;
	name = document.getElementById("name").value;
	age = parseInt(document.getElementById("age").value);
	if(name&&age){
  	axios.post("http://localhost:8081",{
    fullname: name,
    age: age}).then((res)=>{
			alert(res.data)
			
		})
}
else{
	alert("Error,Please type Full Name and Right Age.")
}
}