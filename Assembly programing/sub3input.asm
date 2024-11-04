.model small
.stack 100h
.data
    msg db ?            
.code
main proc
    ; Input first character
    mov ah,1              
    int 21h
    sub al, 48             ; Convert ASCII to integer
    mov bl, al             ; Store in bl
    
    ; Input second character
    mov ah,1              
    int 21h
    sub al, 48             ; Convert ASCII to integer
    mov bh, al             ; Store in bh
    
    ; Input third character
    mov ah,1               
    int 21h
    sub al, 48             ; Convert ASCII to integer
    mov cl, al             ; Store in cl
    add bl, bh             ; bl = bl + bh
    mov ch, bl
    add ch, cl
    add ch, 48             ; Convert integer to ASCII
    mov msg, ch            ; Store result in msg
    
    ; Display the result
    mov ah,2
    mov dl, msg            ; Load the result into dl
    int 21h                ; Display character in dl
    
    ; Exit program
    mov ah,4ch             ; Terminate program
    int 21h
main endp
end main
