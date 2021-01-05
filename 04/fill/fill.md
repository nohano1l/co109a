## Fill
* picture
![Fill](https://nohano1l.github.io/co109a/04/fill/fill.png)
* [Fill.asm](https://github.com/nohano1l/co109a/blob/master/04/fill/Fill.asm)
* [Fill.hack](https://github.com/nohano1l/co109a/blob/master/04/fill/Fill.hack)
* [FillAutomatic.out](https://github.com/nohano1l/co109a/blob/master/04/fill/FillAutomatic.out)
* code
```
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
```