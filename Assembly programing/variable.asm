.model small
.stack 100h
.data 
msg db 3 ;db= defite byte
msg2 db ? ; value by user    
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2         ;output
    add msg,48
    mov dl,msg
    int 21h 
     
    mov ah,2
    mov dl,10        ;newline
    int 21h
    mov dl,13       ; crat
    int 21h 
    
    mov ah,1         ;input
    int 21h
    mov msg2,al   
    mov ah,2 
     
 
    mov ah,2         ;output
    mov dl,msg2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main