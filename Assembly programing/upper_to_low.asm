.model small
.stack 100h
.data
a db 'upper $'
b db 'lower $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9     ;strint output
    lea dx,a
    int 21h
    
    mov ah,1       ;input
    int 21h
    mov bl,al
    
    
    mov ah,2       ;newline
    mov dl,10
    int 21h
    mov dl,13
    int 21h
              
    mov ah,9
    lea dx,b
    int 21h 
              
    mov ah,2        ;output
    add bl,32       ;convert
    mov dl,bl
    int 21h
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main