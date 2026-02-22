.model small
.stack 100h

.data
num1 db 05h
num2 db 03h
result db ?
msg db 'Result: $'

.code
main proc

    mov ax, @data
    mov ds, ax

    mov al, num1
    add al, num2
    mov result, al

    ; print message
    mov ah, 09h
    mov dx, offset msg
    int 21h

    ; convert number to ASCII
    mov al, result
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main