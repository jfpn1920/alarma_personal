Algoritmo alarma_personal
	Definir opcion,totalAlarmas Como Entero
	Definir i,j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Dimension id[100]
	Dimension titulo[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension lugar[100]
	Dimension prioridad[100]
	Dimension descripcion[100]
	Dimension estado[100]		
	totalAlarmas <- 0
	siguienteID <- 1
	//------------------------------------//
	//--|menu_principal_alarma_personal|--//
	//------------------------------------//
	Repetir
		Escribir "menu principal alarma personal"
		Escribir "1) registrar alarma"
		Escribir "2) editar alarma"
		Escribir "3) eliminar alarma"
		Escribir "4) buscar alarma"
		Escribir "5) listar alarmas"
		Escribir "6) ver detalles de la alarma"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_alarma|--//
			//----------------------//
			1:
				Escribir "registrar alarma personal"
				id[totalAlarmas + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalAlarmas + 1]
				Escribir "ingrese el título:"
				Leer titulo[totalAlarmas + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalAlarmas + 1]
				Escribir "ingrese la hora:"
				Leer hora[totalAlarmas + 1]
				Escribir "ingrese el lugar:"
				Leer lugar[totalAlarmas + 1]
				Escribir "ingrese la prioridad:"
				Leer prioridad[totalAlarmas + 1]				
				Escribir "ingrese la descripción:"
				Leer descripcion[totalAlarmas + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalAlarmas + 1]
				totalAlarmas <- totalAlarmas + 1
				Escribir "alarma personal registrada correctamente."
			//-------------------//
			//--|editar_alarma|--//
			//-------------------//
			2:
				Escribir "editar alarma personal"
				Si totalAlarmas = 0 Entonces
					Escribir "no hay alarmas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAlarmas Hacer
						Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", prioridad[i], " | ", descripcion[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la alarma:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlarmas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo título:"
							Leer titulo[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva hora:"
							Leer hora[i]
							Escribir "ingrese el nuevo lugar:"
							Leer lugar[i]
							Escribir "ingrese la nueva prioridad:"
							Leer prioridad[i]
							Escribir "ingrese la nueva descripción:"
							Leer descripcion[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "alarma personal editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una alarma con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_alarma|--//
			//---------------------//
			3:
				Escribir "eliminar alarma personal"
				Si totalAlarmas = 0 Entonces
					Escribir "no hay alarmas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAlarmas Hacer
						Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", prioridad[i], " | ", descripcion[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la alarma:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlarmas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAlarmas Entonces
								Para j <- i Hasta totalAlarmas - 1 Hacer
									id[j] <- id[j + 1]
									titulo[j] <- titulo[j + 1]
									fecha[j] <- fecha[j + 1]
									hora[j] <- hora[j + 1]
									lugar[j] <- lugar[j + 1]
									prioridad[j] <- prioridad[j + 1]
									descripcion[j] <- descripcion[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalAlarmas <- totalAlarmas - 1
							Escribir "alarma personal eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una alarma con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_alarma|--//
			//-------------------//
			4:
				Escribir "buscar alarma personal"
				Si totalAlarmas = 0 Entonces
					Escribir "no hay alarmas registradas."
				SiNo
					Escribir "ingrese el id de la alarma:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlarmas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrado"
							Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", prioridad[i], " | ", descripcion[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una alarma con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_alarmas|--//
			//--------------------//
			5:
				Escribir "listar alarmas personales"
				Si totalAlarmas = 0 Entonces
					Escribir "no hay alarmas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAlarmas Hacer
						Escribir id[i], " | ", titulo[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------------//
			//--|ver_detalles_de_la_alarma|--//
			//-------------------------------//
			6:
				Escribir "ver detalles de la alarma personal"
				Si totalAlarmas = 0 Entonces
					Escribir "no hay alarmas registradas."
				SiNo
					Escribir "ingrese el id de la alarma:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlarmas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la alarma personal"
							Escribir "id: ", id[i]
							Escribir "título: ", titulo[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "lugar: ", lugar[i]
							Escribir "prioridad: ", prioridad[i]
							Escribir "descripción: ", descripcion[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una alarma con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			7:
				Escribir "gracias por utilizar la alarma personal."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo