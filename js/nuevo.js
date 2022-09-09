/* //persona como objeto
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


document.body.innerHTML += cadena;
//document.body.innerHTML += "<h1>Time right now is:  </h1>" */
const baseUrl = "https://platzi-avo.vercel.app";
const url = "https://platzi-avo.vercel.app/api/avo";
//conectar al servidor
//tratar de usar async/await
//precesar respuesta  y convertirla en json
const variosElementos=[];
const montaje = document.querySelector('#mount');
montaje.className = 'gral cuadrado';

 window.fetch(`${baseUrl}/api/avo`)
	.then((respuestas)=>respuestas.json())
	.then(responseJson => {
		responseJson.data.forEach((item) => {
			//crear imagen
			const imagen=document.createElement('img');
			imagen.src = `${baseUrl}${item.image}`;
			//crear titulo
			const titulo = document.createElement('h2');
			titulo.textContent = item.name;
			titulo.style="font-size:2rem";
			titulo.style.color="#2e2e2e";
			titulo.className="etiqueta"; //esta agregando una clase css
			//crear precio
			const price = document.createElement('div');
			price.textContent = item.price;
			
			const contenedor = document.createElement('div');
			contenedor.append(imagen,titulo,price);
			variosElementos.push(contenedor);
		});
		montaje.append(...variosElementos);
	}) 


//json->data->renderizar informacion en el browser
const APP_ID = "2533997242361871"
const server = "https://localhost:3000"
const clientSecret = "zVSjm8Xfy6iwQiWLWHkrubLzdIhcyXpo"
const url1= "https://auth.mercadolibre.com.ar/authorization?response_type=code&client_id=2533997242361871&redirect_uri=https://localhost:3000"
const url_meli = `https://auth.mercadolibre.com.ar/authorization?response_type=code&client_id=${APP_ID}&redirect_uri=${server}
`

window.fetch(url1)
	.then(respuesta=>respuesta.json())
	.then(data =>{
		console.log(data);
	})