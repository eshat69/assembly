.model small
.stack 100h
.data
a db 'input a = $'  
b db 10,13,'input b = $'
c db 10,13,'sum = $'     
.code
main proc
    mov ax,@data   ;initilized
    mov ds,ax
                              
    mov ah,9   ;output
    lea dx,a
    int 21h  
    
    mov ah,1    ;input
    int 21h
    mov bl,al
    
    mov ah,9   ;output
    lea dx,b
    int 21h 
    
    mov ah,1    ;input
    int 21h
    mov bh,al
    
    mov ah,9   ;output
    lea dx,c
    int 21h
    
    sub bl,bh   ; bl=bl-bh
    add bl,48  ;48 ascii = 0 
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch  
    int 21h
    main endp
end main