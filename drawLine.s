//--------DEFINICIÓN DE FUNCIONES-----------//
    .global drawLine    
	//DESCRIPCION: Dibuja una linea.
//------FIN DEFINICION DE FUNCIONES-------//

  //// Funcion dibujar linea horizontal ////

// Los parámetros deben ser pasados en registro:
// w27 color de la linea.
// x11 coordenada en X donde empieza la linea.
// x12 coordenada en Y donde empieza la linea.
// x13 Ancho de la línea (hasta donde va).
// x6 grosor de la linea

pintarHorizontal:
  // Calcular posición
  add x14, x0, 0 // Guardo posicion base del framebuffer en x14
  mov x18, 512
  mul x12, x12, x18 // multiplico coordenada en Y por 512.
  add x11, x11, x12 // le sumo la coordenada en X.
  lsl x11, x11, 1 // multiplico por 2.
  add x14, x14, x11 // guardo en x14 la posicion inicial del framebuffer.

  // Arranco a pintar

  mov x15, x6 // grosor de la linea.
loop_h_x:
  mov x16, x13 // X16 contador en X.
loop_h:
  sturh w27,[x14] // pinto el pixel inicial.
  add x14, x14, 2 // avanzo al siguiente pixel.
  sub x16, x16, 1 // le resto 1 al contador en X.
  cbnz x16, loop_h // si no termino la fila saltar.
// calculo el salto (le sumo 512 pixeles, menos el ancho de la linea)
  mov x17, 512 // guardo en x17 el tamaño de la pantalla
  sub x17, x17, x13 // le resto el tamaño de la linea.
  lsl x17, x17, 1 // lo multiplico por 2
  add x14, x14, x17 // muevo la direccion del framebuffer
  sub x15, x15, 1 // decremento contador en Y.
  cbnz x15, loop_h_x // si no se termino la linea salto

    br x30

//// Funcion dibujar linea vertical ////

// Los parámetros deben ser pasados en registro:
// w27 color de la linea.
// x11 coordenada en X donde empieza la linea.
// x12 coordenada en Y donde empieza la linea.
// x13 Largo de la línea (hasta donde va).
// La linea tiene un grosor de 16 pixeles hacia la derecha.

pintarVertical:
  // Calcular posición
  add x14, x0, 0 // Guardo posicion base del framebuffer en x14
  mov x18, 512
  mul x12, x12, x18 // multiplico coordenada en Y por 512.
  add x11, x11, x12 // le sumo la coordenada en X.
  lsl x11, x11, 1 // multiplico por 2.
  add x14, x14, x11 // guardo en x14 la posicion inicial del framebuffer.

  // Arranco a pintar
  mov x18, x6 // grosor de la linea de 16 pixels.
  mov x15, x13 // El largo de la linea.
loop_v_x:
  mov x16, x18 // contador en X.
loop_v:
  sturh w27,[x14] // pinto el pixel inicial.
  add x14, x14, 2 // avanzo al siguiente pixel.
  sub x16, x16, 1 // le resto 1 al contador en X.
  cbnz x16, loop_v // si no termino la fila saltar.
// calculo el salto (le sumo 512 pixeles, menos el ancho de la linea)
  mov x17, 512 // guardo en x17 el tamaño de la pantalla
  sub x17, x17, x18 // le resto el grosor de la linea.
  lsl x17, x17, 1 // lo multiplico por 2
  add x14, x14, x17 // muevo la direccion del framebuffer
  sub x15, x15, 1 // decremento contador en Y.
  cbnz x15, loop_v_x // si no se termino la linea salto

    br x30
