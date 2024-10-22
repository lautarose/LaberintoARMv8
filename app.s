.globl app
app:
	//---------------- Inicialización GPIO --------------------//

	mov w20, PERIPHERAL_BASE + GPIO_BASE     // Dirección de los GPIO.		
	
	// Configurar GPIOs como input:
	mov X21,#0
	str w21,[x20,GPIO_GPFSEL1] 		// Coloco 0 en Function Select 1 (base + 4)  

    // Configurar GPIO 2 y 3 como output:
	mov X26,#0x240
	str w26,[x20, 0]

	//---------------- Main code --------------------
	// X0 contiene la dirección base del framebuffer (NO MODIFICAR)
	// NO MODIFICAR: X20, X21, X22, X23, X24, X25, W21, W26

	
	
	// X1 Contiene el tamaño de la pantalla en X.
	// X2 Contiene el tamaño de la pantalla en Y.

	mov x1, 512 // tamaño en X.
	mov x2, 512 // tamaño en Y.

	// Llamar funcion drawBG //

	// Parametros:
		// x11: tamaño en Y.
		// x12: tamaño en X.
	
	//
	add x11, x2, 0		// Pixels en Y
	add x12, x1, 0		// Pixels en X
	add x13, x0, 0 		// dirección base del framebuffer
	//

	bl drawBG

	// Llamar funcion drawMaze //

	bl drawMaze

	// Llamar funcion drawChar //

	  // Los parámetros deben ser pasados en registro:
  	// x3 posicion del personaje en x.
  	// x4 posicion del personaje en y.

	// posicion inicial del personaje: X: 326 ; Y: 1

	mov x3, 326 
	mov x4, 10

dibujoPersonaje:

	bl drawChar

	//--delay--//
	mov x13, 0xF000
delay1:
	sub x13, x13, 1
	cbnz x13, delay1
	//--fin_delay--//	

	bl inputRead        //una vez dibujado el personaje consulto si alguno de los botones esta presionado
	cbnz x22, abajo     //consulto por boton abajo
	cbnz x23, izquierda  //consulto por boton izquierda
	cbnz x24, derecha    //consulto por boton derecha
	cbnz x25, arriba	//consulto por boton arriba

	b dibujoPersonaje

abajo:
	// chequeo colision abajo
	// Parametros:
	// x3 posicion del personaje en x.
  // x4 posicion del personaje en y.
  // Retorna en X10 un 1 true, 0 false
	bl check_down
	cbnz x10, dibujoPersonaje // Si no es cero entonces existe colision, dibujo el personaje en la posicion actual.

	bl borrar_personaje
	add x4, x4, 1
	b dibujoPersonaje

arriba:
	// chequeo colision arriba
	// Parametros:
	// x3 posicion del personaje en x.
  // x4 posicion del personaje en y.
  // Retorna en X10 un 1 true, 0 false
	bl check_up

	cbnz x10, dibujoPersonaje // Si no es cero entonces existe colision, dibujo el personaje en la posicion actual.

	bl borrar_personaje
	sub x4, x4, 1
	b dibujoPersonaje

izquierda:
	// chequeo colision izquierda
	// Parametros:
	// x3 posicion del personaje en x.
  // x4 posicion del personaje en y.
  // Retorna en X10 un 1 true, 0 false
	bl check_left
	cbnz x10, dibujoPersonaje // Si no es cero entonces existe colision, dibujo el personaje en la posicion actual.

	bl borrar_personaje
	sub x3, x3, 1
	bl dibujoPersonaje

derecha:
// chequeo colision derecha
	// Parametros:
	// x3 posicion del personaje en x.
  // x4 posicion del personaje en y.
  // Retorna en X10 un 1 true, 0 false
	bl check_right
	cbnz x10, dibujoPersonaje // Si no es cero entonces existe colision, dibujo el personaje en la posicion actual.

	bl borrar_personaje
	add x3, x3, 1
	bl dibujoPersonaje


	// --- Infinite Loop ---	
InfLoop: 
	b InfLoop
