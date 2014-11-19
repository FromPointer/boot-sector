; Function: switch 16bit real mode to 32bit protect mode

[bits 16]

; switch to protect mode
switch_to_pm:
	cli ; clear interrupt-->close interrupt
	
	lgdt [gdt_descriptor] ; load global descriptor table

	; To make the switch to protect mode
	; we need to set the firt bit of control register(cr0) to 1
	mov eax, cr0 
	xor eax, 0x1
	mov cr0, eax

	; Make a far jump (i.e. to a new segment) to our 32-bit code.
	; This also forces the CPU to flush its cache of
	; pre-fetched and real-mode decoded instructions, which can ; cause problems.
	jmp CODE_SEG:init_pm


[bits 32]

; Initialise registers and the stack once in PM
init_pm:
	mov ax, DATA_SEG   ; Now in PM , our old segments are meaningless ,
	mov ds, ax         ; so we point our segment registers to the data selector we defined in our GDT
	mov ss, ax
	mov es, ax 
	mov fs, ax 
	mov gs, ax

	mov ebp, 0x90000   ; Update our stack position so it is right at the top of the free spac
	mov esp , ebp

	call BEGIN_PM      ; Finally, call some well-known label


