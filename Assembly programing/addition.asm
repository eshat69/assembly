.model small
.data
.code
main proc

 mov ah,1   ;input
 int 21h
 mov bl,al

 mov ah,1
 int 21h
 mov bh,al

 add bl,bh    ;bl=bl+bh
 sub bl,48

 mov ah,2    ;output
 mov dl,bl
 int 21h

exit:
mov ah,4ch
int 21h
main endp
end main




