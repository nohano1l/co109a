### 1. PC
* picture
![PC](https://nohano1l.github.io/co109a/03/jpg/60340.jpg)
* code
```
    Inc16(in=PC,out=InPC);
    Mux16(a=PC,b=InPC,sel=inc,out=outin);
    Mux16(a=outin,b=in,sel=load,out=outlo);
    Mux16(a=outlo,b=false,sel=reset,out=outre);
    Register(in=outre,load=true,out=out,out=PC);
```