Algoritmo Enc17_ejerCoop
	
	menu()
	
FinAlgoritmo

SubProceso menu()
	Definir login Como Logico
	Definir opciones Como Entero
	Definir ancho, largo, alto Como Entero
	definir a Como Caracter
	
	
	
	login = Verdadero
	
	Repetir
		
		Escribir "              MENU                 "
		Escribir ""
		Escribir "Seleccione el número de opción a la que desea ingresar:"
		Escribir "1. Calcular muro de ladrillo"
		Escribir "2. Calcular viga de hormigón"
		Escribir "3. Calcular columnas de hormigón"
		Escribir "4. Calcular contrapisos"
		Escribir "5. Calcular techo"
		Escribir "6. Calcular pisos"
		Escribir "7. Calcular pintura"
		Escribir "8. Calcular iluminación"
		Escribir "9. Salir"
		Escribir ""
		Leer opciones
		
		Si opciones = 1 Entonces
			
			calcularMuro()
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 2 Entonces
			calcularViga()
			
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 3 Entonces
			calcularColumna()
			
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 4 Entonces
			contraPiso()
			
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 5 Entonces
			calcularTecho()
			
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 6 Entonces
			calcularPisos()
			
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 7 Entonces
			calcularPintura()
			
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 8 Entonces
			calcularIluminacion()
			
			Escribir ""
			Escribir "Presione la X para volver al menú"
			Leer a
			Limpiar Pantalla
		FinSi
		
		Si opciones = 9 Entonces
			login = Falso
			Escribir ""
			Escribir "Gracias por utilizar nuestro programa."
		FinSi
		
	Mientras Que login = Verdadero
FinSubProceso


Funcion  superficie = calcularSuperficie(largo, alto)
	Definir superficie Como Real
	superficie = largo*alto	
FinFuncion

Funcion volumen = calcularVolumen(ancho,largo, alto)
	definir volumen Como Real
	volumen = ancho*largo*alto
FinFuncion

SubProceso calcularMuro()
	Definir muro, largo, alto como real 
	Escribir "¿Qué espesor tiene el muro? ¿30 o 20 cm?"
	leer muro
	escribir "Ingrese el largo del muro"
	leer largo 
	escribir "Ingrese el alto" 
	leer alto
	Si muro<>30 y muro <>20
		escribir "Ingrese un espesor valido"
		leer muro 
	FinSi
	
	si muro=30 Entonces
		escribir "La superficie del muro es de: " calcularSuperficie(largo, alto) "m^2"
		escribir "La cantidad de cemento necesario es de: " calcularSuperficie(largo, alto)*15.2 " kg"
		escribir "La cantidad de arena necesaria es: " calcularSuperficie(largo, alto)*0.115 " m^3"
		escribir "La cantidad de ladrillos es: " calcularSuperficie(largo, alto)*120 " ladrillos" 
		
	SiNo
		si muro=20
			escribir "La superficie del muro es de: " calcularSuperficie(largo, alto) "m^2"
			escribir "La cantidad de cemento necesario es de: " calcularSuperficie(largo, alto)*10.9 " kg"
			escribir "La cantidad de arena necesaria es: " calcularSuperficie(largo, alto)*0.09 " m^3"
			escribir "La cantidad de ladrillos es: " calcularSuperficie(largo, alto)*90 " ladrillos" 
			
		FinSi
	FinSi

	

FinSubProceso

SubProceso calcularPisos()
	Definir ancho, largo, superficie Como Real
	Escribir "Inserte el ancho del paño de piso a colocar"
	leer ancho
	escribir "Ahora inserte el largo" 
	leer largo 
	
	superficie= calcularSuperficie(largo, ancho)*1.1 
	Escribir ""
	Escribir "La superficie de paño de piso que necesitará es: " superficie " m2" 
FinSubProceso


SubProceso calcularPintura()
	Definir supmuro, calculo como Real
	Escribir "Ingrese la superfície en metros del muro a pintar"
	Leer supmuro
	calculo=(supmuro)/6
	Escribir ""
	Escribir "La pintura necesaria es: " calculo	" litros."
FinSubProceso


SubProceso contraPiso()
	Definir espesor, ancho, largo, metro como real
	Escribir "Calcular el espesor, ancho y largo del contrapiso a calcular"
	Escribir "Ingrese espesor"
	Leer espesor
	Escribir "Ingrese ancho"
	leer ancho;
	Escribir "Ingrese largo"
	leer largo;
	metro = calcularVolumen(ancho,largo, espesor)
	Escribir ""
	Escribir "La cantidad de cemento a usar es: " metro * 105 "Kg"
	Escribir "La cantidad de arena a usar es: " metro * 0.45 "m^3"
	Escribir "La cantidad de piedra a usar es: " metro * 0.9 "m^3"
FinSubProceso

SubProceso calcularTecho()
	definir espesor, ancho, largo, m2 Como Real
	Escribir "Ingrese espesor, ancho y largo del techo"
	Escribir "Espesor"
	Leer espesor
	Escribir "Ancho"
	Leer ancho
	Escribir "Largo"
	Leer largo
	m2 = calcularSuperficie(largo, ancho)
	Escribir ""
	Escribir "Los metros cuadrados a construir son " m2
	Escribir "Necesitaremos los siguientes materiales "
	Escribir "Cemento = " m2 * 33 "Kg"
	Escribir "Arena = " m2 * 0.072 "m3"
	Escribir "Piedra = " m2 * 0.072 "m3"
	Escribir "Hierro del 8 = " m2 * 7 " metros"
	Escribir "Hierro del 6 = " m2 * 4 " metros"
	
FinSubProceso

Subproceso calcularViga()
	Definir medida como real
		
	Escribir "Ingrese largo de viga en metros "
	Leer medida
	
	Escribir ""
	Escribir "Los materiales necesarios son:"
	Escribir "Cemento = " medida * 9 "Kg"
	Escribir "Arena = " medida * 0.02 "m3"
	Escribir "Piedra = " medida * 0.02 "m^2"
	Escribir "Hierro del 8 = " medida * 4 " metros"
	Escribir "Hierro del 4 = " medida * 3 " metros"
		
FinSubProceso


SubProceso calcularColumna()
	
	Definir medida Como Real
	
	Escribir "Ingrese largo de la columna en metros "
	Leer medida
	Escribir ""
	Escribir "Los materiales necesarios para la columna son:"
	Escribir "Cemento = " medida * 7.5 "Kg"
	Escribir "Arena = " medida * 0.016 "m^3"
	Escribir "Piedra = " medida * 0.016 "m^2"
	Escribir "Hierro del 10 = " medida * 6 " metros"
	Escribir "Hierro del 4 = " medida * 3 " metros"
	
FinSubProceso

SubProceso calcularIluminacion()
	Definir superficie Como Real
	Escribir "Ingrese la superficie a iluminar"
	Leer superficie
	Escribir ""
	Escribir "La cantidad minima de superficie necesaria para iluminación natural es de: " superficie*0.20 "m^2"
	
FinSubProceso



