.model small
.stack 100h   
.data
a db 'chin tapak dam dam $'
b db 'natok kom koro pio$'
c db 'apni plz uttejito hoben na$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9   ;a calling data
    lea dx,a
    int 21h 
    
    mov ah,2     ;new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    m:
    mov ah,9   ;b calling data
    lea dx,b
    int 21h
     
    mov ah,2     ;new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    jmp n      ;jump n level
    
    n:
    mov ah,9    ;c calling data
    lea dx,c
    int 21h
    jmp exit   ;jump exit level
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
