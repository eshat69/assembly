.model small
.stack 100h
.code
main proc
    mov ah,1   ;input
    int 21h
    mov bl,al
    
    mov ah,1   ;input
    int 21h
    mov bh,al
    
    mov ah,2   ;newline
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl,2   ;output
    mov dl,bl
    int 21h
    
    mov dl,2   ;output
    mov dl,bh
    int 21h
    
   ; mov ah,2   ;beep
   ; mov dl,07
   ; int 21h