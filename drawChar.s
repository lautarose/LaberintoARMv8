//--------DEFINICIÓN DE FUNCIONES-----------//
    .global drawChar   
	//DESCRIPCION: Dibuja el fondo.
//------FIN DEFINICION DE FUNCIONES-------//

  // Los parámetros deben ser pasados en registro:
  // x3 posicion del personaje en x.
  // x4 posicion del personaje en y.

drawChar:
  add x29, x30, 0 // guardo el registro del return.

dibujar_contorno:
  //dibujar linea horizontal
  // Los parámetros deben ser pasados en registro:
  // w27 color de la linea.
  // x11 coordenada en X donde empieza la linea.
  // x12 coordenada en Y donde empieza la linea.
  // x13 Ancho de la línea (hasta donde va).
  // x6 grosor de la linea

  mov w27, 0xF99F // color del personaje
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  mov x13, 20 // tamaño de la linea
  mov x6, 20 // grosor de la linea

  bl pintarHorizontal


    br x29 // retornar 

borrar_personaje:
  add x29, x30, 0 // guardo registro return.
  mov w27, 0xFFFF // color del fondo
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  mov x13, 20 // tamaño de la linea
  mov x6, 20 // grosor de la linea

  bl pintarHorizontal

    br x29 // retornar
