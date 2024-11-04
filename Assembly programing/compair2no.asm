.model small
.stack 100h
.data 
a db 'enter two num $'
b db 10,13,'largest num +  $' 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9      ;strint ouyput
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    biggest:                         
    cmp bl,bh     ;compair
    jg l1
    jmp l2
    
    l2:        ;level2
    mov ah,9
    lea dx,b
    int 21h
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l1:          ;level1
    mov ah,9
    lea dx,b
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main