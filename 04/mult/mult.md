### Mult
* picture
![Mult](https://nohano1l.github.io/co109a/04/mult/mult.png)
* code
[mult.asm](https://github.com/nohano1l/co109a/blob/master/04/mult/mult.asm)
[mult.hack](https://github.com/nohano1l/co109a/blob/master/04/mult/mult.hack)
[mult.out](https://github.com/nohano1l/co109a/blob/master/04/mult/mult.out)
```
@2    // R2=0
M=0
@0   //R0=M 
D=M
@50  //IF R0=0 , JUMP TO R50  0*ANY=0
D;JEQ 
@1  //R1=M
D=M
@50 //IF R1=0,JUMP TO R50 ANY*0=0
D;JEQ
@12 //LOOP 
D;JNE
@0
D=M
@2
M=M+D // mult=>a=a+b do x times 
@1
M=M-1
D=M
@12 //LOOP
D;JNE
```
### Step
把寫好的code在Assembler.bat轉換,再開啟CPUEmulator.bat
load program-->mult.hack
load script -->mult.tst