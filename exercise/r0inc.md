### C語言
* code
```
/*
R0 = 1
while(1)
{
    R0 = R0 + 1
}
*/

#include <stdio.h>
void main()
{
    int R0 = 1;
    LOOP:
        R0 = R0 + 1;
        print("R0 = %d\n", R0);
        goto LOOP;
}
```
### HackCPU 組合語言
* picture
![HackCPU 組合語言](https://nohano1l.github.io/co109a/exercise/1.png)
* code
```
@0
M=1
@0
M=M+1
@2
0;JMP
```