function formValidation()
{
var name=document.registration.name;
var passid = document.getElementById('password1');
var mobile = document.registration.mobile;
var uemail = document.registration.email;
 
 if(allLetter(name))
{
if(ValidateEmail(uemail))
{
if(passid_validation(passid,7,12))
{
if(mobileNumber(mobile)){
  return true;
}
} 
}
} 
return false;

}
function passid_validation(passid,mx,my)
{
var passid_len = passid.value.length;
if (passid_len == 0 ||passid_len >= my || passid_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
return false;
}
else
return true;
}
function allLetter(uname)
{ 
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
return true;
}
else
{
alert('name must have alphabet characters only');
return false;
}
}



function ValidateEmail(uemail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
return false;
}
} 

function mobileNumber(mob)
{ 
var numbers = /^[0]?[789]\d{9}$/;
if(mob.value.match(numbers))
{
return true;
}
else
{
alert('enter a valid Mobile Number');
return false;
}
}