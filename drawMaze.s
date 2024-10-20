//--------DEFINICIÓN DE FUNCIONES-----------//
    .global drawMaze   
	//DESCRIPCION: Dibuja el fondo.
//------FIN DEFINICION DE FUNCIONES-------//

  // Los parámetros deben ser pasados en registro:

drawMaze:
  add x29, x30, 0 // guardo el return en x29.
  mov w27, 0xF800 // Color rojo de las lineas del laberinto.
  mov x20, 16 // Grosor de las lineas del laberinto.

borde_superior:
  mov x11, 0 // posicion inicial en x.
  mov x12, 0 // posicion inicial en y.
  mov x13, 320 // tamaño de la linea.
  bl pintarHorizontal

  mov x11, 352 // posicion inicial en x.
  mov x12, 0 // posicion inicial en y.
  mov x13, 160 // tamaño de la linea.
  bl pintarHorizontal

borde_inferior:
  mov x11, 0 // posicion inicial en x.
  mov x12, 496  // posicion inicial en y. (el calculo es 512 que es la ultima fila 
                //menos los 16 pixels de grosor de la linea)
  mov x13, 512 // tamaño de la linea.
  bl pintarHorizontal

borde_izq:
  mov x11, 0 // posicion inicial en x.
  mov x12, 0 // posicion inicial en y.
  mov x13, 512 // largo de la linea.
  bl pintarVertical

borde_der:
  mov x11, 496 // posicion inicial en x. 512 - 16.
  mov x12, 0 // posicion inicial en Y.
  mov x13, 464 // largo de la linea.
  bl pintarVertical

LH1:
  mov x11, 48 // posicion inicial en x.
  mov x12, 48 // posicion inicial en y.
  mov x13, 320 // ancho de la linea.
  bl pintarHorizontal

LH2:
  mov x11, 400 // posicion inicial en x.
  mov x12, 48 // posicion inicial en y.
  mov x13, 64 // ancho de la linea.
  bl pintarHorizontal

LH3:
  mov x11, 48 // posicion inicial en x.
  mov x12, 96 // posicion inicial en y.
  mov x13, 128 // ancho de la linea.
  bl pintarHorizontal

LH4:
  mov x11, 208 // posicion inicial en x.
  mov x12, 96 // posicion inicial en y.
  mov x13, 112 // ancho de la linea.
  bl pintarHorizontal

LH5:
  mov x11, 352 // posicion inicial en x.
  mov x12, 96 // posicion inicial en y.
  mov x13, 64 // ancho de la linea.
  bl pintarHorizontal

LH6:
  mov x11, 48 // posicion inicial en x.
  mov x12, 144 // posicion inicial en y.
  mov x13, 48 // ancho de la linea.
  bl pintarHorizontal

LH7:
  mov x11, 128 // posicion inicial en x.
  mov x12, 144 // posicion inicial en y.
  mov x13, 48 // ancho de la linea.
  bl pintarHorizontal

LH8:
  mov x11, 400 // posicion inicial en x.
  mov x12, 144 // posicion inicial en y.
  mov x13, 48 // ancho de la linea.
  bl pintarHorizontal

LH9:
  mov x11, 352 // posicion inicial en x.
  mov x12, 192 // posicion inicial en y.
  mov x13, 64 // ancho de la linea.
  bl pintarHorizontal

LH10:
  mov x11, 96 // posicion inicial en x.
  mov x12, 208 // posicion inicial en y.
  mov x13, 80 // ancho de la linea.
  bl pintarHorizontal

LH11:
  mov x11, 16 // posicion inicial en x.
  mov x12, 224 // posicion inicial en y.
  mov x13, 32 // ancho de la linea.
  bl pintarHorizontal

LH12:
  mov x11, 208 // posicion inicial en x.
  mov x12, 224 // posicion inicial en y.
  mov x13, 64 // ancho de la linea.
  bl pintarHorizontal

LH13:
  mov x11, 400 // posicion inicial en x.
  mov x12, 240 // posicion inicial en y.
  mov x13, 48 // ancho de la linea.
  bl pintarHorizontal

LH14:
  mov x11, 64 // posicion inicial en x.
  mov x12, 256 // posicion inicial en y.
  mov x13, 112 // ancho de la linea.
  bl pintarHorizontal

LH15:
  mov x11, 352 // posicion inicial en x.
  mov x12, 288 // posicion inicial en y.
  mov x13, 64 // ancho de la linea.
  bl pintarHorizontal

LH16:
  mov x11, 48 // posicion inicial en x.
  mov x12, 304 // posicion inicial en y.
  mov x13, 272 // ancho de la linea.
  bl pintarHorizontal

