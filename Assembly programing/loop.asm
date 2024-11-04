.model small
.stack 100h
.data
a db " chin tapak dam dam $"
.code
main proc 
    mov ax, @data       ; initialize
    mov ds, ax
    
    mov ah, 9           ; display string
    lea dx, a           ; load effective address
    int 21h             ; call interrupt
    
    mov ah, 2           
    mov dl, 10          ; newline (LF)
    int 21h
                                                                                             
    mov dl, 13          ; carriage return (CR)
    int 21h
    
    mov cx, 26          ; initialize loop counter (26 times for A-Z)
    mov ah, 2           
    mov dl, 'A'         ; initilized with character 'A'
    
level1:
    int 21h             ; print character in DL
    inc dl              ; increment to next character
    loop level1         ; repeat until CX = 0
    
exit:
    mov ah, 4ch         ; terminate program
    int 21h
main endp
end main
    