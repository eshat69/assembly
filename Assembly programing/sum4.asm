.model small
.stack 100h
.data 
a db ?
b db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1             ;input1
    int 21h
    mov bl,al
    
    mov ah,1             ;input1
    int 21h
    mov bh,al
    
    mov ah,1             ;input1
    int 21h
    mov cl,al
    
    mov ah,1             ;input1
    int 21h
    mov ch,al
    
    add bl,bh             ;add 
    sub bl,48
    mov a,bl    
    
    add a,cl              ;add 
    sub a,48
    mov bl,a
    
    add bl,ch             ;add 
    sub bl,48
    mov b,bl  
    
    mov ah,2              ;output
    mov dl,b
    int 21h  
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main