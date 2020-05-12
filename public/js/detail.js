const qt = document.getElementsByClassName('qt');
for (i = 0; i < qt.length; i++) {
  console.log(qt[i].parentElement);
  console.log(qt[i].innerText);

  if (qt[i].innerText == '') {
    qt[i].parentElement.style.display = 'none'
  }
}
$('.plus').on('click',(e)=>{    

    const nombre=document.getElementById(e.target.dataset.target)
    console.log(nombre);
    let nombress=parseInt(nombre.value);
    nombress=nombress+1;
     nombre.value=nombress;
  })
  $('.moins').on('click',(e)=>{  
      const nombre=document.getElementById(`${e.target.dataset.target}`)   
     console.log(nombre);
    let nombress=parseInt(nombre.value);
      if(nombress>0){
        nombress=nombress-1;
        nombre.value=nombress;
      }
  })