function formValidation()
{

var callno = document.registration.callno;
var name = document.registration.name;
var author = document.registration.author;
var publisher=document.registration.publisher;
var quantity = document.registration.quantity;


if(alphanumeric(callno))
{
if(allLetter(name))
{ 
if(allLetter(author))
{
if(allLetter(publisher))
{
if(allnumeric(quantity))
{
	
  return true;
} 
}
} 
}
}
return false;

} 
function allLetter(alpha)
{ 
var letters = /^[A-Za-z]+$/;
if(alpha.value.match(letters))
{
return true;
}
else
{
alert(alpha.placeholder +' must have alphabet characters only');
return false;
}
}
function alphanumeric(alnu)
{ 
var letters = /^[0-9a-zA-Z]+$/;
if(alnu.value.match(letters))
{
return true;
}
else
{
alert(alnu.placeholder+' must have alphanumeric characters only');
return false;
}
}
function allnumeric(num)
{ 
var numbers = /^[0-9]+$/;
if(num.value.match(numbers))
{
return true;
}
else
{
alert(num.placeholder+' must have numeric characters only');
return false;
}
}
