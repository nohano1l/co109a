### CPU
* picture
![CPU](https://nohano1l.github.io/co109a/05/jpg/62962.jpg)
* code
```
    Mux16(a=instruction, b=aluOut, sel=instruction[15], out=CorA);

    //Aregister-c
    And(a=instruction[5], b=instruction[15], out=Cd1);
    Not(in=instruction[15], out=NC);
    Or(a=NC, b=Cd1, out=loadA);
    ARegister(in=CorA, load=loadA, out=A, out[0..14]=addressM);

    Mux16(a=A, b=inM, sel=instruction[12], out=AorM);

    //Dregister-c
    And(a=instruction[15], b=instruction[4], out=loadD);
    DRegister(in=aluOut, load=loadD, out=D);

    ALU(x=D, y=AorM, zx=instruction[11], nx=instruction[10], zy=instruction[9], ny=instruction[8], f=instruction[7], no=instruction[6], out=outM, out=aluOut, zr=zr, ng=ng);
    
    //writeM-c
    And(a=instruction[15], b=instruction[3], out=writeM);

    //PC-c
    Or(a=zr, b=ng, out=ZRorNG); //is input zero or negative
    Not(in=ZRorNG, out=GT); //input is not zero and negative (greater than)
    And(a=GT, b=instruction[0], out=JGT);
    And(a=zr, b=instruction[1], out=JEQ);
    Or(a=JEQ, b=JGT, out=JGE);
    And(a=ng, b=instruction[2], out=JLT);
    Or(a=JLT, b=JGE, out=Pass);
    And(a=instruction[15], b=Pass, out=forPC);
    PC(in=A, load=forPC, inc=true, reset=reset, out[0..14]=pc);
```