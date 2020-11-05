## HW4
### 1. ALU
* picture
![ALU](https://nohano1l.github.io/co109a/02/jpg/56133.jpg)
* code
```
    Mux16(a=x, b=false, sel=zx, out=x1);
    Not16(in=x1, out=notx1);
    Mux16(a=x1, b=notx1, sel=nx, out=x2);
    Mux16(a=y, b=false, sel=zy, out=y1);
    Not16(in=y1, out=noty1);
    Mux16(a=y1,b=noty1,sel=ny,out=y2);
    Add16(a=x2, b=y2, out=x2addy2);
    And16(a=x2, b=y2, out=x2andy2);
    Mux16(a=x2andy2, b=x2addy2, sel=f, out=c);
    Not16(in=c, out=notc);
    // ALU-nostat// Mux16(a=c, b=notc, sel=no, out=out);
    Mux16(a=c,b=notc,sel=no,out=out,out[0..7]=out07,out[8..15]=out815,out[15]=ng);
    // Or16Way(in=ng, out=d);
    Or8Way(in=out07, out=or8wayout07);
    Or8Way(in=out815, out=or8wayout815);
    Or(a=or8wayout07, b=or8wayout815, out=d);

    Not(in=d, out=zr);
```