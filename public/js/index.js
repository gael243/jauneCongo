  $( document ).ready(function() {
   $('#logs').fadeIn(5000);
})
$('.plus').on('click',(e)=>{    
  e.preventDefault();
  const nombre=document.getElementById(e.target.dataset.target)
  console.log(nombre);
  let nombress=parseInt(nombre.value);
  nombress=nombress+1;
   nombre.value=nombress;
})
$('.moins').on('click',(e)=>{  
  e.preventDefault();
    const nombre=document.getElementById(`${e.target.dataset.target}`)   
   console.log(nombre);
  let nombress=parseInt(nombre.value);
    if(nombress>0){
      nombress=nombress-1;
      nombre.value=nombress;
    }
})
$(document).ready(function(){
  $('.carousel').carousel({
    interval: 3000
  })
});
const qt = document.getElementsByClassName('qt')

for (i = 0; i < qt.length; i++) {
  console.log(qt[i].parentElement);
  console.log(qt[i].innerText);

  if (qt[i].innerText == '') {
    qt[i].parentElement.style.display = 'none'
  }
}
$(function() {

  $('#timer').countdown({
    date: '05/13/2020 23:59:59',
    days:'Jours',
    hours:'Heures'
  });

})

  
  