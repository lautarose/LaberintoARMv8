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
  // Utilizo funicion pintarRectangulo
  // Parametros:
  // w27 color de la linea.
  // x11 coordenada en X donde empieza la linea.
  // x12 coordenada en Y donde empieza la linea.
  // x13 largo de la linea en pixeles (X).
  // x6 ancho de la linea en pixeles (Y).

lc1:
  mov w27, 0x0000 // color de la linea
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 7 // nueva posicion en x.
  mov x13, 6 // largo
  mov x6, 1 // ancho

  bl pintarRectangulo

lc2:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 5 // nueva posicion en x.
  add x12, x12, 1 // nueva posicion en Y.
  mov x13, 10 // largo
  mov x6, 1// ancho

  bl pintarRectangulo

lc3:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 3 // nueva posicion en x.
  add x12, x12, 2 // nueva posicion en Y.
  mov x13, 14 // largo
  mov x6, 1 // ancho

  bl pintarRectangulo

lc4:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 2 // nueva posicion en x.
  add x12, x12, 3 // nueva posicion en Y.
  mov x13, 16 // largo
  mov x6, 2 // ancho

  bl pintarRectangulo

lc5:
  mov w27, 0xF99F // color
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 1 // nueva posicion en x.
  add x12, x12, 5 // nueva posicion en Y.
  mov x13, 18 // ancho
  mov x6, 2 // largo

  bl pintarRectangulo

lc6:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x12, x12, 7 // nueva posicion en Y.
  mov x13, 20 // ancho
  mov x6, 6 // largo

  bl pintarRectangulo

lc7:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 1 // nueva posicion en x.
  add x12, x12, 13 // nueva posicion en Y.
  mov x13, 18 // ancho
  mov x6, 2 // largo

  bl pintarRectangulo

lc8:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 2 // nueva posicion en x.
  add x12, x12, 15 // nueva posicion en Y.
  mov x13, 16 // ancho
  mov x6, 2 // largo

  bl pintarRectangulo

lc9:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 3 // nueva posicion en x.
  add x12, x12, 17 // nueva posicion en Y.
  mov x13, 14 // ancho
  mov x6, 1 // largo

  bl pintarRectangulo

lc10:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 5 // nueva posicion en x.
  add x12, x12, 18 // nueva posicion en Y.
  mov x13, 10 // ancho
  mov x6, 1 // largo

  bl pintarRectangulo

lc11:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 7 // nueva posicion en x.
  add x12, x12, 19 // nueva posicion en Y.
  mov x13, 6 // ancho
  mov x6, 1 // largo

  bl pintarRectangulo

ojo1:
  mov w27, 0x0000 // color negro
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 5 // nueva posicion en x.
  add x12, x12, 7 // nueva posicion en Y.
  mov x13, 2 // largo
  mov x6, 2 // ancho

  bl pintarRectangulo

ojo2:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 13 // nueva posicion en x.
  add x12, x12, 7 // nueva posicion en Y.
  mov x13, 2 // largo
  mov x6, 2 // ancho

  bl pintarRectangulo

boca:
b_l1:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 5 // nueva posicion en x.
  add x12, x12, 13 // nueva posicion en Y.
  mov x13, 1 // largo
  mov x6, 1 // ancho

  bl pintarRectangulo

b_l2:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 6 // nueva posicion en x.
  add x12, x12, 14 // nueva posicion en Y.
  mov x13, 1 // largo
  mov x6, 1 // ancho

  bl pintarRectangulo

b_l3:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 7 // nueva posicion en x.
  add x12, x12, 15 // nueva posicion en Y.
  mov x13, 6 // largo
  mov x6, 1 // ancho

  bl pintarRectangulo

b_l4:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 13 // nueva posicion en x.
  add x12, x12, 14 // nueva posicion en Y.
  mov x13, 1 // largo
  mov x6, 1 // ancho

  bl pintarRectangulo

b_l5:
  add x11, x3, 0 // posicion en X.
  add x12, x4, 0 // posicion en Y.
  add x11, x11, 14 // nueva posicion en x.
  add x12, x12, 13 // nueva posicion en Y.
  mov x13, 1 // largo
  mov x6, 1 // ancho

  bl pintarRectangulo

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
