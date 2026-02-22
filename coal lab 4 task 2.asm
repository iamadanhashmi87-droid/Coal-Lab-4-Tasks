.model small
.stack 100h

.data
msg db 'Name: Adan Hashmi', 0dh,0ah
    db 'SAP ID: 70209$'

.code
main proc

    mov ax, @data
    mov ds, ax

    mov ah, 09h       ; display string function
    mov dx, offset msg
    int 21h

    mov ah, 4ch       ; exit
    int 21h

main endp
end main