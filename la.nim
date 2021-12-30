import math
#https://forum.nim-lang.org/t/914
type Vec*[N: static[int]] = array[N, float]

proc vec[N: static[int]](val: float): Vec[N] =
  for i in 0..<N: 
    result[i] = val


template x*[N](v: Vec[N]): float = v[0]
template y*[N](v: Vec[N]): float = v[1]
template z*[N](v: Vec[N]): float = v[2]
template w*[N](v: Vec[N]): float = v[3]

template u*[N](v: Vec[N]): float = v[0]
template v*[N](v: Vec[N]): float = v[1]

template r*[N](v: Vec[N]): float = v[0]
template g*[N](v: Vec[N]): float = v[1]
template b*[N](v: Vec[N]): float = v[2]
#operator overloading, bleh..
proc `*`[N: static[int]](a,b:Vec[N]):Vec[N] =
    for i in 0..<N:
        result[i] = a[i]*b[i]
proc `/`[N: static[int]](a,b:Vec[N]):Vec[N] =
    for i in 0..<N:
        result[i] = a[i]/b[i]
proc `-`[N: static[int]](a,b:Vec[N]):Vec[N] =
    for i in 0..<N:
        result[i] = a[i]-b[i]
proc `+`[N: static[int]](a,b:Vec[N]):Vec[N] =
    for i in 0..<N:
        result[i] = a[i]+b[i]


proc length[N: static[int]](a: Vec[N]): float =
    for i in 0..<N:
        result += a[i] * a[i]
    result = sqrt(result)

proc normalize[N: static[int]](a: Vec[N]): Vec[N] =   
    return a/vec[N](a.length)

proc dot[N: static[int]](a,b: Vec[N]): float =
    let temp = a*b
    for x in temp:
        result += x

proc abs[N: static[int]](a:Vec[N]):Vec[N] =
    for i in 0..<N:
        result[i] = abs(a[i])
#https://www.mathsisfun.com/algebra/vectors-cross-product.html 
proc cross(a,b: Vec[3]): Vec[3]=
    return [a.y*b.z-a.z*b.y, a.z*b.x-a.x*b.z, a.x*b.y-a.y*b.x]

proc max[N: static[int]](a, b: Vec[N]): Vec[N] =
  for i in 0..<N:
    result[i] = max(a[i], b[i])

proc min[N: static[int]](a, b: Vec[N]): Vec[N] =
  for i in 0..<N:
    result[i] = min(a[i], b[i])