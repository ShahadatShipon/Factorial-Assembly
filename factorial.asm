.model small
.stack 100h
.data

    msg db "Enter a number : $"
    newl db 010,013,"$"
    
.code
main proc
    
    mov AX,@data
    mov DS,AX
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48   
    
    lea dx,newl
    mov ah,09h
    int 21h 
    
    mov al,bl
    sub bl,1 
    mov ch,0
    mov cl,bl
    
    looop:
        
       MUL bl
       DEC bl   
       
       loop looop  
       
    add al,48
    mov ah,2
    mov dl,al
    int 21h
       
    exit:
        mov ah,4ch
        int 21h
    main endp
end main
        
        