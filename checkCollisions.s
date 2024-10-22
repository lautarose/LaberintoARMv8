//--------DEFINICIÓN DE FUNCIONES-----------//
    .global checkCollisions   
	//DESCRIPCION: Chequea las colisiones.
//------FIN DEFINICION DE FUNCIONES-------//

  // Los parámetros deben ser pasados en registro:
  // x3 posicion del personaje en x.
  // x4 posicion del personaje en y.
  // Retorna en X10 un 1 true, 0 false

check_up:
// chequeo que la posicion en Y no sea Y=1
  cmp x4, 1
  b.eq true

// Si Y es distinto de 1, entonces le resto 1 a Y 

// Calcular posición
  add x11, x3, 0 // guardo la posicion en X.
  sub x12, x4, 1 // guardo la posicion en Y.
  add x14, x0, 0 // Guardo posicion base del framebuffer en x14
  mov x18, 512
  mul x12, x12, x18 // multiplico coordenada en Y por 512.
  add x11, x11, x12 // le sumo la coordenada en X.
  lsl x11, x11, 1 // multiplico por 2.
  add x14, x14, x11 // guardo en x14 la posicion inicial del framebuffer.

// una vez que tengo la posicion del framebuffer, comparo los pixeles con el color del borde.

  mov x11, 20 // contador en X.
  
loop_up:
  ldurh w27,[x14] // guardo en w27 el color del pixel.
  mov w28, 0xF800
  cmp w27, w28 // comparo con color de las lineas del laberinto.
  b.eq true // si son iguales salto a true
  add x14, x14, 2 // avanzo un pixel.
  sub x11, x11, 1 // decremento contador
  cbnz x11, loop_up
  b false

check_down:
  // Calcular posición
  // le sumo el tamaño del personaje a Y y lo guardo en x9

  add x11, x3, 0 // guardo la posicion en X.
  add x12, x4, 20 // guardo la posicion en Y.
  add x14, x0, 0 // Guardo posicion base del framebuffer en x14
  mov x18, 512
  mul x12, x12, x18 // multiplico coordenada en Y por 512.
  add x11, x11, x12 // le sumo la coordenada en X.
  lsl x11, x11, 1 // multiplico por 2.
  add x14, x14, x11 // guardo en x14 la posicion inicial del framebuffer.

  // Chequeo colisiones
  mov x11, 20 // contador en X.
loop_down:
  ldurh w27,[x14] // guardo en w27 el color del pixel.
  mov w28, 0xF800
  cmp w27, w28 // comparo con color de las lineas del laberinto.
  b.eq true // si son iguales salto a true
  add x14, x14, 2 // avanzo un pixel.
  sub x11, x11, 1 // decremento contador
  cbnz x11, loop_down
  b false

check_left:
  // Calcular posición
  // le resto 1 a X

  sub x11, x3, 1 // guardo la posicion en X - 1.
  add x12, x4, 0 // guardo la posicion en Y.
  add x14, x0, 0 // Guardo posicion base del framebuffer en x14
  mov x18, 512
  mul x12, x12, x18 // multiplico coordenada en Y por 512.
  add x11, x11, x12 // le sumo la coordenada en X.
  lsl x11, x11, 1 // multiplico por 2.
  add x14, x14, x11 // guardo en x14 la posicion inicial del framebuffer.

  // Chequeo colisiones

  mov x11, 20 // contador en Y.
loop_left:
  ldurh w27,[x14] // guardo en w27 el color del pixel.
  mov w28, 0xF800
  cmp w27, w28 // comparo con color de las lineas del laberinto.
  b.eq true // si son iguales salto a true
  add x14, x14, 1024 // avanzo un pixel en Y.
  sub x11, x11, 1 // decremento contador
  cbnz x11, loop_left
  b false

check_right:
  // Me aseguro de que x + tamaño personaje sea distinto de 510.
  add x11, x3, 20
  cmp x11, 502
  b.eq final_laberinto // si es igual a 511 entonces finalizo el laberinto.

  // Calcular posición
  // le sumo el tamaño del personaje a X

  add x12, x4, 0 // guardo la posicion en Y.
  add x14, x0, 0 // Guardo posicion base del framebuffer en x14
  mov x18, 512
  mul x12, x12, x18 // multiplico coordenada en Y por 512.
  add x11, x11, x12 // le sumo la coordenada en X.
  lsl x11, x11, 1 // multiplico por 2.
  add x14, x14, x11 // guardo en x14 la posicion inicial del framebuffer.

  // Chequeo colisiones
  mov x11, 20 // contador en Y.
loop_right:
  ldurh w27,[x14] // guardo en w27 el color del pixel.
  mov w28, 0xF800
  cmp w27, w28 // comparo con color de las lineas del laberinto.
  b.eq true // si son iguales salto a true
  add x14, x14, 1024 // avanzo un pixel en Y.
  sub x11, x11, 1 // decremento contador
  cbnz x11, loop_right
  b false

true:
  // existe colision.
  mov x10, 1 // retorno en x10 un 1.
  mov x11, 0 // retorno en x11 un 0.
    br x30

false:
  // no existe colision
  mov x10, 0  // retorno en x10 un 0.
  mov x11, 0  // retorno en x11 un 0.
    br x30

final_laberinto:
    b end
