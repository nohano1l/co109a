// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@8192 //換畫面的總重複次數（n）
D=A
@0
M=D
@24576
D=M
@18
D;JNE  //if out!=0, jump to line 18
@0 
D=M 
M=M-1 
@0
D;JEQ  //if out<0, break the loop
@16383 //16384是螢幕
A=D+A 
M=0 	
@8
0;JMP //重複迴圈
@0    //loop for black screen
D=M
M=M-1
@0
D;JEQ //if out<0, break the loop
@24576
A=A-D // go to RAM[24576 - n]
M=-1  //set RAM[24576 - n] value into -1 (black screen)
@18
0;JMP //重複迴圈