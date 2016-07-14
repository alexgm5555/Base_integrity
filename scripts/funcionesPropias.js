function loginValido(){
	var login=sessionStorage.getItem("loginintegrity");
	if(login=="cerrado"){
		cerrarSesion();
	}
	else{
		sessionStorage.setItem("loginintegrity","valido");
	}
}
//renderizar los datos opbtenidos de los servicios 
function limpiarJson(textAreaJSON){
	var string =   modificarJSON(textAreaJSON);
	string =  string.substring(0, string.lastIndexOf ('}'));
	string =  string.replace('{','');
	string =  string.replaceAll("\"nombreTabla\":",'');
	obj =JSON.parse(string);
	if(Object.keys(obj).length==1){
		string = limpiarJson(string);
	}
	return string;
}
function pintarGrafica(txt1){//funcion para organizar el json qque necesita kendo para pintar la grafica
	try{
		txt1 = limpiarJson(txt1);
		var serie = txt1.replaceAll("columna1","name");
		serie = serie.replaceAll("columna2","data");
		var series = JSON.parse(serie);
		for(var x = 0;x<Object.keys(series).length-35;x++){
			var numero =series[x].data;
			numero=numero.replaceAll(",","");
			if( (/^\d+/.test(numero)) ) {
				var texti = series[x].data;// data debe ser numerico y separado por , eje 33,22,44
				series[x].data = "["+texti +"]";
			}else {alert("No hay valores numericos para realizar el grafico.");}
			
		}
		serie = JSON.stringify(series);
		serie = serie.replaceAll("\"[","[");
		serie = serie.replaceAll("]\"","]");
		var seriesg = JSON.parse(serie);
		return seriesg;
	} catch(e){
		alert("fun intarGrafica error: <br>"+e.message);
	}
}

function modificarJSON(textAreaJSON){
	try{
		var string=textAreaJSON;
		var JSONObject2=JSON.parse(string);
		var nomTabZonaActual=Object.keys(JSONObject2).toString();
		string=string.replaceAll(nomTabZonaActual,"nombreTabla");
		var obj5 = JSON.parse(string);
		for (var i = 0; i<Object.keys(obj5).length+1; i++) { //loop through the array
			cont1=0;
			var obj = obj5.nombreTabla.length;
			if(obj){
				var obj = obj5.nombreTabla[i];
				for (var key in obj) { //loop through the keys
					cont1=cont1+1;
					string=string.replaceAll("\""+key+"\":","\""+"columna"+cont1+"\":");
					
				}
			}
			}
			
		return string;
	}catch (e) {
		return null;
	}
}

function modificarJSONKendo(textAreaJSON){
	try{
		var string=textAreaJSON;
		var obj5 = JSON.parse(string);
		cont1=0;
		for (var key in obj5) {
			cont1=cont1+1;
			string=string.replaceAll("\""+key+"\":","\""+"columna"+cont1+"\":");
		}
		return string;
	}catch (e) {
		return null;
	}
}
function nombreJson(json){
	var string = json;
	var JSONObject2=JSON.parse(string);
	var nomTabZonaActual=Object.keys(JSONObject2).toString();
	string=string.replaceAll(nomTabZonaActual,"nombreTabla");
	string =  string.substring(0, string.lastIndexOf ('}'));
	string =  string.replace('{','');
	string =  string.replaceAll("\"nombreTabla\":",'');
	obj =JSON.parse(string);
	if(Object.keys(obj).length==1){
		string = nombreJson(string);
	}
	return string;
}