LH17:
  mov x11, 400 // posicion inicial en x.
  mov x12, 336 // posicion inicial en y.
  mov x13, 48 // ancho de la linea.
  bl pintarHorizontal

LH18:
  mov x11, 48  // posicion inicial en x.
  mov x12, 352 // posicion inicial en y.
  mov x13, 320 // ancho de la linea.
  bl pintarHorizontal

LH19:
  mov x11, 400  // posicion inicial en x.
  mov x12, 384 // posicion inicial en y.
  mov x13, 16 // ancho de la linea.
  bl pintarHorizontal

LH20:
  mov x11, 48  // posicion inicial en x.
  mov x12, 400 // posicion inicial en y.
  mov x13, 112 // ancho de la linea.
  bl pintarHorizontal

LH21:
  mov x11, 384  // posicion inicial en x.
  mov x12, 400 // posicion inicial en y.
  mov x13, 80 // ancho de la linea.
  bl pintarHorizontal

LH22:
  mov x11, 48  // posicion inicial en x.
  mov x12, 448 // posicion inicial en y.
  mov x13, 112 // ancho de la linea.
  bl pintarHorizontal

LH23:
  mov x11, 432  // posicion inicial en x.
  mov x12, 448 // posicion inicial en y.
  mov x13, 64 // ancho de la linea.
  bl pintarHorizontal

LH24:
  mov x11, 112  // posicion inicial en x.
  mov x12, 192 // posicion inicial en y.
  mov x13, 16 // ancho de la linea.
  bl pintarHorizontal

LV1:
  mov x11, 48  // posicion inicial en x.
  mov x12, 48 // posicion inicial en y.
  mov x13, 64 // largo de la linea.
  bl pintarVertical

LV2:
  mov x11, 48  // posicion inicial en x.
  mov x12, 144 // posicion inicial en y.
  mov x13, 176 // largo de la linea.
  bl pintarVertical

LV3:
  mov x11, 48  // posicion inicial en x.
  mov x12, 352 // posicion inicial en y.
  mov x13, 64 // largo de la linea.
  bl pintarVertical

LV4:
  mov x11, 96  // posicion inicial en x.
  mov x12, 400 // posicion inicial en y.
  mov x13, 64 // largo de la linea.
  bl pintarVertical

LV5:
  mov x11, 160  // posicion inicial en x.
  mov x12, 144 // posicion inicial en y.
  mov x13, 80 // largo de la linea.
  bl pintarVertical

LV6:
  mov x11, 192  // posicion inicial en x.
  mov x12, 400 // posicion inicial en y.
  mov x13, 96 // largo de la linea.
  bl pintarVertical

LV7:
  mov x11, 208  // posicion inicial en x.
  mov x12, 96 // posicion inicial en y.
  mov x13, 176 // largo de la linea.
  bl pintarVertical

LV8:
  mov x11, 240  // posicion inicial en x.
  mov x12, 352 // posicion inicial en y.
  mov x13, 112 // largo de la linea.
  bl pintarVertical

LV9:
  mov x11, 256  // posicion inicial en x.
  mov x12, 144 // posicion inicial en y.
  mov x13, 128 // largo de la linea.
  bl pintarVertical

LV10:
  mov x11, 288  // posicion inicial en x.
  mov x12, 400 // posicion inicial en y.
  mov x13, 96 // largo de la linea.
  bl pintarVertical

LV11:
  mov x11, 304  // posicion inicial en x.
  mov x12, 96 // posicion inicial en y.
  mov x13, 96 // largo de la linea.
  bl pintarVertical

LV12:
  mov x11, 304  // posicion inicial en x.
  mov x12, 224 // posicion inicial en y.
  mov x13, 96 // largo de la linea.
  bl pintarVertical

LV13:
  mov x11, 336  // posicion inicial en x.
  mov x12, 352 // posicion inicial en y.
  mov x13, 112 // largo de la linea.
  bl pintarVertical

LV14:
  mov x11, 352  // posicion inicial en x.
  mov x12, 16 // posicion inicial en y.
  mov x13, 352 // largo de la linea.
  bl pintarVertical

LV15:
  mov x11, 384  // posicion inicial en x.
  mov x12, 400 // posicion inicial en y.
  mov x13, 96 // largo de la linea.
  bl pintarVertical

LV16:
  mov x11, 400  // posicion inicial en x.
  mov x12, 48 // posicion inicial en y.
  mov x13, 64 // largo de la linea.
  bl pintarVertical

LV17:
  mov x11, 448  // posicion inicial en x.
  mov x12, 96 // posicion inicial en y.
  mov x13, 320 // largo de la linea.
  bl pintarVertical


    br x29 // retorno al main.


