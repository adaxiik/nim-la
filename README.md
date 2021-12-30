# nim-la
Small nim linear algebra lib for personal usage 

## Usage
download la.nim and copy it to your project directory

```nim
include la
let first = vec[3](1) #[1.0,1.0,1.0]#
let second:Vec[3] = [1.0,0.0,0.0] 
let third = first+second #[2.0,1.0,1.0]#

echo min(first,third) #[1.0,1.0,1.0]#

echo third.x #2.0
echo third.y #1.0
echo third.z #1.0

echo second.r #1.0
echo second.g #0.0
echo second.b #0.0

let vector = [3.0,4.0]
echo vector.length #5.0
echo vector.normalize #[0.6,0.8]#

echo [10.0,20.0,30.0]*vec[3](-1) #[-10.0,-20.0,-30.0]#
```