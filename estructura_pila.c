// estructura_pila.c
// gcc estructura_pila.c -m32

void funcion_B(int var){
	char arregloB[20];
}

void funcion_A(void){
	char arregloA[10];
	funcion_B(0x1234);
}

void main(void){
	funcion_A();
}
