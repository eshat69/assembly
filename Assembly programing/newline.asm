.model small
.stack 100h
.code

main proc
mov ah,1 ;taking input
int 21h
mov bl,al

mov ah,1 ;taking input
int 21h
mov bh,al

mov ah,2 ;newline
mov dl,10
int 21h
mov dl,13
int 21h
    
mov ah,2 ;printing output
mov dl,bl
int 21h    
mov ah,2 ;printing output
mov dl,bh
int 21h

exit:
mov ah,4ch
int 21h
main endp
end main
