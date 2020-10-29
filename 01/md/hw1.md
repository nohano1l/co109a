## HW1
1. Not
* picture
![Not](/co109a/01/jpg/55650.jpg)
* code
```
    Nand(a=in, b=in, out=out);
```
2. And
* picture
![And](/co109a/01/jpg/55651.jpg)
* code
```
    Nand(a=a,b=b,out=anandb);
    Not(in=anandb,out=out);
```
3. Or
* picture
![Or](/co109a/01/jpg/55652.jpg)
* code
```
    Not(in=a, out=na);
    Not(in=b, out=nb);
    Nand(a=na, b=nb, out=out);
```
4. Xor
* picture
![Xor](/co109a/01/jpg/55653.jpg)
* code
```
    Or(a=a,b=b,out=c1);
    Nand(a=a,b=b,out=c2);
    And(a=c1,b=c2,out=out);
```
5. Mux
* picture
![Mux](/co109a/01/jpg/55654.jpg)
* code
```
    Not(in=sel,out=nsel);
    And(a=a,b=nsel,out=c1);
    And(a=b,b=sel,out=c2);
    Or(a=c1,b=c2,out=out);
```
6. DMux
* picture
![DMux](/co109a/01/jpg/55655.jpg)
* code
```
    Not(in=sel,out=nsel);
    And(a=nsel,b=in,out=a);
    And(a=sel,b=in,out=b);
```