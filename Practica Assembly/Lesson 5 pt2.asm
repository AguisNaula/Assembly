%include        'functions.asm'                             ; include our external file
 
SECTION .data
msg1    db      'Hello, brave new world!', 0Ah              ; our first message string
msg2    db      'This is how we recycle in NASM.', 0Ah      ; our second message string
 
SECTION .text
global  _start
 
_start:
 
    mov     eax, msg1       ; move the address of our first message string into EAX
    call    sprint          ; call our string printing function
 
    mov     eax, msg2       ; move the address of our second message string into EAX
    call    sprint          ; call our string printing function
 
    call    quit            ; call our quit function