//collbacks como asincrono

const suma = (a,b,CB_callback)=> CB_callback (a+b);

    

const imprimir = (data) => console.log(data)
const mostrar = (comentario) => console.log("El comentario es la suma de 2 numeros: ",comentario);

 suma(3,15,imprimir);
 suma(2,5,mostrar);

//****ejemplo de practica echo por mi *** */
const imprimir= (data) => {
    for(let x=0;x<data.length;x++){
        console.log(data[x].edad);
    }
}
const getData = (cb) =>{
    let arr=[]
    for(let i =0;i<10;i++){
        arr.push({
            "nombre":"omar Dario Virli",
            "edad":4*i,
        });
    }
    cb (arr);

    }

    getData(imprimir);

    /** continuo co el tutorial */
const getData = (cb,cbError) =>{
    
    if(false){
    setTimeout(() => {
    cb ([
        {
        nombre:"Omar Dario Virli",
        edad:38,
        esta_civil:"concuvino",
        },
        {
            nombre:"Yaccuzzi eliana",
            edad:33,
            esta_civil:"concuvino",
            },
        {
            nombre:"Virli Martina sofia",
            edad:6,
              esta_civil:"hija",
        }
    ]);
    }, 2000);
}else{
    cbError(new Error('No se pudo obtener losd datos'));
}
}

const imprimirData = (data)=>{
    data.forEach(element =>
        console.log(element));   
};
const errorHandler = (error) => console.log(error);
getData(imprimirData,errorHandler);

/** parte de Promises */
// const getData2 = new Promise((resolve,reject)=>{        //esta forma no deja pasar paremetro

// })

// const getData1 = (error)=> new Promise((resolve,reject)=>{  //esta forma de promesa permite pasar un paremetro
//     if(!error){ 
//         setTimeout(() => {
//            resolve({
//                 nombre:"Omar Dario Virili",
//                 edad: 38

//             })
     
//         }, 300);   
        
//     }else{
//         reject('No pudimos obtner los datos')
//     }
//     })
    
// const getData2 = (error)=> new Promise((resolve,reject)=>{  //esta forma de promesa permite pasar un paremetro
//         if(!error){ 
//             setTimeout(() => {
//                resolve({
//                     nombre:"Omar Dario Virili",
//                     edad: 38
    
//                 })
         
//             }, 300);   
            
//         }else{
//             reject('No pudimos obtner los datos de data2)
//         }
//         })

// /*resolver mediante then y cast */
// console.log("inicio");
// getData1(false)
//     .then((data)=>{
//         console.log(data);
//         return getData2(false)
//     })
//     .then ((data)=>{
//         console.log(data);
//     })
//     .catch((error)=>{
//         console.log(error);
//     })

// console.log("fin");

//async await

const getData1 = (error)=> new Promise((resolve,reject)=>{  //esta forma de promesa permite pasar un paremetro
    if(!error){ 
        setTimeout(() => {
           resolve({
                nombre:"Omar Dario Virili",
                edad: 38

            })
     
        }, 3000);   
        
    }else{
        reject('No pudimos obtner los datos')
    }
    })
    const getData2 = (error)=> new Promise((resolve,reject)=>{  //esta forma de promesa permite pasar un paremetro
        if(!error){ 
            setTimeout(() => {
               resolve({
                    nombre:"Virili",
                    edad: 30
    
                })
         
            }, 3000);   
            
        }else{
            reject('No pudimos obtner los datos2')
        }
        })
    
const main = async()=>{
    try{
    let resultado = await getData1(false)
    let resultado2 = await getData2(true)
    console.log(resultado);
    console.log(resultado2);
    }catch(error){
        console.log(error);
    }
}

main()