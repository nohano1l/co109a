## HW3
### 1. HalfAdder
* picture
![HalfAdder](https://nohano1l.github.io/co109a/02/jpg/56022.jpg)
* code
```
    Xor(a=a,b=b,out=sum);
    And(a=a,b=b,out=carry);
```
### 2. FullAdder
* picture
![FullAdder](https://nohano1l.github.io/co109a/02/jpg/56023.jpg)
* code
```
    And(a=a,b=b,out=andab);
    And(a=b,b=c,out=andbc);
    And(a=a,b=c,out=andac);
    Or(a=andab,b=andbc,out=orabbc);
    Or(a=orabbc,b=andac,out=carry);
    Xor(a=a,b=b,out=xorab);
    Xor(a=xorab,b=c,out=sum);
```
### 3. Add16
* picture
![Add16](https://nohano1l.github.io/co109a/02/jpg/56024.jpg)
* code
```
    FullAdder(a=a[0],b=b[0],c=false,carry=c0,sum=out[0]);
   // HalfAdder(a=a[0],b=b[0],carry=c0,sum=out[0]);
   FullAdder(a=a[1],b=b[1],c=c0,carry=c1,sum=out[1]);
   FullAdder(a=a[2],b=b[2],c=c1,carry=c2,sum=out[2]);
   FullAdder(a=a[3],b=b[3],c=c2,carry=c3,sum=out[3]);
   FullAdder(a=a[4],b=b[4],c=c3,carry=c4,sum=out[4]);
   FullAdder(a=a[5],b=b[5],c=c4,carry=c5,sum=out[5]);
   FullAdder(a=a[6],b=b[6],c=c5,carry=c6,sum=out[6]);
   FullAdder(a=a[7],b=b[7],c=c6,carry=c7,sum=out[7]);
   FullAdder(a=a[8],b=b[8],c=c7,carry=c8,sum=out[8]);
   FullAdder(a=a[9],b=b[9],c=c8,carry=c9,sum=out[9]);
   FullAdder(a=a[10],b=b[10],c=c9,carry=c10,sum=out[10]);
   FullAdder(a=a[11],b=b[11],c=c10,carry=c11,sum=out[11]);
   FullAdder(a=a[12],b=b[12],c=c11,carry=c12,sum=out[12]);
   FullAdder(a=a[13],b=b[13],c=c12,carry=c13,sum=out[13]);
   FullAdder(a=a[14],b=b[14],c=c13,carry=c14,sum=out[14]);
   FullAdder(a=a[15],b=b[15],c=c14,carry=c15,sum=out[15]);
```
### 4. Inc16
* picture
![Inc16](https://nohano1l.github.io/co109a/02/jpg/56025.jpg)
* code
```
    // Add16(a=in, b[0]=true, b[1..15]=false, out=out);
   
    HalfAdder(a=in[0],b=true,sum=out[0],carry=c1);
    HalfAdder(a=in[1],b=c1,sum=out[1],carry=c2);
    HalfAdder(a=in[2],b=c2,sum=out[2],carry=c3);
    HalfAdder(a=in[3],b=c3,sum=out[3],carry=c4);
    HalfAdder(a=in[4],b=c4,sum=out[4],carry=c5);
    HalfAdder(a=in[5],b=c5,sum=out[5],carry=c6);
    HalfAdder(a=in[6],b=c6,sum=out[6],carry=c7);
    HalfAdder(a=in[7],b=c7,sum=out[7],carry=c8);
    HalfAdder(a=in[8],b=c8,sum=out[8],carry=c9);
    HalfAdder(a=in[9],b=c9,sum=out[9],carry=c10);
    HalfAdder(a=in[10],b=c10,sum=out[10],carry=c11);
    HalfAdder(a=in[11],b=c11,sum=out[11],carry=c12);
    HalfAdder(a=in[12],b=c12,sum=out[12],carry=c13);
    HalfAdder(a=in[13],b=c13,sum=out[13],carry=c14);
    HalfAdder(a=in[14],b=c14,sum=out[14],carry=c15);
    HalfAdder(a=in[15],b=c15,sum=out[15]);
```