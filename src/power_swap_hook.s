.text
.thumb
.thumb_func
.align 2

POWER_SWAP_animation_hook:
	ldr r0, =(0x020241EA)
	ldrh r0, [r0]
	mov r2, #0xC0
	lsl r2, r2, #0x1
	cmp r0, r2
	bne GUARD_SWAP_animation_hook
	ldr r0, =(POWER_SWAP_animation_part_2)
	b return_swap_anim_hook

GUARD_SWAP_animation_hook:
	add r2, #0x1
	cmp r0, r2
	bne SKILL_SWAP_animation_hook
	ldr r0, =(GUARD_SWAP_animation)
	b return_swap_anim_hook

SKILL_SWAP_animation_hook:
	ldr r0, =(0x08596864)

return_swap_anim_hook:
	mov r2, #0x1E
	ldsh r1, [r5, r2]
	mov r3, #0x20
	ldsh r2, [r5, r3]
	ldr r3, =(0x0810FD7B)
	bx r3

.align 2
POWER_SWAP_animation_part_2:
.byte 0x0B, 0x28, 0xE8, 0x27, 0x6C, 0x49, 0x52, 0x08, 0x9C, 0xC6, 0x2E, 0x08, 0x00, 0x00, 0x00, 0x00 
.byte 0x54, 0x68, 0x59, 0x08, 0xF1, 0xFD, 0x10, 0x08

.align 2
GUARD_SWAP_animation:
.byte 0x0B, 0x28, 0xAB, 0x27, 0x6C, 0x49, 0x52, 0x08, 0x9C, 0xC6, 0x2E, 0x08, 0x00, 0x00, 0x00, 0x00 
.byte 0x54, 0x68, 0x59, 0x08, 0xF1, 0xFD, 0x10, 0x08
