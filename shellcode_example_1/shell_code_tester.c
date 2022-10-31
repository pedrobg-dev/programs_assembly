int main(){
	unsigned char shellcode[] = "\x31\xdb\x31\xc0\xb0\x01\xcd\x80";
	((void(*)())shellcode)();
}