function camposLookUp(jsonKendo,jsonLookUp){
	var datos = {};
	try{
		jsonLookUp = remplazaMenosLlaves(jsonLookUp);
		jsonKendo = remplazaMenosLlaves(jsonKendo);
		var json = nombreJson(jsonKendo);
		var lookUp = modificarJSON(jsonLookUp);
		json = JSON.parse(json);
		lookUp = JSON.parse(lookUp);
		
		for(var key in json[0]){
			var  a = partir(key);
			if(a== "cod"){
				for(var i=0; i<lookUp.nombreTabla.length;i++ ) {
					if( lookUp.nombreTabla[i].columna5 === key ){
						var jsonAnt = lookUp.nombreTabla[i].columna5;
						if(datos[jsonAnt]){
							datos[lookUp.nombreTabla[i].columna5].push({
								"campo": lookUp.nombreTabla[i].columna5,
								"cod": lookUp.nombreTabla[i].columna4,
								"des": lookUp.nombreTabla[i].columna7,
						});
						}else{
							datos[lookUp.nombreTabla[i].columna5]=[{
								"campo": lookUp.nombreTabla[i].columna5,
								"cod": lookUp.nombreTabla[i].columna4,
								"des": lookUp.nombreTabla[i].columna7,
						}];
						}
						
					}
				}
			}
		}
	}catch(err){
		alert(err.message + " camposLookUp");
	}
	return datos;
}

function partir(string){
	var cambia = string.split('_');
	return(cambia[1]);
}

String.prototype.replaceAll = function(token, newToken, ignoreCase) {
	var str = this + "";
	var i = -1;
	if (typeof token === "string") {
		if (ignoreCase) {
			_token = token.toLowerCase();
			while ((i = str.toLowerCase().indexOf(token,
					i >= 0 ? i + newToken.length : 0)) !== -1) {
				str = str.substring(0, i) + newToken
						+ str.substring(i + token.length);
			}
		} else {
			return this.split(token).join(newToken);
		}
	}
	return str;
};

function datoXML(name,atributo1,contenido1,atributo2,contenido2,atributo3,contenido3,atributo4,contenido4,atributo5,contenido5,atributo6,contenido6,atributo7,contenido7,atributo8,contenido8,atributo9,contenido9,atributo10,contenido10){
    var xml="";
    try{
    
    if(atributo1){
    	xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n";
    	xml = xml + "<" + name + " xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\r\n";
    	xml = xml + "<" + name + "Row>\r\n";
    	xml = xml + "<" + atributo1 + ">" + contenido1 + "</" + atributo1 + ">\r\n";
		if(atributo2){
			xml = xml + "<" + atributo2 + ">" + contenido2 + "</" + atributo2 + ">\r\n";
			if(atributo3){
				xml = xml + "<" + atributo3 + ">" + contenido3 + "</" + atributo3 + ">\r\n";
				if(atributo4){
					xml = xml + "<" + atributo4 + ">" + contenido4 + "</" + atributo4 + ">\r\n";
					if(atributo5){
						xml = xml + "<" + atributo5 + ">" + contenido5 + "</" + atributo5 + ">\r\n";
						if(atributo6){
							xml = xml + "<" + atributo6 + ">" + contenido6 + "</" + atributo6 + ">\r\n";
							if(atributo7){
								xml = xml + "<" + atributo7 + ">" + contenido7 + "</" + atributo7 + ">\r\n";
								if(atributo8){
									xml = xml + "<" + atributo8 + ">" + contenido8 + "</" + atributo8 + ">\r\n";
									if(atributo9){
										xml = xml + "<" + atributo9 + ">" + contenido9 + "</" + atributo9 + ">\r\n";
										if(atributo10){
											xml = xml + "<" + atributo10 + ">" + contenido10 + "</" + atributo10 + ">\r\n";
										}
									}
								}
							}
						}
					}
				}
			}
		}
		xml = xml + "</" + name + "Row>\r\n";
		xml = xml + "</" + name + ">";
    }
    }catch(err){
			alert(err.message);
		}
    
    return xml;
}


function datoXmlV2(name,arreglo,SegVerNull){//funcionn actualizada para generar un formato xml para cualquier numero de datos
	try{
		var Keys="";
		var Dato= "";
		var Datos= "";
		var xml = "";
		for(var key in arreglo){
			Keys = key;
			Datos = arreglo[key];
			if(Datos == "si"){
				Datos = "true";
			}
			if(Datos == "no"){
				Datos = "false";
			}
			if((typeof Datos === 'number')||(typeof Datos === 'boolean')){
				Dato = Datos.toString();
			}else{
				Dato = Datos;
			}
			if((Dato=="")&&(SegVerNull==true)){
				xml = xml + "<" + Keys + "/>\r\n";
			}else {
				xml = xml + "<" + Keys + ">" + Dato + "</" + Keys + ">\r\n";
			}
		}
		if(xml){
			var xml2 = xml;
			xml = "";
			xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n";
			xml = xml + "<" + name + " xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\r\n";
			xml = xml + "<" + name + "Row>\r\n";
			xml = xml + xml2;
			xml = xml + "</" + name + "Row>\r\n";
			xml = xml + "</" + name + ">";
		}
		return xml;
	}catch(err){
			alert(err.message);
		}
}

