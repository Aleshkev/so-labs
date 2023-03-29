; Zaimplementuj w asemblerze wołane z języka C funkcje o poniższych deklaracjach, wyznaczające maksimum dwóch liczb:
;
;     int smax(int, int);
;     unsigned umax(unsigned, unsigned);

global smax
global umax

smax:   
        ; eax = esi
        mov     eax, esi

        ; if(edi >= esi) eax = edi
        cmp     edi, esi 
        cmovge  eax, edi

        ; return eax
        ret

umax:   
        ; eax = esi
        mov     eax, esi
        
        ; if(edi >= esi) eax = edi
        cmp     edi, esi
        cmovnb  eax, edi

        ; return eax
        ret

; To by nie działało z rax itp., bo mamy dać poprawną odpowiedź dla 32 bitów.
