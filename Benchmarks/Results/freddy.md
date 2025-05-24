# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2989 |      3262 |      3287 |      3310 |      3342 |      5689 |      8212 |       296 |
|                  jbird                   |      1904 |      2037 |      2054 |      2088 |      2105 |      2994 |      4168 |       471 |
|                    Δ                     |     -1085 |     -1225 |     -1233 |     -1222 |     -1237 |     -2695 |     -4044 |       175 |
|              Improvement %               |        36 |        38 |        38 |        37 |        37 |        47 |        49 |       175 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2991 |      3265 |      3287 |      3310 |      3342 |      4657 |      5692 |       296 |
|                  jbird                   |      1906 |      2039 |      2056 |      2090 |      2109 |      2998 |      4172 |       471 |
|                    Δ                     |     -1085 |     -1226 |     -1231 |     -1220 |     -1233 |     -1659 |     -1520 |       175 |
|              Improvement %               |        36 |        38 |        37 |        37 |        37 |        36 |        27 |       175 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       335 |       307 |       304 |       302 |       299 |       176 |       122 |       296 |
|                  jbird                   |       525 |       491 |       487 |       479 |       475 |       334 |       240 |       471 |
|                    Δ                     |       190 |       184 |       183 |       177 |       176 |       158 |       118 |       175 |
|              Improvement %               |        57 |        60 |        60 |        59 |        59 |        90 |        97 |       175 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       296 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       471 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       175 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       175 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       296 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       471 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       175 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       175 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        67 |        67 |        68 |        68 |       296 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        48 |        49 |       471 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -20 |       -19 |       175 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        29 |        28 |       175 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3039 |      3277 |      3305 |      3330 |      3383 |      3701 |      4107 |       298 |
|                  jbird                   |      1906 |      2080 |      2096 |      2122 |      2140 |      2208 |      2264 |       468 |
|                    Δ                     |     -1133 |     -1197 |     -1209 |     -1208 |     -1243 |     -1493 |     -1843 |       170 |
|              Improvement %               |        37 |        37 |        37 |        36 |        37 |        40 |        45 |       170 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3041 |      3277 |      3308 |      3334 |      3387 |      3703 |      4108 |       298 |
|                  jbird                   |      1908 |      2083 |      2099 |      2124 |      2142 |      2210 |      2270 |       468 |
|                    Δ                     |     -1133 |     -1194 |     -1209 |     -1210 |     -1245 |     -1493 |     -1838 |       170 |
|              Improvement %               |        37 |        36 |        37 |        36 |        37 |        40 |        45 |       170 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       305 |       303 |       300 |       296 |       270 |       244 |       298 |
|                  jbird                   |       525 |       481 |       477 |       472 |       467 |       453 |       442 |       468 |
|                    Δ                     |       196 |       176 |       174 |       172 |       171 |       183 |       198 |       170 |
|              Improvement %               |        60 |        58 |        57 |        57 |        58 |        68 |        81 |       170 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       298 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       468 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       170 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       170 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       298 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       468 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       170 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       170 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        68 |        68 |        68 |        69 |       298 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       468 |
|                    Δ                     |       -18 |       -18 |       -18 |       -19 |       -19 |       -18 |       -19 |       170 |
|              Improvement %               |        27 |        27 |        27 |        28 |        28 |        26 |        28 |       170 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       732 |       794 |       801 |       809 |       817 |       874 |       905 |      1188 |
|                  jbird                   |       459 |       506 |       510 |       515 |       520 |       541 |       607 |      1821 |
|                    Δ                     |      -273 |      -288 |      -291 |      -294 |      -297 |      -333 |      -298 |       633 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        38 |        33 |       633 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       733 |       795 |       803 |       810 |       819 |       876 |       906 |      1188 |
|                  jbird                   |       460 |       507 |       512 |       517 |       523 |       543 |       609 |      1821 |
|                    Δ                     |      -273 |      -288 |      -291 |      -293 |      -296 |      -333 |      -297 |       633 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        38 |        33 |       633 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1367 |      1260 |      1249 |      1237 |      1225 |      1144 |      1105 |      1188 |
|                  jbird                   |      2181 |      1978 |      1960 |      1942 |      1922 |      1850 |      1647 |      1821 |
|                    Δ                     |       814 |       718 |       711 |       705 |       697 |       706 |       542 |       633 |
|              Improvement %               |        60 |        57 |        57 |        57 |        57 |        62 |        49 |       633 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1188 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1821 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       633 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       633 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1188 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1821 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       633 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       633 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1188 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1821 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       633 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       633 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       735 |       797 |       804 |       811 |       819 |       852 |       892 |      1185 |
|                  jbird                   |       469 |       517 |       523 |       539 |       554 |       570 |       630 |      1769 |
|                    Δ                     |      -266 |      -280 |      -281 |      -272 |      -265 |      -282 |      -262 |       584 |
|              Improvement %               |        36 |        35 |        35 |        34 |        32 |        33 |        29 |       584 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       736 |       799 |       806 |       813 |       820 |       854 |       894 |      1185 |
|                  jbird                   |       470 |       518 |       525 |       540 |       556 |       571 |       615 |      1769 |
|                    Δ                     |      -266 |      -281 |      -281 |      -273 |      -264 |      -283 |      -279 |       584 |
|              Improvement %               |        36 |        35 |        35 |        34 |        32 |        33 |        31 |       584 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1361 |      1255 |      1244 |      1233 |      1222 |      1174 |      1121 |      1185 |
|                  jbird                   |      2132 |      1935 |      1913 |      1858 |      1805 |      1754 |      1588 |      1769 |
|                    Δ                     |       771 |       680 |       669 |       625 |       583 |       580 |       467 |       584 |
|              Improvement %               |        57 |        54 |        54 |        51 |        48 |        49 |        42 |       584 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1185 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1769 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       584 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       584 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1185 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1769 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       584 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       584 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1185 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1769 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       584 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       584 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1477 |      1608 |      1619 |      1632 |      1646 |      1693 |      1771 |       603 |
|                  jbird                   |       926 |      1012 |      1019 |      1026 |      1035 |      1064 |      1131 |       945 |
|                    Δ                     |      -551 |      -596 |      -600 |      -606 |      -611 |      -629 |      -640 |       342 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        37 |        36 |       342 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1479 |      1610 |      1622 |      1634 |      1648 |      1697 |      1773 |       603 |
|                  jbird                   |       927 |      1013 |      1021 |      1028 |      1037 |      1064 |      1133 |       945 |
|                    Δ                     |      -552 |      -597 |      -601 |      -606 |      -611 |      -633 |      -640 |       342 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        37 |        36 |       342 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       677 |       622 |       618 |       613 |       608 |       591 |       565 |       603 |
|                  jbird                   |      1080 |       989 |       981 |       975 |       967 |       940 |       884 |       945 |
|                    Δ                     |       403 |       367 |       363 |       362 |       359 |       349 |       319 |       342 |
|              Improvement %               |        60 |        59 |        59 |        59 |        59 |        59 |        56 |       342 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       603 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       945 |
|                    Δ                     |         0 |         1 |         1 |         0 |         0 |         0 |         0 |       342 |
|              Improvement %               |         0 |        -4 |        -4 |         0 |         0 |         0 |         0 |       342 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       603 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       945 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       342 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       342 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       603 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       945 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       342 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        29 |        26 |       342 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1493 |      1624 |      1632 |      1640 |      1653 |      1695 |      1772 |       598 |
|                  jbird                   |       932 |      1022 |      1027 |      1033 |      1041 |      1087 |      1163 |       937 |
|                    Δ                     |      -561 |      -602 |      -605 |      -607 |      -612 |      -608 |      -609 |       339 |
|              Improvement %               |        38 |        37 |        37 |        37 |        37 |        36 |        34 |       339 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1495 |      1625 |      1634 |      1644 |      1657 |      1697 |      1774 |       598 |
|                  jbird                   |       933 |      1024 |      1029 |      1035 |      1044 |      1092 |      1164 |       937 |
|                    Δ                     |      -562 |      -601 |      -605 |      -609 |      -613 |      -605 |      -610 |       339 |
|              Improvement %               |        38 |        37 |        37 |        37 |        37 |        36 |        34 |       339 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       670 |       616 |       613 |       610 |       605 |       590 |       564 |       598 |
|                  jbird                   |      1073 |       978 |       974 |       968 |       961 |       920 |       860 |       937 |
|                    Δ                     |       403 |       362 |       361 |       358 |       356 |       330 |       296 |       339 |
|              Improvement %               |        60 |        59 |        59 |        59 |        59 |        56 |        52 |       339 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       598 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       937 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       339 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       339 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       598 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       937 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       339 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       339 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        35 |       598 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       937 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |       -10 |       339 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        29 |       339 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        17 |        17 |        62 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        26 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        29 |        29 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        17 |        17 |        62 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        26 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        29 |        29 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        62 |        62 |        61 |        61 |        58 |        58 |        62 |
|                  jbird                   |        92 |        90 |        89 |        88 |        87 |        87 |        87 |        88 |
|                    Δ                     |        28 |        28 |        27 |        27 |        26 |        29 |        29 |        26 |
|              Improvement %               |        44 |        45 |        44 |        44 |        43 |        50 |        50 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        42 |        42 |        42 |        42 |        42 |        42 |        62 |
|                  jbird                   |        28 |        51 |        51 |        51 |        51 |        51 |        51 |        88 |
|                    Δ                     |        -8 |         9 |         9 |         9 |         9 |         9 |         9 |        26 |
|              Improvement %               |        22 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        26 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        62 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        26 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        26 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       333 |       333 |       334 |       334 |       334 |       343 |       343 |        62 |
|                  jbird                   |       244 |       248 |       248 |       248 |       248 |       252 |       252 |        88 |
|                    Δ                     |       -89 |       -85 |       -86 |       -86 |       -86 |       -91 |       -91 |        26 |
|              Improvement %               |        27 |        26 |        26 |        26 |        26 |        27 |        27 |        26 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -5 |        -6 |        -6 |        -6 |        -5 |        -5 |        -5 |        26 |
|              Improvement %               |        31 |        35 |        35 |        35 |        29 |        29 |        29 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -5 |        -6 |        -6 |        -5 |        -5 |        -5 |        -5 |        26 |
|              Improvement %               |        31 |        35 |        35 |        29 |        29 |        29 |        29 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        60 |        60 |        60 |        59 |        59 |        59 |        61 |
|                  jbird                   |        91 |        88 |        88 |        87 |        83 |        82 |        82 |        87 |
|                    Δ                     |        28 |        28 |        28 |        27 |        24 |        23 |        23 |        26 |
|              Improvement %               |        44 |        47 |        47 |        45 |        41 |        39 |        39 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        40 |        42 |        42 |        42 |        42 |        42 |        61 |
|                  jbird                   |        28 |        50 |        50 |        50 |        51 |        51 |        51 |        87 |
|                    Δ                     |        -8 |        10 |         8 |         8 |         9 |         9 |         9 |        26 |
|              Improvement %               |        22 |       -25 |       -19 |       -19 |       -21 |       -21 |       -21 |        26 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        26 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        26 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       339 |       339 |       340 |       340 |       340 |       344 |       344 |        61 |
|                  jbird                   |       251 |       251 |       252 |       252 |       252 |       260 |       260 |        87 |
|                    Δ                     |       -88 |       -88 |       -88 |       -88 |       -88 |       -84 |       -84 |        26 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        24 |        26 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       183 |       199 |       205 |       209 |       211 |       224 |      4016 |      4124 |
|                  jbird                   |       116 |       126 |       130 |       132 |       134 |       144 |       172 |      6042 |
|                    Δ                     |       -67 |       -73 |       -75 |       -77 |       -77 |       -80 |     -3844 |      1918 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        36 |        96 |      1918 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       200 |       207 |       210 |       213 |       225 |       280 |      4124 |
|                  jbird                   |       117 |       128 |       131 |       133 |       135 |       146 |       165 |      6042 |
|                    Δ                     |       -67 |       -72 |       -76 |       -77 |       -78 |       -79 |      -115 |      1918 |
|              Improvement %               |        36 |        36 |        37 |        37 |        37 |        35 |        41 |      1918 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5462 |      5035 |      4879 |      4791 |      4735 |      4475 |       249 |      4124 |
|                  jbird                   |      8618 |      7919 |      7699 |      7603 |      7487 |      6935 |      5821 |      6042 |
|                    Δ                     |      3156 |      2884 |      2820 |      2812 |      2752 |      2460 |      5572 |      1918 |
|              Improvement %               |        58 |        57 |        58 |        59 |        58 |        55 |      2238 |      1918 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4124 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6042 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1918 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1918 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4124 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6042 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1918 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1918 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4160 |      4162 |      4162 |      4162 |      4164 |      4182 |      4433 |      4124 |
|                  jbird                   |      2981 |      2982 |      2982 |      2984 |      2984 |      3056 |      3152 |      6042 |
|                    Δ                     |     -1179 |     -1180 |     -1180 |     -1178 |     -1180 |     -1126 |     -1281 |      1918 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        29 |      1918 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       201 |       208 |       212 |       219 |       234 |       263 |      4058 |
|                  jbird                   |       116 |       127 |       131 |       132 |       135 |       143 |       194 |      6010 |
|                    Δ                     |       -70 |       -74 |       -77 |       -80 |       -84 |       -91 |       -69 |      1952 |
|              Improvement %               |        38 |        37 |        37 |        38 |        38 |        39 |        26 |      1952 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       188 |       203 |       210 |       214 |       221 |       236 |       266 |      4058 |
|                  jbird                   |       118 |       129 |       133 |       134 |       136 |       146 |       201 |      6010 |
|                    Δ                     |       -70 |       -74 |       -77 |       -80 |       -85 |       -90 |       -65 |      1952 |
|              Improvement %               |        37 |        36 |        37 |        37 |        38 |        38 |        24 |      1952 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5368 |      4967 |      4803 |      4715 |      4571 |      4279 |      3796 |      4058 |
|                  jbird                   |      8605 |      7863 |      7631 |      7567 |      7439 |      6971 |      5162 |      6010 |
|                    Δ                     |      3237 |      2896 |      2828 |      2852 |      2868 |      2692 |      1366 |      1952 |
|              Improvement %               |        60 |        58 |        59 |        60 |        63 |        63 |        36 |      1952 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4058 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6010 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      1952 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      1952 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4058 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6010 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1952 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1952 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4224 |      4227 |      4227 |      4227 |      4227 |      4293 |      4361 |      4058 |
|                  jbird                   |      3020 |      3021 |      3021 |      3023 |      3023 |      3095 |      3191 |      6010 |
|                    Δ                     |     -1204 |     -1206 |     -1206 |     -1204 |     -1204 |     -1198 |     -1170 |      1952 |
|              Improvement %               |        29 |        29 |        29 |        28 |        28 |        28 |        27 |      1952 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        55 |        62 |        64 |        65 |        67 |        75 |       102 |     10188 |
|                  jbird                   |        56 |        58 |        63 |        63 |        64 |        72 |        95 |     10765 |
|                    Δ                     |         1 |        -4 |        -1 |        -2 |        -3 |        -3 |        -7 |       577 |
|              Improvement %               |        -2 |         6 |         2 |         3 |         4 |         4 |         7 |       577 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        64 |        65 |        66 |        68 |        77 |        96 |     10188 |
|                  jbird                   |        57 |        59 |        65 |        65 |        65 |        73 |        89 |     10765 |
|                    Δ                     |         1 |        -5 |         0 |        -1 |        -3 |        -4 |        -7 |       577 |
|              Improvement %               |        -2 |         8 |         0 |         2 |         4 |         5 |         7 |       577 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        16 |        16 |        15 |        15 |        13 |        10 |     10188 |
|                  jbird                   |        18 |        17 |        16 |        16 |        16 |        14 |        11 |     10765 |
|                    Δ                     |         0 |         1 |         0 |         1 |         1 |         1 |         1 |       577 |
|              Improvement %               |         0 |         6 |         0 |         7 |         7 |         8 |        10 |       577 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10188 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10765 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       577 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       577 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10188 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10765 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |       577 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       577 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1623 |      1624 |      1624 |      1624 |      1624 |      1657 |      1726 |     10188 |
|                  jbird                   |      1513 |      1513 |      1513 |      1513 |      1513 |      1542 |      1616 |     10765 |
|                    Δ                     |      -110 |      -111 |      -111 |      -111 |      -111 |      -115 |      -110 |       577 |
|              Improvement %               |         7 |         7 |         7 |         7 |         7 |         7 |         6 |       577 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        98 |       101 |       102 |       103 |       112 |       145 |      7402 |
|                  jbird                   |        87 |        96 |        99 |       100 |       101 |       110 |       134 |      7744 |
|                    Δ                     |        -3 |        -2 |        -2 |        -2 |        -2 |        -2 |       -11 |       342 |
|              Improvement %               |         3 |         2 |         2 |         2 |         2 |         2 |         8 |       342 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        92 |       100 |       102 |       104 |       105 |       115 |       149 |      7402 |
|                  jbird                   |        89 |        98 |       100 |       101 |       102 |       112 |       137 |      7744 |
|                    Δ                     |        -3 |        -2 |        -2 |        -3 |        -3 |        -3 |       -12 |       342 |
|              Improvement %               |         3 |         2 |         2 |         3 |         3 |         3 |         8 |       342 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11096 |     10191 |      9903 |      9799 |      9679 |      8903 |      6908 |      7402 |
|                  jbird                   |     11434 |     10399 |     10151 |     10023 |      9935 |      9087 |      7472 |      7744 |
|                    Δ                     |       338 |       208 |       248 |       224 |       256 |       184 |       564 |       342 |
|              Improvement %               |         3 |         2 |         3 |         2 |         3 |         2 |         8 |       342 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7402 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7744 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       342 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       342 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7402 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7744 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       342 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       342 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2661 |      2662 |      2662 |      2662 |      2664 |      2683 |      2846 |      7402 |
|                  jbird                   |      2593 |      2595 |      2595 |      2595 |      2595 |      2609 |      2824 |      7744 |
|                    Δ                     |       -68 |       -67 |       -67 |       -67 |       -69 |       -74 |       -22 |       342 |
|              Improvement %               |         3 |         3 |         3 |         3 |         3 |         3 |         1 |       342 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        89 |        95 |        96 |        98 |       107 |       123 |      7866 |
|                  jbird                   |        56 |        62 |        64 |        64 |        65 |        73 |       138 |     10581 |
|                    Δ                     |       -29 |       -27 |       -31 |       -32 |       -33 |       -34 |        15 |      2715 |
|              Improvement %               |        34 |        30 |        33 |        33 |        34 |        32 |       -12 |      2715 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        86 |        91 |        97 |        98 |        99 |       109 |       129 |      7866 |
|                  jbird                   |        58 |        64 |        65 |        66 |        66 |        76 |       141 |     10581 |
|                    Δ                     |       -28 |       -27 |       -32 |       -32 |       -33 |       -33 |        12 |      2715 |
|              Improvement %               |        33 |        30 |        33 |        33 |        33 |        30 |        -9 |      2715 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        10 |        10 |         9 |         8 |      7866 |
|                  jbird                   |        18 |        16 |        16 |        16 |        15 |        14 |         7 |     10581 |
|                    Δ                     |         6 |         5 |         5 |         6 |         5 |         5 |        -1 |      2715 |
|              Improvement %               |        50 |        45 |        45 |        60 |        50 |        56 |       -12 |      2715 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7866 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10581 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2715 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2715 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7866 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10581 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2715 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2715 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1802 |      1803 |      1803 |      1803 |      1803 |      1812 |      1953 |      7866 |
|                  jbird                   |      1587 |      1587 |      1588 |      1589 |      1589 |      1595 |      1722 |     10581 |
|                    Δ                     |      -215 |      -216 |      -215 |      -214 |      -214 |      -217 |      -231 |      2715 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      2715 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       102 |       113 |       119 |       121 |       123 |       132 |       149 |      6505 |
|                  jbird                   |        28 |        31 |        31 |        31 |        31 |        37 |        76 |     15397 |
|                    Δ                     |       -74 |       -82 |       -88 |       -90 |       -92 |       -95 |       -73 |      8892 |
|              Improvement %               |        73 |        73 |        74 |        74 |        75 |        72 |        49 |      8892 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       104 |       115 |       120 |       123 |       125 |       134 |       151 |      6505 |
|                  jbird                   |        29 |        32 |        33 |        33 |        33 |        39 |        78 |     15397 |
|                    Δ                     |       -75 |       -83 |       -87 |       -90 |       -92 |       -95 |       -73 |      8892 |
|              Improvement %               |        72 |        72 |        72 |        73 |        74 |        71 |        48 |      8892 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9760 |      8847 |      8415 |      8247 |      8119 |      7555 |      6695 |      6505 |
|                  jbird                   |     36308 |     32447 |     32271 |     32143 |     32015 |     27247 |     13136 |     15397 |
|                    Δ                     |     26548 |     23600 |     23856 |     23896 |     23896 |     19692 |      6441 |      8892 |
|              Improvement %               |       272 |       267 |       283 |       290 |       294 |       261 |        96 |      8892 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6505 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15397 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      8892 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      8892 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6505 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15397 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8892 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8892 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2103 |      2105 |      2105 |      2105 |      2105 |      2120 |      2274 |      6505 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       945 |     15397 |
|                    Δ                     |     -1226 |     -1227 |     -1227 |     -1227 |     -1227 |     -1237 |     -1329 |      8892 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        58 |      8892 |

<p>
</details>

