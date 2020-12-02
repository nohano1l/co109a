### 1. RAM8
* picture
![RAM8](https://nohano1l.github.io/co109a/03/jpg/57909.jpg)
* code
```
    DMux8Way(in=load,sel=address,a=x0,b=x1,c=x2,d=x3,e=x4,f=x5,g=x6,h=x7);
    Register(in=in,load=x0,out=y0);
    Register(in=in,load=x1,out=y1);
    Register(in=in,load=x2,out=y2);
    Register(in=in,load=x3,out=y3);
    Register(in=in,load=x4,out=y4);
    Register(in=in,load=x5,out=y5);
    Register(in=in,load=x6,out=y6);
    Register(in=in,load=x7,out=y7);
    Mux8Way16(a=y0,b=y1,c=y2,d=y3,e=y4,f=y5,g=y6,h=y7,sel=address,out=out);
```
### 2. RAM64
* picture
![RAM64](https://nohano1l.github.io/co109a/03/jpg/57910.jpg)
* code
```
    DMux8Way(in=load,sel=address[3..5],a=x0,b=x1,c=x2,d=x3,e=x4,f=x5,g=x6,h=x7);
    RAM8(in=in,load=x0,address=address[0..2],out=y0);
    RAM8(in=in,load=x1,address=address[0..2],out=y1);
    RAM8(in=in,load=x2,address=address[0..2],out=y2);
    RAM8(in=in,load=x3,address=address[0..2],out=y3);
    RAM8(in=in,load=x4,address=address[0..2],out=y4);
    RAM8(in=in,load=x5,address=address[0..2],out=y5);
    RAM8(in=in,load=x6,address=address[0..2],out=y6);
    RAM8(in=in,load=x7,address=address[0..2],out=y7);
    Mux8Way16(a=y0,b=y1,c=y2,d=y3,e=y4,f=y5,g=y6,h=y7,sel=address[3..5],out=out);
```
### 3. RAM512
* picture
![RAM512](https://nohano1l.github.io/co109a/03/jpg/57911.jpg)
* code
```
    DMux8Way(in=load,sel=address[6..8],a=x0,b=x1,c=x2,d=x3,e=x4,f=x5,g=x6,h=x7);
    RAM64(in=in,load=x0,address=address[0..5],out=y0);
    RAM64(in=in,load=x1,address=address[0..5],out=y1);
    RAM64(in=in,load=x2,address=address[0..5],out=y2);
    RAM64(in=in,load=x3,address=address[0..5],out=y3);
    RAM64(in=in,load=x4,address=address[0..5],out=y4);
    RAM64(in=in,load=x5,address=address[0..5],out=y5);
    RAM64(in=in,load=x6,address=address[0..5],out=y6);
    RAM64(in=in,load=x7,address=address[0..5],out=y7);
    Mux8Way16(a=y0,b=y1,c=y2,d=y3,e=y4,f=y5,g=y6,h=y7,sel=address[6..8],out=out);
```
### 4. RAM4K
* picture
![RAM4K](https://nohano1l.github.io/co109a/03/jpg/57912.jpg)
* code
```
    DMux8Way(in=load,sel=address[9..11],a=x0,b=x1,c=x2,d=x3,e=x4,f=x5,g=x6,h=x7);
    RAM512(in=in,load=x0,address=address[0..8],out=y0);
    RAM512(in=in,load=x1,address=address[0..8],out=y1);
    RAM512(in=in,load=x2,address=address[0..8],out=y2);
    RAM512(in=in,load=x3,address=address[0..8],out=y3);
    RAM512(in=in,load=x4,address=address[0..8],out=y4);
    RAM512(in=in,load=x5,address=address[0..8],out=y5);
    RAM512(in=in,load=x6,address=address[0..8],out=y6);
    RAM512(in=in,load=x7,address=address[0..8],out=y7);
    Mux8Way16(a=y0,b=y1,c=y2,d=y3,e=y4,f=y5,g=y6,h=y7,sel=address[9..11],out=out);
```
### 5. RAM16K
* picture
![RAM16K](https://nohano1l.github.io/co109a/03/jpg/57913.jpg)
* code
```
    DMux4Way(in=load,sel=address[12..13],a=x0,b=x1,c=x2,d=x3);
    RAM4K(in=in,load=x0,address=address[0..11],out=y0);
    RAM4K(in=in,load=x1,address=address[0..11],out=y1);
    RAM4K(in=in,load=x2,address=address[0..11],out=y2);
    RAM4K(in=in,load=x3,address=address[0..11],out=y3);
    Mux4Way16(a=y0,b=y1,c=y2,d=y3,sel=address[12..13],out=out);
```