# About julia_jump_LP

This is LP problem tutorial [JuMP](https://github.com/JuliaOpt/JuMP.jl).

## Problem

> たくみ君はお母さんからおつかいを頼まれました。内容は1000円で、1個8円のチョコを20個、1個17円のスナック菓子を10個買うというものでした。残ったお金でたくみ君のチョコとスナック菓子を買って良いと言われました。ただし、お店にはチョコが150個、スナック菓子が60個しかなく、お釣りはもらえません。チョコとスナック菓子を何個ずつ買えばよいでしょう？

## Answer

```
Max 8 x + 17 y
Subject to
 x integer
 y integer
 x ≥ 20.0
 y ≥ 10.0
 x ≤ 150.0
 y ≤ 60.0
 8 x + 18 y ≤ 1000.0
Objective value: 988.0
x: 98.0
y: 12.0
```
