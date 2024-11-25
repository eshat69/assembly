; .model small    ; code segment data segment 
; .stack 100h      ; size
; .code           
; main proc       ; main procedure
;    mov ah,1      ;input
;    int 21h
;    mov bl,al     ; bl er data al er vitor , al= input
;    mov ah,1      ;input
;    int 21h
;    mov bh,al
;    
;    mov ah,2       ;outp[ut
;    mov dl,bl      ;dl = display register  
;    int 21h  
;    mov ah,2       ;outp[ut
;    mov dl,bh      ;dl = display register  
;    int 21h  
;                                                             
;    exit :   ; exil name lvl  
;    mov ah,4ch
;    int 21h
;    main endp
;end main 
  
;.model small
;.stack 100h
;.data
;m db 'ayon mc* $'    ; db = define by, msg er jnno jototuku jayga lagbe oita define korbe
;.code 
;main proc            ; 1 input 2 output 9 str
;    mov ax,@data      ; name of data segment
;    mov ds,ax           ; ax = al + ah = 8 + 8 =16 reg.  ax er man dx er vitor
;    
;    mov ah , 9     ;str
;    lea dx ,m      ; lea = load effective address 
;    int 21h
;    
;    mov ah,1      ;input
;    int 21h
;    mov bl,al
;    
;    mov ah,2       ;outp[ut
;    mov dl,bl      ;dl = display register  
;    int 21h 
;    
;     exit :   ; exil name lvl  
;    mov ah,4ch
;    int 21h
;    main endp
;end main 
.model small
.stack 100h
.code
main proc
mov ah,1
int 21h
mov bl,al
mov ah,1
int 21h
mov bh,al

add bl,32
sub bh,32

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
mov ah,2
mov dl,bl
int 21h
mov ah,2
mov dl,bh
int 21h
exit:
mov ah,4ch
int 21h
main endp
end main
    