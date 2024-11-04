.model small
.stack 100h
.data
sum db ?
main proc
    mov ah,1         ; input1
    int 21h
    mov bl,al
    
    mov ah,1          ; input2
    int 21h
    mov bh,al
    
    mov ah,1         ; input3
    int 21h
    mov cl,al
    
    add bl,1         ;add 1st input
    sub bl,48
    mov ch,bl
    
    add ch,bh        ;add 2nd input
    sub ch,48
    mov sum,ch
    
    mov ah,2          ; sum output
    mov dl,sum
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main