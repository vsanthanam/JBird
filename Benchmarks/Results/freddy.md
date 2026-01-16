## JBird vs Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2955 |      3138 |      3183 |      3219 |      3267 |      3396 |      3451 |       310 |
|                  jbird                   |      1927 |      2023 |      2051 |      2076 |      2103 |      2255 |      2290 |       477 |
|                    Δ                     |     -1028 |     -1115 |     -1132 |     -1143 |     -1164 |     -1141 |     -1161 |       167 |
|              Improvement %               |        35 |        36 |        36 |        36 |        36 |        34 |        34 |       167 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2956 |      3140 |      3185 |      3224 |      3267 |      3402 |      3460 |       310 |
|                  jbird                   |      1928 |      2026 |      2054 |      2079 |      2105 |      2247 |      2292 |       477 |
|                    Δ                     |     -1028 |     -1114 |     -1131 |     -1145 |     -1162 |     -1155 |     -1168 |       167 |
|              Improvement %               |        35 |        35 |        36 |        36 |        36 |        34 |        34 |       167 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       319 |       314 |       311 |       306 |       295 |       290 |       310 |
|                  jbird                   |       519 |       494 |       488 |       482 |       476 |       443 |       437 |       477 |
|                    Δ                     |       181 |       175 |       174 |       171 |       170 |       148 |       147 |       167 |
|              Improvement %               |        54 |        55 |        55 |        55 |        56 |        50 |        51 |       167 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       310 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       477 |
|                    Δ                     |         3 |         3 |         3 |         3 |         3 |         3 |         3 |       167 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       167 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       310 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       477 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        64 |        64 |        64 |        64 |        64 |        64 |       310 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        47 |        48 |       477 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -17 |       -16 |       167 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        25 |       167 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3040 |      3211 |      3240 |      3273 |      3322 |      3471 |      3538 |       304 |
|                  jbird                   |      1914 |      2044 |      2059 |      2090 |      2116 |      2245 |      2316 |       474 |
|                    Δ                     |     -1126 |     -1167 |     -1181 |     -1183 |     -1206 |     -1226 |     -1222 |       170 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        35 |        35 |       170 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3042 |      3213 |      3242 |      3277 |      3324 |      3480 |      3540 |       304 |
|                  jbird                   |      1920 |      2046 |      2062 |      2092 |      2120 |      2241 |      2325 |       474 |
|                    Δ                     |     -1122 |     -1167 |     -1180 |     -1185 |     -1204 |     -1239 |     -1215 |       170 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        36 |        34 |       170 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       311 |       309 |       306 |       301 |       288 |       283 |       304 |
|                  jbird                   |       522 |       489 |       486 |       479 |       473 |       446 |       432 |       474 |
|                    Δ                     |       193 |       178 |       177 |       173 |       172 |       158 |       149 |       170 |
|              Improvement %               |        59 |        57 |        57 |        57 |        57 |        55 |        53 |       170 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       304 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       474 |
|                    Δ                     |         3 |         3 |         3 |         3 |         3 |         3 |         3 |       170 |
|              Improvement %               |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       170 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       304 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       474 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       170 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       170 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       304 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       474 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -17 |       170 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        26 |       170 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       710 |       791 |       796 |       804 |       819 |       889 |       939 |      1189 |
|                  jbird                   |       449 |       505 |       510 |       515 |       523 |       564 |     18615 |      1784 |
|                    Δ                     |      -261 |      -286 |      -286 |      -289 |      -296 |      -325 |     17676 |       595 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        37 |     -1882 |       595 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       712 |       792 |       797 |       806 |       821 |       892 |       940 |      1189 |
|                  jbird                   |       450 |       506 |       511 |       517 |       525 |       566 |       624 |      1784 |
|                    Δ                     |      -262 |      -286 |      -286 |      -289 |      -296 |      -326 |      -316 |       595 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        37 |        34 |       595 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1408 |      1265 |      1257 |      1244 |      1222 |      1125 |      1065 |      1189 |
|                  jbird                   |      2227 |      1982 |      1962 |      1943 |      1912 |      1773 |        54 |      1784 |
|                    Δ                     |       819 |       717 |       705 |       699 |       690 |       648 |     -1011 |       595 |
|              Improvement %               |        58 |        57 |        56 |        56 |        56 |        58 |       -95 |       595 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1189 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1784 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       595 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       595 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1189 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1784 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       595 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       595 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1189 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1784 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       595 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       595 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       721 |       804 |       809 |       817 |       833 |       910 |      1012 |      1170 |
|                  jbird                   |       459 |       510 |       515 |       522 |       532 |       604 |       661 |      1790 |
|                    Δ                     |      -262 |      -294 |      -294 |      -295 |      -301 |      -306 |      -351 |       620 |
|              Improvement %               |        36 |        37 |        36 |        36 |        36 |        34 |        35 |       620 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       722 |       805 |       811 |       819 |       835 |       912 |      1014 |      1170 |
|                  jbird                   |       461 |       512 |       517 |       524 |       534 |       606 |       663 |      1790 |
|                    Δ                     |      -261 |      -293 |      -294 |      -295 |      -301 |      -306 |      -351 |       620 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        34 |        35 |       620 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1387 |      1245 |      1236 |      1224 |      1201 |      1100 |       988 |      1170 |
|                  jbird                   |      2177 |      1960 |      1941 |      1915 |      1881 |      1656 |      1512 |      1790 |
|                    Δ                     |       790 |       715 |       705 |       691 |       680 |       556 |       524 |       620 |
|              Improvement %               |        57 |        57 |        57 |        56 |        57 |        51 |        53 |       620 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1170 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1790 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       620 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       620 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1170 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1790 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       620 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       620 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1170 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1790 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       620 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       620 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1439 |      1583 |      1592 |      1604 |      1631 |      1737 |      1759 |       610 |
|                  jbird                   |       918 |      1008 |      1021 |      1032 |      1048 |      1119 |      1193 |       940 |
|                    Δ                     |      -521 |      -575 |      -571 |      -572 |      -583 |      -618 |      -566 |       330 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        36 |        32 |       330 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1441 |      1584 |      1594 |      1607 |      1633 |      1739 |      1768 |       610 |
|                  jbird                   |       920 |      1010 |      1023 |      1034 |      1050 |      1120 |      1191 |       940 |
|                    Δ                     |      -521 |      -574 |      -571 |      -573 |      -583 |      -619 |      -577 |       330 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        36 |        33 |       330 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       695 |       632 |       628 |       624 |       613 |       576 |       569 |       610 |
|                  jbird                   |      1090 |       992 |       979 |       969 |       954 |       894 |       838 |       940 |
|                    Δ                     |       395 |       360 |       351 |       345 |       341 |       318 |       269 |       330 |
|              Improvement %               |        57 |        57 |        56 |        55 |        56 |        55 |        47 |       330 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        34 |        34 |        34 |        34 |       610 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       940 |
|                    Δ                     |         1 |         2 |         2 |         1 |         1 |         1 |         1 |       330 |
|              Improvement %               |        -3 |        -6 |        -6 |        -3 |        -3 |        -3 |        -3 |       330 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       610 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       940 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       330 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       330 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       610 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       940 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |       330 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        25 |       330 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1442 |      1581 |      1590 |      1603 |      1629 |      1732 |      1812 |       611 |
|                  jbird                   |       934 |      1020 |      1029 |      1039 |      1056 |      1144 |      1187 |       931 |
|                    Δ                     |      -508 |      -561 |      -561 |      -564 |      -573 |      -588 |      -625 |       320 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        34 |        34 |       320 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1444 |      1583 |      1592 |      1606 |      1630 |      1734 |      1813 |       611 |
|                  jbird                   |       935 |      1022 |      1031 |      1041 |      1057 |      1146 |      1189 |       931 |
|                    Δ                     |      -509 |      -561 |      -561 |      -565 |      -573 |      -588 |      -624 |       320 |
|              Improvement %               |        35 |        35 |        35 |        35 |        35 |        34 |        34 |       320 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       693 |       633 |       629 |       624 |       614 |       578 |       552 |       611 |
|                  jbird                   |      1071 |       980 |       973 |       963 |       948 |       875 |       842 |       931 |
|                    Δ                     |       378 |       347 |       344 |       339 |       334 |       297 |       290 |       320 |
|              Improvement %               |        55 |        55 |        55 |        54 |        54 |        51 |        53 |       320 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        34 |        34 |        34 |        34 |        34 |        34 |       611 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       931 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       320 |
|              Improvement %               |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       320 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       611 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       931 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       320 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       320 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       611 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        24 |        24 |       931 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -9 |       320 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        25 |        27 |       320 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        63 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        30 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        31 |        31 |        30 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        63 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        30 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        31 |        31 |        30 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        63 |        63 |        62 |        62 |        61 |        61 |        63 |
|                  jbird                   |        98 |        95 |        94 |        93 |        92 |        90 |        90 |        93 |
|                    Δ                     |        33 |        32 |        31 |        31 |        30 |        29 |        29 |        30 |
|              Improvement %               |        51 |        51 |        49 |        50 |        48 |        48 |        48 |        30 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        46 |        46 |        46 |        46 |        46 |        63 |
|                  jbird                   |        35 |        60 |        60 |        60 |        60 |        60 |        60 |        93 |
|                    Δ                     |        -9 |        15 |        14 |        14 |        14 |        14 |        14 |        30 |
|              Improvement %               |        20 |       -33 |       -30 |       -30 |       -30 |       -30 |       -30 |        30 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        63 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        93 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       318 |       319 |       319 |       319 |       319 |       321 |       321 |        63 |
|                  jbird                   |       232 |       236 |       236 |       236 |       236 |       244 |       244 |        93 |
|                    Δ                     |       -86 |       -83 |       -83 |       -83 |       -83 |       -77 |       -77 |        30 |
|              Improvement %               |        27 |        26 |        26 |        26 |        26 |        24 |        24 |        30 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -6 |        -5 |        -5 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        35 |        29 |        29 |        28 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -6 |        -5 |        -5 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        35 |        29 |        29 |        28 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        61 |        61 |        60 |        60 |        59 |        59 |        61 |
|                  jbird                   |        93 |        91 |        90 |        89 |        88 |        83 |        83 |        89 |
|                    Δ                     |        30 |        30 |        29 |        29 |        28 |        24 |        24 |        28 |
|              Improvement %               |        48 |        49 |        48 |        48 |        47 |        41 |        41 |        28 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        46 |        46 |        46 |        46 |        46 |        46 |        61 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        89 |
|                    Δ                     |        -8 |        12 |        12 |        12 |        12 |        12 |        12 |        28 |
|              Improvement %               |        19 |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |        28 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        28 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        28 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       324 |       324 |       324 |       325 |       325 |       326 |       326 |        61 |
|                  jbird                   |       244 |       244 |       244 |       244 |       244 |       249 |       249 |        89 |
|                    Δ                     |       -80 |       -80 |       -80 |       -81 |       -81 |       -77 |       -77 |        28 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        24 |        24 |        28 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       176 |       198 |       200 |       202 |       207 |       233 |       255 |      4165 |
|                  jbird                   |       112 |       126 |       127 |       128 |       132 |       152 |       182 |      6055 |
|                    Δ                     |       -64 |       -72 |       -73 |       -74 |       -75 |       -81 |       -73 |      1890 |
|              Improvement %               |        36 |        36 |        36 |        37 |        36 |        35 |        29 |      1890 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       177 |       200 |       201 |       204 |       209 |       234 |       257 |      4165 |
|                  jbird                   |       114 |       127 |       128 |       130 |       134 |       154 |       173 |      6055 |
|                    Δ                     |       -63 |       -73 |       -73 |       -74 |       -75 |       -80 |       -84 |      1890 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        34 |        33 |      1890 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5684 |      5043 |      5007 |      4955 |      4831 |      4291 |      3922 |      4165 |
|                  jbird                   |      8889 |      7947 |      7879 |      7799 |      7579 |      6567 |      5505 |      6055 |
|                    Δ                     |      3205 |      2904 |      2872 |      2844 |      2748 |      2276 |      1583 |      1890 |
|              Improvement %               |        56 |        58 |        57 |        57 |        57 |        53 |        40 |      1890 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      4165 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      6055 |
|                    Δ                     |         1 |         0 |         0 |         0 |         0 |         0 |         0 |      1890 |
|              Improvement %               |        -3 |         0 |         0 |         0 |         0 |         0 |         0 |      1890 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4165 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6055 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1890 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1890 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3975 |      3977 |      3977 |      3977 |      3977 |      3994 |      4223 |      4165 |
|                  jbird                   |      2887 |      2888 |      2888 |      2888 |      2890 |      2912 |      3064 |      6055 |
|                    Δ                     |     -1088 |     -1089 |     -1089 |     -1089 |     -1087 |     -1082 |     -1159 |      1890 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |      1890 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       179 |       201 |       203 |       205 |       210 |       227 |       261 |      4121 |
|                  jbird                   |       116 |       129 |       130 |       131 |       134 |       150 |       185 |      5964 |
|                    Δ                     |       -63 |       -72 |       -73 |       -74 |       -76 |       -77 |       -76 |      1843 |
|              Improvement %               |        35 |        36 |        36 |        36 |        36 |        34 |        29 |      1843 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       203 |       205 |       207 |       211 |       229 |       263 |      4121 |
|                  jbird                   |       117 |       130 |       131 |       133 |       136 |       151 |       193 |      5964 |
|                    Δ                     |       -63 |       -73 |       -74 |       -74 |       -75 |       -78 |       -70 |      1843 |
|              Improvement %               |        35 |        36 |        36 |        36 |        36 |        34 |        27 |      1843 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5593 |      4971 |      4931 |      4871 |      4775 |      4403 |      3831 |      4121 |
|                  jbird                   |      8649 |      7775 |      7711 |      7619 |      7447 |      6683 |      5394 |      5964 |
|                    Δ                     |      3056 |      2804 |      2780 |      2748 |      2672 |      2280 |      1563 |      1843 |
|              Improvement %               |        55 |        56 |        56 |        56 |        56 |        52 |        41 |      1843 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      4121 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      5964 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1843 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1843 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4121 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5964 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1843 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1843 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4044 |      4045 |      4047 |      4047 |      4047 |      4061 |      4327 |      4121 |
|                  jbird                   |      2933 |      2933 |      2933 |      2935 |      2935 |      2957 |      3110 |      5964 |
|                    Δ                     |     -1111 |     -1112 |     -1114 |     -1112 |     -1112 |     -1104 |     -1217 |      1843 |
|              Improvement %               |        27 |        27 |        28 |        27 |        27 |        27 |        28 |      1843 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        83 |        95 |        96 |       100 |       103 |       115 |       149 |      7542 |
|                  jbird                   |       114 |       128 |       130 |       132 |       136 |       151 |     21862 |      5995 |
|                    Δ                     |        31 |        33 |        34 |        32 |        33 |        36 |     21713 |     -1547 |
|              Improvement %               |       -37 |       -35 |       -35 |       -32 |       -32 |       -31 |    -14572 |     -1547 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        96 |        97 |       101 |       104 |       116 |       153 |      7542 |
|                  jbird                   |       116 |       129 |       132 |       133 |       137 |       153 |       278 |      5995 |
|                    Δ                     |        32 |        33 |        35 |        32 |        33 |        37 |       125 |     -1547 |
|              Improvement %               |       -38 |       -34 |       -36 |       -32 |       -32 |       -32 |       -82 |     -1547 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         7 |      7542 |
|                  jbird                   |         9 |         8 |         8 |         8 |         7 |         7 |         0 |      5995 |
|                    Δ                     |        -3 |        -3 |        -2 |        -2 |        -3 |        -2 |        -7 |     -1547 |
|              Improvement %               |       -25 |       -27 |       -20 |       -20 |       -30 |       -22 |         0 |     -1547 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      7542 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      5995 |
|                    Δ                     |         1 |         0 |         0 |         0 |         0 |         0 |         0 |     -1547 |
|              Improvement %               |        -3 |         0 |         0 |         0 |         0 |         0 |         0 |     -1547 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        15 |        15 |        15 |        15 |      7542 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      5995 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     -1547 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |     -1547 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2777 |      2777 |      2777 |      2777 |      2777 |      2791 |      3079 |      7542 |
|                  jbird                   |      3876 |      3877 |      3877 |      3877 |      3877 |      3893 |      4347 |      5995 |
|                    Δ                     |      1099 |      1100 |      1100 |      1100 |      1100 |      1102 |      1268 |     -1547 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -40 |       -39 |       -41 |     -1547 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6984 |      7279 |      7315 |      7369 |      7455 |      7631 |      7662 |       136 |
|                  jbird                   |      5288 |      5501 |      5550 |      5607 |      5673 |      5845 |      5860 |       177 |
|                    Δ                     |     -1696 |     -1778 |     -1765 |     -1762 |     -1782 |     -1786 |     -1802 |        41 |
|              Improvement %               |        24 |        24 |        24 |        24 |        24 |        23 |        24 |        41 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6990 |      7287 |      7320 |      7373 |      7463 |      7635 |      7673 |       136 |
|                  jbird                   |      5286 |      5509 |      5554 |      5616 |      5677 |      5857 |      5862 |       177 |
|                    Δ                     |     -1704 |     -1778 |     -1766 |     -1757 |     -1786 |     -1778 |     -1811 |        41 |
|              Improvement %               |        24 |        24 |        24 |        24 |        24 |        23 |        24 |        41 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       143 |       137 |       137 |       136 |       134 |       131 |       131 |       136 |
|                  jbird                   |       189 |       182 |       180 |       178 |       176 |       171 |       171 |       177 |
|                    Δ                     |        46 |        45 |        43 |        42 |        42 |        40 |        40 |        41 |
|              Improvement %               |        32 |        33 |        31 |        31 |        31 |        31 |        31 |        41 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        40 |        40 |        40 |        40 |        40 |        40 |       136 |
|                  jbird                   |        33 |        52 |        52 |        52 |        52 |        52 |        52 |       177 |
|                    Δ                     |        -3 |        12 |        12 |        12 |        12 |        12 |        12 |        41 |
|              Improvement %               |         8 |       -30 |       -30 |       -30 |       -30 |       -30 |       -30 |        41 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       136 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       177 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        41 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        41 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       180 |       180 |       180 |       180 |       181 |       181 |       136 |
|                  jbird                   |       146 |       146 |       146 |       146 |       147 |       147 |       151 |       177 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -33 |       -34 |       -30 |        41 |
|              Improvement %               |        19 |        19 |        19 |        19 |        18 |        19 |        17 |        41 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        52 |        59 |        59 |        60 |        62 |        71 |        95 |     10600 |
|                  jbird                   |        47 |        53 |        53 |        53 |        55 |        63 |        89 |     11706 |
|                    Δ                     |        -5 |        -6 |        -6 |        -7 |        -7 |        -8 |        -6 |      1106 |
|              Improvement %               |        10 |        10 |        10 |        12 |        11 |        11 |         6 |      1106 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        60 |        61 |        61 |        64 |        73 |        97 |     10600 |
|                  jbird                   |        49 |        54 |        55 |        55 |        56 |        65 |        88 |     11706 |
|                    Δ                     |        -4 |        -6 |        -6 |        -6 |        -8 |        -8 |        -9 |      1106 |
|              Improvement %               |         8 |        10 |        10 |        10 |        12 |        11 |         9 |      1106 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        19 |        17 |        17 |        17 |        16 |        14 |        10 |     10600 |
|                  jbird                   |        21 |        19 |        19 |        19 |        18 |        16 |        11 |     11706 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         1 |      1106 |
|              Improvement %               |        11 |        12 |        12 |        12 |        12 |        14 |        10 |      1106 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10600 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11706 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1106 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1106 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10600 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11706 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1106 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1106 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1534 |      1534 |      1534 |      1535 |      1535 |      1545 |      1640 |     10600 |
|                  jbird                   |      1308 |      1309 |      1309 |      1309 |      1309 |      1326 |      1379 |     11706 |
|                    Δ                     |      -226 |      -225 |      -225 |      -226 |      -226 |      -219 |      -261 |      1106 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        14 |        16 |      1106 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        88 |        99 |       100 |       101 |       104 |       120 |       174 |      7324 |
|                  jbird                   |        87 |        97 |        98 |        99 |       102 |       117 |       143 |      7621 |
|                    Δ                     |        -1 |        -2 |        -2 |        -2 |        -2 |        -3 |       -31 |       297 |
|              Improvement %               |         1 |         2 |         2 |         2 |         2 |         2 |        18 |       297 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |       101 |       101 |       103 |       106 |       121 |       161 |      7324 |
|                  jbird                   |        88 |        99 |       100 |       101 |       104 |       119 |       147 |      7621 |
|                    Δ                     |        -2 |        -2 |        -1 |        -2 |        -2 |        -2 |       -14 |       297 |
|              Improvement %               |         2 |         2 |         1 |         2 |         2 |         2 |         9 |       297 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11331 |     10079 |     10023 |      9871 |      9615 |      8375 |      5750 |      7324 |
|                  jbird                   |     11467 |     10263 |     10207 |     10095 |      9791 |      8535 |      6991 |      7621 |
|                    Δ                     |       136 |       184 |       184 |       224 |       176 |       160 |      1241 |       297 |
|              Improvement %               |         1 |         2 |         2 |         2 |         2 |         2 |        22 |       297 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        33 |        33 |        33 |        33 |        33 |      7324 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      7621 |
|                    Δ                     |         1 |         1 |         0 |         0 |         0 |         0 |         0 |       297 |
|              Improvement %               |        -3 |        -3 |         0 |         0 |         0 |         0 |         0 |       297 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7324 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7621 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       297 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       297 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2681 |      2683 |      2683 |      2683 |      2683 |      2697 |      2860 |      7324 |
|                  jbird                   |      2673 |      2675 |      2675 |      2675 |      2675 |      2689 |      2879 |      7621 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        19 |       297 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |       297 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        69 |        77 |        78 |        80 |        83 |        95 |       129 |      8808 |
|                  jbird                   |        54 |        61 |        62 |        62 |        65 |        76 |       130 |     10593 |
|                    Δ                     |       -15 |       -16 |       -16 |       -18 |       -18 |       -19 |         1 |      1785 |
|              Improvement %               |        22 |        21 |        21 |        22 |        22 |        20 |        -1 |      1785 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        70 |        79 |        80 |        81 |        84 |        97 |       122 |      8808 |
|                  jbird                   |        56 |        63 |        63 |        64 |        66 |        78 |       132 |     10593 |
|                    Δ                     |       -14 |       -16 |       -17 |       -17 |       -18 |       -19 |        10 |      1785 |
|              Improvement %               |        20 |        20 |        21 |        21 |        21 |        20 |        -8 |      1785 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        13 |        13 |        13 |        12 |        11 |         8 |      8808 |
|                  jbird                   |        18 |        16 |        16 |        16 |        16 |        13 |         8 |     10593 |
|                    Δ                     |         3 |         3 |         3 |         3 |         4 |         2 |         0 |      1785 |
|              Improvement %               |        20 |        23 |        23 |        23 |        33 |        18 |         0 |      1785 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      8808 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10593 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1785 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1785 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8808 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10593 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1785 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      1785 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1656 |      1657 |      1659 |      1659 |      1659 |      1672 |      1764 |      8808 |
|                  jbird                   |      1612 |      1614 |      1614 |      1614 |      1614 |      1624 |      1732 |     10593 |
|                    Δ                     |       -44 |       -43 |       -45 |       -45 |       -45 |       -48 |       -32 |      1785 |
|              Improvement %               |         3 |         3 |         3 |         3 |         3 |         3 |         2 |      1785 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       103 |       117 |       120 |       122 |       127 |       141 |       156 |      6339 |
|                  jbird                   |        27 |        30 |        30 |        32 |        33 |        39 |        73 |     15165 |
|                    Δ                     |       -76 |       -87 |       -90 |       -90 |       -94 |      -102 |       -83 |      8826 |
|              Improvement %               |        74 |        74 |        75 |        74 |        74 |        72 |        53 |      8826 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       105 |       119 |       121 |       124 |       128 |       142 |       158 |      6339 |
|                  jbird                   |        28 |        32 |        32 |        34 |        34 |        41 |        65 |     15165 |
|                    Δ                     |       -77 |       -87 |       -89 |       -90 |       -94 |      -101 |       -93 |      8826 |
|              Improvement %               |        73 |        73 |        74 |        73 |        73 |        71 |        59 |      8826 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9666 |      8519 |      8351 |      8175 |      7895 |      7103 |      6390 |      6339 |
|                  jbird                   |     37500 |     33247 |     33119 |     31103 |     30495 |     25919 |     13691 |     15165 |
|                    Δ                     |     27834 |     24728 |     24768 |     22928 |     22600 |     18816 |      7301 |      8826 |
|              Improvement %               |       288 |       290 |       297 |       280 |       286 |       265 |       114 |      8826 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6339 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15165 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8826 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8826 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6339 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15165 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8826 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8826 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2079 |      2080 |      2081 |      2081 |      2081 |      2095 |      2256 |      6339 |
|                  jbird                   |       859 |       859 |       859 |       860 |       860 |       864 |       935 |     15165 |
|                    Δ                     |     -1220 |     -1221 |     -1222 |     -1221 |     -1221 |     -1231 |     -1321 |      8826 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        59 |      8826 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2052 |      2189 |      2206 |      2228 |      2255 |      2378 |      2428 |       443 |
|                  jbird                   |      1518 |      1641 |      1652 |      1670 |      1704 |      1832 |      1882 |       588 |
|                    Δ                     |      -534 |      -548 |      -554 |      -558 |      -551 |      -546 |      -546 |       145 |
|              Improvement %               |        26 |        25 |        25 |        25 |        24 |        23 |        22 |       145 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2054 |      2191 |      2208 |      2230 |      2257 |      2380 |      2415 |       443 |
|                  jbird                   |      1519 |      1644 |      1654 |      1673 |      1706 |      1836 |      1876 |       588 |
|                    Δ                     |      -535 |      -547 |      -554 |      -557 |      -551 |      -544 |      -539 |       145 |
|              Improvement %               |        26 |        25 |        25 |        25 |        24 |        23 |        22 |       145 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       487 |       457 |       453 |       449 |       444 |       421 |       412 |       443 |
|                  jbird                   |       659 |       609 |       606 |       599 |       587 |       546 |       531 |       588 |
|                    Δ                     |       172 |       152 |       153 |       150 |       143 |       125 |       119 |       145 |
|              Improvement %               |        35 |        33 |        34 |        33 |        32 |        30 |        29 |       145 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        34 |        34 |        34 |        34 |        34 |        34 |       443 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       588 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       145 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       145 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       443 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       588 |
|                    Δ                     |      -192 |      -192 |      -192 |      -192 |      -192 |      -192 |      -192 |       145 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       145 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        42 |        42 |        42 |        42 |        42 |        42 |        42 |       443 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        34 |        35 |       588 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -7 |       145 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        19 |        17 |       145 |

<p>
</details>

