//persona como objeto
 persona = {
	 nombre:"Omar Dario Virili",
	 edad : 38,
	 getEdad:function(){
		 return this.edad
	 }
};
//perosna como clase

function People() {
	this.nom = "Pedro el escamoso";
	this.ed = 38;
	this.email="omar.virili@gmail.com";
	
	this.ImprimirDatos =function(){
		let str='';
		str= "<div><span>Nombre: "+this.nom+", edad: "+this.ed+", email:"+this.email+"</span></div>";
		
		return str;
	}
	
};

var palabras=['uno','dos','tres','cuatro','cio','seis','siete','ocho','palabras','octacore'];
var nuevaLista=[];

for(let x=0;x<palabras.length;x++){
	if(palabras[x].length >4){
		nuevaLista.push(palabras[x]);
		
	}
}
var cadena='';
cadena= "<div id='terminal'>";

for(let x=0;x<nuevaLista.length;x++){
	cadena += "<p class='texto' >"+nuevaLista[x]+"</p>";
}
cadena +="</div>";

const per = new People();
cadena += per.ImprimirDatos();

cadena += "<div>Nombre: "+persona.nombre+" con la edad de "+persona.getEdad()+"</div>";
 let str = "abcdefghijklmnñopqrstuvwxyzabcdefghijklmnñopqrstuvwxyzabcdefghijklmnñopqrstuvwxyzabcdefghijklmnñopqrstuvwxyz";
var elemento={};


const suma=(a,b,cb)=>cb(a+b);

const imprimir = (data)=> cadena+=data;
suma(3,5,imprimir);


const getData = (edad,cb)=>{
	setTimeout(
	(cb({
		nombre:"omar dario virili",
		edad : edad,
		domicilio: "antonio taboas 953",
	})),3000);
};
const mostrar = (data)=> cadena +=data.edad;

getData(39,mostrar);

document.body.innerHTML += cadena;
//document.body.innerHTML += "<h1>Time right now is:  </h1>"