### Memory
* picture
![Memory](https://nohano1l.github.io/co109a/05/jpg/62537.jpg)
* code
```
    Not(in=address[14],out=g);
    And(a=g,b=load,out=h);
    And(a=address[14],b=load,out=k);
    RAM16K(in=in,load=h,address=address[0..13],out=outh);
    Screen(in=in,load=k,address=address[0..12],out=outk);
    Keyboard(out=c);
    Mux4Way16(a=outh, b=outh, c=outk, d=c, sel=address[13..14], out=out);
```