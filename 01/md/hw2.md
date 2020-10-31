## HW2
### 迪摩根定理證明
![證明](https://nohano1l.github.io/co109a/01/jpg/55658.jpg)
### 1. Not16
* picture
![Not16](https://nohano1l.github.io/co109a/01/jpg/55659.jpg)
* code
```
    Not(in=in[0],out=out[0]);
    Not(in=in[1],out=out[1]);
    Not(in=in[2],out=out[2]);
    Not(in=in[3],out=out[3]);
    Not(in=in[4],out=out[4]);
    Not(in=in[5],out=out[5]);
    Not(in=in[6],out=out[6]);
    Not(in=in[7],out=out[7]);
    Not(in=in[8],out=out[8]);
    Not(in=in[9],out=out[9]);
    Not(in=in[10],out=out[10]);
    Not(in=in[11],out=out[11]);
    Not(in=in[12],out=out[12]);
    Not(in=in[13],out=out[13]);
    Not(in=in[14],out=out[14]);
    Not(in=in[15],out=out[15]);
```
### 2. And16
* picture
![And16](https://nohano1l.github.io/co109a/01/jpg/55660.jpg)
* code
```
    And(a=a[0],b=b[0],out=out[0]);
    And(a=a[1],b=b[1],out=out[1]);
    And(a=a[2],b=b[2],out=out[2]);
    And(a=a[3],b=b[3],out=out[3]);
    And(a=a[4],b=b[4],out=out[4]);
    And(a=a[5],b=b[5],out=out[5]);
    And(a=a[6],b=b[6],out=out[6]);
    And(a=a[7],b=b[7],out=out[7]);
    And(a=a[8],b=b[8],out=out[8]);
    And(a=a[9],b=b[9],out=out[9]);
    And(a=a[10],b=b[10],out=out[10]);
    And(a=a[11],b=b[11],out=out[11]);
    And(a=a[12],b=b[12],out=out[12]);
    And(a=a[13],b=b[13],out=out[13]);
    And(a=a[14],b=b[14],out=out[14]);
    And(a=a[15],b=b[15],out=out[15]);
```
### 3. Or16
* picture
![Or16](https://nohano1l.github.io/co109a/01/jpg/55661.jpg)
* code
```
    Or(a=a[0],b=b[0],out=out[0]);
    Or(a=a[1],b=b[1],out=out[1]);
    Or(a=a[2],b=b[2],out=out[2]);
    Or(a=a[3],b=b[3],out=out[3]);
    Or(a=a[4],b=b[4],out=out[4]);
    Or(a=a[5],b=b[5],out=out[5]);
    Or(a=a[6],b=b[6],out=out[6]);
    Or(a=a[7],b=b[7],out=out[7]);
    Or(a=a[8],b=b[8],out=out[8]);
    Or(a=a[9],b=b[9],out=out[9]);
    Or(a=a[10],b=b[10],out=out[10]);
    Or(a=a[11],b=b[11],out=out[11]);
    Or(a=a[12],b=b[12],out=out[12]);
    Or(a=a[13],b=b[13],out=out[13]);
    Or(a=a[14],b=b[14],out=out[14]);
    Or(a=a[15],b=b[15],out=out[15]);
```
### 4. Mux16
* picture
![Mux16](https://nohano1l.github.io/co109a/01/jpg/55662.jpg)
* code
```
    Mux(a=a[0],b=b[0],sel=sel,out=out[0]);
    Mux(a=a[1],b=b[1],sel=sel,out=out[1]);
    Mux(a=a[2],b=b[2],sel=sel,out=out[2]);
    Mux(a=a[3],b=b[3],sel=sel,out=out[3]);
    Mux(a=a[4],b=b[4],sel=sel,out=out[4]);
    Mux(a=a[5],b=b[5],sel=sel,out=out[5]);
    Mux(a=a[6],b=b[6],sel=sel,out=out[6]);
    Mux(a=a[7],b=b[7],sel=sel,out=out[7]);
    Mux(a=a[8],b=b[8],sel=sel,out=out[8]);
    Mux(a=a[9],b=b[9],sel=sel,out=out[9]);
    Mux(a=a[10],b=b[10],sel=sel,out=out[10]);
    Mux(a=a[11],b=b[11],sel=sel,out=out[11]);
    Mux(a=a[12],b=b[12],sel=sel,out=out[12]);
    Mux(a=a[13],b=b[13],sel=sel,out=out[13]);
    Mux(a=a[14],b=b[14],sel=sel,out=out[14]);
    Mux(a=a[15],b=b[15],sel=sel,out=out[15]);
```
### 5. Or8way
* picture
![Or8way](https://nohano1l.github.io/co109a/01/jpg/55663.jpg)
* code
```
    Or(a=in[0],b=in[1],out=c1);
    Or(a=in[2],b=in[3],out=c2);
    Or(a=in[4],b=in[5],out=c3);
    Or(a=in[6],b=in[7],out=c4);
    Or(a=c1,b=c2,out=c5);
    Or(a=c3,b=c4,out=c6);
    Or(a=c5,b=c6,out=out);
```
### 6. Mux4Way16
* picture
![Mux4Way16](https://nohano1l.github.io/co109a/01/jpg/55664.jpg)
* code
```
    Mux16(a=a,b=b,sel=sel[0],out=Muxab);
    Mux16(a=c,b=d,sel=sel[0],out=Muxcd);
    Mux16(a=Muxab,b=Muxcd,sel=sel[1],out=out);
```
### 7. Mux8Way16
* picture
![Mux8Way16](https://nohano1l.github.io/co109a/01/jpg/55665.jpg)
* code
```
    Mux4Way16(a=a,b=b,c=c,d=d,sel=sel[0..1],out=outabcd);
    Mux4Way16(a=e,b=f,c=g,d=h,sel=sel[0..1],out=outefgh);
    Mux16(a=outabcd,b=outefgh,sel=sel[2],out=out);
```
### 8. DMux4Way
* picture
![DMux4Way](https://nohano1l.github.io/co109a/01/jpg/55666.jpg)
* code
```
    DMux(in=in,sel=sel[1],a=DMuxa,b=DMuxb);
    DMux(in=DMuxa,sel=sel[0],a=a,b=b);
    DMux(in=DMuxb,sel=sel[0],a=c,b=d);
```
### 9. DMux8Way
* picture
![DMux8Way](https://nohano1l.github.io/co109a/01/jpg/55667.jpg)
* code
```
    DMux(in=in,sel=sel[2],a=DMuxa,b=DMuxb);
    DMux4Way(in=DMuxa,sel=sel[0..1],a=a,b=b,c=c,d=d);
    DMux4Way(in=DMuxb,sel=sel[0..1],a=e,b=f,c=g,d=h);
```