function pasarObj(arreglo,nombre){
	try{
		var obj = [];

		for (var i =0; i<=arreglo.length;i++){
			obj.push({
				"nombre": arreglo[i],
			});
		}
		var txt = (JSON.stringify(obj));
		txt= txt.replaceAll("\""+"nombre"+"\":","\""+nombre+"\":");
		obj = JSON.parse(txt);
		return obj;	
	}catch(e){
		alert("Function: pasarObj Error: "+e.message);
	}
}

function remplaza_porMenos(s1) {
	var test = /(_\d+(\._\d*)?)\b/g;
	var s2 = s1.replace(test,
		function($0,$1,$2)
		{ 
			return(($1.replace("_","-")));
		}
	);
	return s2;
}
function remplazaMenosLlaves(s1) {
	var test = /([abc]*-[a-zA-z]+(\.-[abc]*)?)\b\":/g;
	var s2 = s1.replace(test,
		function($0,$1,$2)
		{ 
			return(($1.replace("-","_")+"\":"));
		}
	);
	return s2;
}
function  crearEspacio_salto (tipo,longi,div,ExtTamPoUp){
	 var newlabel = document.createElement("Label");
	 var longitud = ""; 
	 if(tipo=="jumpLine"){
	  tipo = "<br>";
	 }else{
	  tipo = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	 }
	 for(var i=0;i<longi;i++){
	  longitud = longitud +tipo;
	 }
	 newlabel.innerHTML = longitud;
	 if(ExtTamPoUp){
	  var tam = 'margin-left:'+ExtTamPoUp;
	  newlabel.setAttribute('style', tam);
	 }
	 document.getElementById(div).appendChild(newlabel);
	}
function  crearLabel (id,titulo,div,fuente,color,tipo){
	var newlabel = document.createElement("Label");
	newlabel.id = id;
	newlabel.setAttribute("for","text" + id);
	if(tipo=='editor'){//en caso de que sea un label para editor le coloca este estilo para mostrarlo en la parte superior
		newlabel.style.verticalAlign = '220%'; 
	}
	newlabel.style.font= fuente;
	newlabel.innerHTML = titulo;
	document.getElementById(div).appendChild(newlabel);
}
function  crearInput (id,div){
	var newInput = document.createElement("INPUT");
	newInput.id = id;
	newInput.name = "text";
	document.getElementById(div).appendChild(newInput);
}
function modTextboxPopupFl(idElemento,tipo,readonly) {
//	if(lookup[idElemento]){
//	  tipo= "lista";
//	 }
	elemento= $("#"+idElemento);
	if(readonly){
		elemento.kendoMaskedTextBox();
		elemento[0].disabled = true;
	}else{
		if (tipo=="decimal"){
			elemento.kendoNumericTextBox();
		}else if (tipo=="number"){
			elemento.kendoNumericTextBox({format: "#"});
		}else if((tipo=="string")||(tipo=="character")){
			elemento.kendoMaskedTextBox();
		}else if(tipo=="date"){
			//elemento.kendoMaskedTextBox({mask: "0000-00-00"});
		}else if(tipo=="logical"){
			var lista = ["si","no"];
			elemento = elemento.kendoComboBox({
				dataSource: lista,
				filter: "contains",
				suggest: true,
				index: 0
			});
		}else if(tipo=="lista"){
			var lista = lookup[idElemento].des;
//			if(idElemento.substring(0,6)=="Codigo"){
//				lista = lookup[idElemento].cod;
//			}
			elemento = elemento.kendoComboBox({
				dataSource: lista,
				filter: "contains",
				suggest: true,
				index: 0
			});
		}
	}
}

