Proceso Saludov_segun
	//Nota: de preferencia ignorar este código fue algo que desarrollé antes de la versión final de nuestro grupo para poder probar la estructura "segun".
	//clase lunes 25 de mayo. Hecho por Jorge con la estructura del ciclo (Repetir) hecha por Tomás y Roberto
	//Genere un psc que para una hora dada en formato hh:mm en 24hrs. diga buenos días/tardes/noches
	//buenos días >6:00 11:59	tardes >12:00 18:30	noches >18:31 5:59
	//si se da una hora fuera del rango debe indicar el error 00:00 23:59
	
	//entradas
	definir horaIng Como Caracter;
	Definir ejecutar Como Entero;
	
	Escribir "Ingrese una hora en formato de 24hrs separando hrs y mins por dos puntos";
	
	Repetir
		
		seguir<-Verdadero;	
		Leer horaIng;
		
		//proceso
		hr<-Subcadena(horaIng,0,1);
		min<-Subcadena(horaIng,3,4);
		hora<-ConvertirANumero(hr);
		minut<- ConvertirANumero(min);
		
		si hora>=24 | hora<0 | minut<0 | minut>=60 Entonces 
			Escribir "Ingrese hora nuevamente (de 00:00 a 23:59)";
			seguir <- falso ;
		FinSi
		
	Hasta Que seguir = Verdadero
	
	si	hora>=6 & hora<=11 Entonces
		ejecutar<-1;
	SiNo
		si	(hora>=12 & hora<18) | (hora=18 & minut>=0 & minut<=30) Entonces
			ejecutar<-2;
		SiNo
			ejecutar<-3;
		FinSi
	FinSi
		
	Segun ejecutar Hacer
		1:
			Escribir "Buen día!";
		2:
			Escribir "Buenas tardes";
		3:
			Escribir "Buenas noches, a mimir";
	FinSegun
	
FinProceso
