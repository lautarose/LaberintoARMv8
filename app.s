.globl app
app:	
	//---------------- Main code --------------------
	// X0 contiene la dirección base del framebuffer (NO MODIFICAR)
	
	// X1 Contiene el tamaño en X.
	// X2 Contiene el tamaño en Y.

	mov x1, 512 // tamaño en X.
	mov x2, 512 // tamaño en Y.

	// Llamar funcion drawBG //

	// Parametros:
		// x11: tamaño en Y.
		// x12: tamaño en X.
	
	//
	mov x11, 512		// Pixels en Y
	mov x12, 512		// Pixels en X
	add x13, x0, 0 // dirección base del framebuffer
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
	mov x4, 1

	bl drawChar

	bl borrar_personaje

	// --- Delay loop ---
	movz x11, 0x10, lsl #16
delay1: 
	sub x11,x11,#1
	cbnz x11, delay1
	// ------------------

	// --- Infinite Loop ---	
InfLoop: 
	b InfLoop
