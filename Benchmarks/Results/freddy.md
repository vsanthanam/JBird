
## JBird vs Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2834 |      3056 |      3068 |      3084 |      3105 |      3168 |      3204 |       322 |
|                  jbird                   |      1773 |      1939 |      1955 |      1975 |      2001 |      2427 |      2791 |       498 |
|                    Δ                     |     -1061 |     -1117 |     -1113 |     -1109 |     -1104 |      -741 |      -413 |       176 |
|              Improvement %               |        37 |        37 |        36 |        36 |        36 |        23 |        13 |       176 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2837 |      3058 |      3070 |      3088 |      3109 |      3170 |      3209 |       322 |
|                  jbird                   |      1775 |      1942 |      1958 |      1978 |      2006 |      2437 |      2794 |       498 |
|                    Δ                     |     -1062 |     -1116 |     -1112 |     -1110 |     -1103 |      -733 |      -415 |       176 |
|              Improvement %               |        37 |        36 |        36 |        36 |        35 |        23 |        13 |       176 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       353 |       327 |       326 |       324 |       322 |       316 |       312 |       322 |
|                  jbird                   |       564 |       516 |       512 |       506 |       500 |       412 |       358 |       498 |
|                    Δ                     |       211 |       189 |       186 |       182 |       178 |        96 |        46 |       176 |
|              Improvement %               |        60 |        58 |        57 |        56 |        55 |        30 |        15 |       176 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        35 |        35 |        35 |        36 |        36 |        36 |       322 |
|                  jbird                   |        35 |        37 |        37 |        38 |        38 |        38 |        38 |       498 |
|                    Δ                     |         2 |         2 |         2 |         3 |         2 |         2 |         2 |       176 |
|              Improvement %               |        -6 |        -6 |        -6 |        -9 |        -6 |        -6 |        -6 |       176 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       322 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       176 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       176 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        63 |        63 |        63 |        63 |        63 |        64 |       322 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       498 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       176 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       176 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2869 |      3092 |      3109 |      3121 |      3142 |      3185 |      3208 |       318 |
|                  jbird                   |      1853 |      1981 |      1992 |      2009 |      2033 |      2130 |      2177 |       491 |
|                    Δ                     |     -1016 |     -1111 |     -1117 |     -1112 |     -1109 |     -1055 |     -1031 |       173 |
|              Improvement %               |        35 |        36 |        36 |        36 |        35 |        33 |        32 |       173 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2870 |      3095 |      3111 |      3125 |      3144 |      3187 |      3214 |       318 |
|                  jbird                   |      1855 |      1985 |      1996 |      2011 |      2035 |      2130 |      2179 |       491 |
|                    Δ                     |     -1015 |     -1110 |     -1115 |     -1114 |     -1109 |     -1057 |     -1035 |       173 |
|              Improvement %               |        35 |        36 |        36 |        36 |        35 |        33 |        32 |       173 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       349 |       323 |       322 |       320 |       318 |       314 |       312 |       318 |
|                  jbird                   |       540 |       505 |       502 |       498 |       492 |       470 |       459 |       491 |
|                    Δ                     |       191 |       182 |       180 |       178 |       174 |       156 |       147 |       173 |
|              Improvement %               |        55 |        56 |        56 |        56 |        55 |        50 |        47 |       173 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       318 |
|                  jbird                   |        35 |        38 |        38 |        38 |        38 |        38 |        38 |       491 |
|                    Δ                     |         2 |         3 |         3 |         3 |         3 |         3 |         3 |       173 |
|              Improvement %               |        -6 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       173 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       318 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       491 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       173 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       173 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        64 |        64 |        64 |        64 |        65 |        65 |       318 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       491 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       173 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        28 |        26 |       173 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       697 |       766 |       771 |       777 |       785 |       852 |       888 |      1228 |
|                  jbird                   |       436 |       481 |       484 |       488 |       495 |       529 |       564 |      1908 |
|                    Δ                     |      -261 |      -285 |      -287 |      -289 |      -290 |      -323 |      -324 |       680 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        38 |        36 |       680 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       699 |       768 |       773 |       780 |       788 |       854 |       890 |      1228 |
|                  jbird                   |       437 |       483 |       486 |       490 |       497 |       531 |       566 |      1908 |
|                    Δ                     |      -262 |      -285 |      -287 |      -290 |      -291 |      -323 |      -324 |       680 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        38 |        36 |       680 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1436 |      1306 |      1297 |      1287 |      1273 |      1174 |      1126 |      1228 |
|                  jbird                   |      2294 |      2079 |      2065 |      2049 |      2023 |      1889 |      1772 |      1908 |
|                    Δ                     |       858 |       773 |       768 |       762 |       750 |       715 |       646 |       680 |
|              Improvement %               |        60 |        59 |        59 |        59 |        59 |        61 |        57 |       680 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1228 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1908 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1228 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1908 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       680 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       680 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1228 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |      1908 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -4 |       680 |
|              Improvement %               |        31 |        31 |        31 |        31 |        31 |        25 |        25 |       680 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       699 |       768 |       773 |       779 |       786 |       815 |       893 |      1227 |
|                  jbird                   |       444 |       491 |       495 |       499 |       505 |       539 |       584 |      1870 |
|                    Δ                     |      -255 |      -277 |      -278 |      -280 |      -281 |      -276 |      -309 |       643 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        34 |        35 |       643 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       701 |       770 |       775 |       781 |       788 |       814 |       894 |      1227 |
|                  jbird                   |       445 |       493 |       496 |       501 |       508 |       540 |       588 |      1870 |
|                    Δ                     |      -256 |      -277 |      -279 |      -280 |      -280 |      -274 |      -306 |       643 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        34 |        34 |       643 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1430 |      1302 |      1294 |      1284 |      1273 |      1228 |      1120 |      1227 |
|                  jbird                   |      2253 |      2038 |      2022 |      2003 |      1980 |      1858 |      1711 |      1870 |
|                    Δ                     |       823 |       736 |       728 |       719 |       707 |       630 |       591 |       643 |
|              Improvement %               |        58 |        57 |        56 |        56 |        56 |        51 |        53 |       643 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1227 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1870 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       643 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       643 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1227 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1870 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       643 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       643 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1227 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1870 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |       643 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        29 |       643 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1388 |      1525 |      1533 |      1541 |      1553 |      1598 |      1613 |       635 |
|                  jbird                   |       883 |       969 |       975 |       982 |       992 |      1037 |      1078 |       984 |
|                    Δ                     |      -505 |      -556 |      -558 |      -559 |      -561 |      -561 |      -535 |       349 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        33 |       349 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1390 |      1527 |      1535 |      1543 |      1555 |      1601 |      1617 |       635 |
|                  jbird                   |       885 |       971 |       977 |       985 |       994 |      1038 |      1080 |       984 |
|                    Δ                     |      -505 |      -556 |      -558 |      -558 |      -561 |      -563 |      -537 |       349 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        33 |       349 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       720 |       656 |       653 |       649 |       644 |       626 |       620 |       635 |
|                  jbird                   |      1132 |      1032 |      1026 |      1018 |      1008 |       965 |       928 |       984 |
|                    Δ                     |       412 |       376 |       373 |       369 |       364 |       339 |       308 |       349 |
|              Improvement %               |        57 |        57 |        57 |        57 |        57 |        54 |        50 |       349 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        34 |        34 |        34 |        34 |        34 |       635 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       984 |
|                    Δ                     |         1 |         2 |         1 |         1 |         1 |         1 |         1 |       349 |
|              Improvement %               |        -3 |        -6 |        -3 |        -3 |        -3 |        -3 |        -3 |       349 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       635 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       984 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       635 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       984 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |       349 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        25 |       349 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1418 |      1545 |      1558 |      1569 |      1581 |      1621 |      1674 |       625 |
|                  jbird                   |       897 |       980 |       989 |       996 |      1007 |      1052 |      1121 |       972 |
|                    Δ                     |      -521 |      -565 |      -569 |      -573 |      -574 |      -569 |      -553 |       347 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        35 |        33 |       347 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1420 |      1547 |      1560 |      1571 |      1584 |      1625 |      1661 |       625 |
|                  jbird                   |       899 |       982 |       991 |       999 |      1008 |      1055 |      1112 |       972 |
|                    Δ                     |      -521 |      -565 |      -569 |      -572 |      -576 |      -570 |      -549 |       347 |
|              Improvement %               |        37 |        37 |        36 |        36 |        36 |        35 |        33 |       347 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       705 |       647 |       642 |       638 |       633 |       617 |       597 |       625 |
|                  jbird                   |      1115 |      1021 |      1012 |      1004 |       993 |       952 |       892 |       972 |
|                    Δ                     |       410 |       374 |       370 |       366 |       360 |       335 |       295 |       347 |
|              Improvement %               |        58 |        58 |        58 |        57 |        57 |        54 |        49 |       347 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        34 |        34 |        34 |        34 |       625 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       972 |
|                    Δ                     |         1 |         2 |         2 |         1 |         1 |         1 |         1 |       347 |
|              Improvement %               |        -3 |        -6 |        -6 |        -3 |        -3 |        -3 |        -3 |       347 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       625 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       972 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       347 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       625 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       972 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |       347 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        25 |       347 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        16 |        16 |        16 |        17 |        17 |        64 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -5 |        -4 |        -5 |        -5 |        -5 |        -6 |        -6 |        30 |
|              Improvement %               |        33 |        27 |        31 |        31 |        31 |        35 |        35 |        30 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        16 |        16 |        16 |        17 |        17 |        64 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -5 |        -4 |        -5 |        -5 |        -5 |        -6 |        -6 |        30 |
|              Improvement %               |        33 |        27 |        31 |        31 |        31 |        35 |        35 |        30 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        65 |        64 |        64 |        63 |        60 |        60 |        64 |
|                  jbird                   |       100 |        95 |        95 |        94 |        94 |        93 |        93 |        94 |
|                    Δ                     |        33 |        30 |        31 |        30 |        31 |        33 |        33 |        30 |
|              Improvement %               |        49 |        46 |        48 |        47 |        49 |        55 |        55 |        30 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        49 |        49 |        49 |        49 |        49 |        49 |        64 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        94 |
|                    Δ                     |        -9 |         9 |         9 |         9 |         9 |         9 |         9 |        30 |
|              Improvement %               |        20 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |        30 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        94 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       317 |       317 |       317 |       317 |       318 |       319 |       319 |        64 |
|                  jbird                   |       235 |       239 |       239 |       239 |       240 |       244 |       244 |        94 |
|                    Δ                     |       -82 |       -78 |       -78 |       -78 |       -78 |       -75 |       -75 |        30 |
|              Improvement %               |        26 |        25 |        25 |        25 |        25 |        24 |        24 |        30 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        29 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        31 |        31 |        29 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        29 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        31 |        31 |        29 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        64 |        64 |        63 |        63 |        62 |        62 |        64 |
|                  jbird                   |        98 |        94 |        94 |        93 |        92 |        90 |        90 |        93 |
|                    Δ                     |        32 |        30 |        30 |        30 |        29 |        28 |        28 |        29 |
|              Improvement %               |        48 |        47 |        47 |        48 |        46 |        45 |        45 |        29 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        49 |        49 |        49 |        49 |        49 |        49 |        64 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        93 |
|                    Δ                     |        -8 |         9 |         9 |         9 |         9 |         9 |         9 |        29 |
|              Improvement %               |        19 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |        29 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        93 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        29 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        29 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       322 |       323 |       323 |       323 |       323 |       325 |       325 |        64 |
|                  jbird                   |       238 |       243 |       243 |       243 |       243 |       248 |       248 |        93 |
|                    Δ                     |       -84 |       -80 |       -80 |       -80 |       -80 |       -77 |       -77 |        29 |
|              Improvement %               |        26 |        25 |        25 |        25 |        25 |        24 |        24 |        29 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       173 |       190 |       194 |       196 |       199 |       214 |       292 |      4314 |
|                  jbird                   |       110 |       121 |       123 |       124 |       126 |       138 |       177 |      6264 |
|                    Δ                     |       -63 |       -69 |       -71 |       -72 |       -73 |       -76 |      -115 |      1950 |
|              Improvement %               |        36 |        36 |        37 |        37 |        37 |        36 |        39 |      1950 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       174 |       191 |       196 |       198 |       200 |       216 |       294 |      4314 |
|                  jbird                   |       111 |       122 |       125 |       126 |       128 |       141 |       181 |      6264 |
|                    Δ                     |       -63 |       -69 |       -71 |       -72 |       -72 |       -75 |      -113 |      1950 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        38 |      1950 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5786 |      5271 |      5163 |      5111 |      5039 |      4671 |      3419 |      4314 |
|                  jbird                   |      9129 |      8295 |      8127 |      8071 |      7939 |      7227 |      5646 |      6264 |
|                    Δ                     |      3343 |      3024 |      2964 |      2960 |      2900 |      2556 |      2227 |      1950 |
|              Improvement %               |        58 |        57 |        57 |        58 |        58 |        55 |        65 |      1950 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      4314 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6264 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1950 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1950 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4314 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6264 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1950 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1950 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3958 |      3959 |      3961 |      3961 |      3961 |      3977 |      4169 |      4314 |
|                  jbird                   |      2863 |      2865 |      2865 |      2865 |      2865 |      2888 |      3049 |      6264 |
|                    Δ                     |     -1095 |     -1094 |     -1096 |     -1096 |     -1096 |     -1089 |     -1120 |      1950 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        27 |      1950 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       177 |       194 |       198 |       201 |       204 |       219 |       245 |      4226 |
|                  jbird                   |       111 |       122 |       125 |       126 |       127 |       139 |       169 |      6210 |
|                    Δ                     |       -66 |       -72 |       -73 |       -75 |       -77 |       -80 |       -76 |      1984 |
|              Improvement %               |        37 |        37 |        37 |        37 |        38 |        37 |        31 |      1984 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       196 |       200 |       203 |       206 |       221 |       246 |      4226 |
|                  jbird                   |       113 |       124 |       126 |       128 |       129 |       141 |       172 |      6210 |
|                    Δ                     |       -65 |       -72 |       -74 |       -75 |       -77 |       -80 |       -74 |      1984 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        36 |        30 |      1984 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5662 |      5151 |      5043 |      4979 |      4911 |      4567 |      4089 |      4226 |
|                  jbird                   |      8985 |      8199 |      8027 |      7939 |      7851 |      7195 |      5923 |      6210 |
|                    Δ                     |      3323 |      3048 |      2984 |      2960 |      2940 |      2628 |      1834 |      1984 |
|              Improvement %               |        59 |        59 |        59 |        59 |        60 |        58 |        45 |      1984 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      4226 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6210 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1984 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1984 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4226 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6210 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1984 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1984 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4025 |      4026 |      4028 |      4028 |      4028 |      4045 |      4236 |      4226 |
|                  jbird                   |      2910 |      2910 |      2910 |      2912 |      2912 |      2933 |      3050 |      6210 |
|                    Δ                     |     -1115 |     -1116 |     -1118 |     -1116 |     -1116 |     -1112 |     -1186 |      1984 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        28 |      1984 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        87 |        98 |       101 |       107 |       111 |       120 |       156 |      7255 |
|                  jbird                   |       114 |       128 |       130 |       131 |       133 |       144 |       197 |      6196 |
|                    Δ                     |        27 |        30 |        29 |        24 |        22 |        24 |        41 |     -1059 |
|              Improvement %               |       -31 |       -31 |       -29 |       -22 |       -20 |       -20 |       -26 |     -1059 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        88 |       100 |       103 |       109 |       113 |       122 |       160 |      7255 |
|                  jbird                   |       116 |       129 |       131 |       132 |       135 |       146 |       201 |      6196 |
|                    Δ                     |        28 |        29 |        28 |        23 |        22 |        24 |        41 |     -1059 |
|              Improvement %               |       -32 |       -29 |       -27 |       -21 |       -19 |       -20 |       -26 |     -1059 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11538 |     10159 |      9871 |      9351 |      8975 |      8351 |      6403 |      7255 |
|                  jbird                   |      8762 |      7839 |      7715 |      7663 |      7527 |      6927 |      5070 |      6196 |
|                    Δ                     |     -2776 |     -2320 |     -2156 |     -1688 |     -1448 |     -1424 |     -1333 |     -1059 |
|              Improvement %               |       -24 |       -23 |       -22 |       -18 |       -16 |       -17 |       -21 |     -1059 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      7255 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      6196 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1059 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1059 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        15 |        15 |        15 |        15 |      7255 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      6196 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     -1059 |
|              Improvement %               |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |       -87 |     -1059 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2719 |      2720 |      2722 |      2722 |      2722 |      2736 |      3075 |      7255 |
|                  jbird                   |      3804 |      3805 |      3805 |      3805 |      3805 |      3822 |      4292 |      6196 |
|                    Δ                     |      1085 |      1085 |      1083 |      1083 |      1083 |      1086 |      1217 |     -1059 |
|              Improvement %               |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |       -40 |     -1059 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6796 |      7164 |      7217 |      7258 |      7295 |      7344 |      7380 |       139 |
|                  jbird                   |      5126 |      5313 |      5341 |      5374 |      5407 |      5460 |      5496 |       185 |
|                    Δ                     |     -1670 |     -1851 |     -1876 |     -1884 |     -1888 |     -1884 |     -1884 |        46 |
|              Improvement %               |        25 |        26 |        26 |        26 |        26 |        26 |        26 |        46 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      6799 |      7168 |      7221 |      7262 |      7299 |      7352 |      7387 |       139 |
|                  jbird                   |      5119 |      5317 |      5345 |      5378 |      5411 |      5472 |      5498 |       185 |
|                    Δ                     |     -1680 |     -1851 |     -1876 |     -1884 |     -1888 |     -1880 |     -1889 |        46 |
|              Improvement %               |        25 |        26 |        26 |        26 |        26 |        26 |        26 |        46 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       147 |       140 |       139 |       138 |       137 |       136 |       136 |       139 |
|                  jbird                   |       195 |       188 |       187 |       186 |       185 |       183 |       182 |       185 |
|                    Δ                     |        48 |        48 |        48 |        48 |        48 |        47 |        46 |        46 |
|              Improvement %               |        33 |        34 |        35 |        35 |        35 |        35 |        34 |        46 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        39 |        39 |        39 |        39 |        39 |        39 |       139 |
|                  jbird                   |        33 |        51 |        51 |        51 |        51 |        51 |        51 |       185 |
|                    Δ                     |        -3 |        12 |        12 |        12 |        12 |        12 |        12 |        46 |
|              Improvement %               |         8 |       -31 |       -31 |       -31 |       -31 |       -31 |       -31 |        46 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       139 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       185 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        46 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        46 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       179 |       179 |       179 |       179 |       179 |       180 |       180 |       139 |
|                  jbird                   |       146 |       146 |       146 |       147 |       147 |       147 |       151 |       185 |
|                    Δ                     |       -33 |       -33 |       -33 |       -32 |       -32 |       -33 |       -29 |        46 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        16 |        46 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        51 |        58 |        59 |        59 |        60 |        69 |        85 |     10718 |
|                  jbird                   |        47 |        50 |        53 |        53 |        54 |        62 |        77 |     11885 |
|                    Δ                     |        -4 |        -8 |        -6 |        -6 |        -6 |        -7 |        -8 |      1167 |
|              Improvement %               |         8 |        14 |        10 |        10 |        10 |        10 |         9 |      1167 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        52 |        60 |        61 |        61 |        62 |        71 |        85 |     10718 |
|                  jbird                   |        48 |        52 |        54 |        55 |        55 |        64 |        76 |     11885 |
|                    Δ                     |        -4 |        -8 |        -7 |        -6 |        -7 |        -7 |        -9 |      1167 |
|              Improvement %               |         8 |        13 |        11 |        10 |        11 |        10 |        11 |      1167 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        20 |        17 |        17 |        17 |        17 |        14 |        12 |     10718 |
|                  jbird                   |        21 |        20 |        19 |        19 |        19 |        16 |        13 |     11885 |
|                    Δ                     |         1 |         3 |         2 |         2 |         2 |         2 |         1 |      1167 |
|              Improvement %               |         5 |        18 |        12 |        12 |        12 |        14 |         8 |      1167 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10718 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11885 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1167 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10718 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11885 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1167 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1167 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1528 |      1529 |      1529 |      1529 |      1529 |      1539 |      1598 |     10718 |
|                  jbird                   |      1303 |      1304 |      1304 |      1304 |      1304 |      1321 |      1373 |     11885 |
|                    Δ                     |      -225 |      -225 |      -225 |      -225 |      -225 |      -218 |      -225 |      1167 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        14 |        14 |      1167 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        86 |        97 |        98 |        98 |       100 |       112 |       145 |      7463 |
|                  jbird                   |        88 |        98 |        99 |        99 |       101 |       111 |       150 |      7687 |
|                    Δ                     |         2 |         1 |         1 |         1 |         1 |        -1 |         5 |       224 |
|              Improvement %               |        -2 |        -1 |        -1 |        -1 |        -1 |         1 |        -3 |       224 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        88 |        99 |        99 |       100 |       102 |       114 |       149 |      7463 |
|                  jbird                   |        89 |        99 |       100 |       101 |       103 |       114 |       153 |      7687 |
|                    Δ                     |         1 |         0 |         1 |         1 |         1 |         0 |         4 |       224 |
|              Improvement %               |        -1 |         0 |        -1 |        -1 |        -1 |         0 |        -3 |       224 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        10 |        10 |        10 |        10 |         9 |         7 |      7463 |
|                  jbird                   |        11 |        10 |        10 |        10 |        10 |         9 |         7 |      7687 |
|                    Δ                     |        -1 |         0 |         0 |         0 |         0 |         0 |         0 |       224 |
|              Improvement %               |        -8 |         0 |         0 |         0 |         0 |         0 |         0 |       224 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        33 |        33 |        33 |        33 |        33 |      7463 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      7687 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |       224 |
|              Improvement %               |         0 |         0 |         3 |         3 |         3 |         3 |         3 |       224 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7463 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7687 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       224 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       224 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2571 |      2572 |      2572 |      2572 |      2572 |      2589 |      2770 |      7463 |
|                  jbird                   |      2631 |      2632 |      2632 |      2632 |      2632 |      2648 |      2876 |      7687 |
|                    Δ                     |        60 |        60 |        60 |        60 |        60 |        59 |       106 |       224 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |       224 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        72 |        73 |        75 |        76 |        86 |       131 |      9233 |
|                  jbird                   |        51 |        57 |        58 |        59 |        60 |        68 |       136 |     11091 |
|                    Δ                     |       -14 |       -15 |       -15 |       -16 |       -16 |       -18 |         5 |      1858 |
|              Improvement %               |        22 |        21 |        21 |        21 |        21 |        21 |        -4 |      1858 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        74 |        75 |        77 |        78 |        88 |       135 |      9233 |
|                  jbird                   |        53 |        59 |        60 |        60 |        62 |        70 |       140 |     11091 |
|                    Δ                     |       -14 |       -15 |       -15 |       -17 |       -16 |       -18 |         5 |      1858 |
|              Improvement %               |        21 |        20 |        20 |        22 |        21 |        20 |        -4 |      1858 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        14 |        14 |        13 |        13 |        12 |         8 |      9233 |
|                  jbird                   |        20 |        17 |        17 |        17 |        17 |        15 |         7 |     11091 |
|                    Δ                     |         5 |         3 |         3 |         4 |         4 |         3 |        -1 |      1858 |
|              Improvement %               |        33 |        21 |        21 |        31 |        31 |        25 |       -12 |      1858 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      9233 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11091 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1858 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1858 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9233 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11091 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1858 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      1858 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1587 |      1588 |      1588 |      1588 |      1588 |      1597 |      1707 |      9233 |
|                  jbird                   |      1593 |      1594 |      1594 |      1594 |      1594 |      1601 |      1750 |     11091 |
|                    Δ                     |         6 |         6 |         6 |         6 |         6 |         4 |        43 |      1858 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -3 |      1858 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        99 |       113 |       118 |       120 |       123 |       132 |       154 |      6493 |
|                  jbird                   |        26 |        29 |        30 |        30 |        30 |        36 |        58 |     15582 |
|                    Δ                     |       -73 |       -84 |       -88 |       -90 |       -93 |       -96 |       -96 |      9089 |
|              Improvement %               |        74 |        74 |        75 |        75 |        76 |        73 |        62 |      9089 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       101 |       114 |       120 |       122 |       125 |       134 |       156 |      6493 |
|                  jbird                   |        28 |        31 |        31 |        31 |        32 |        38 |        57 |     15582 |
|                    Δ                     |       -73 |       -83 |       -89 |       -91 |       -93 |       -96 |       -99 |      9089 |
|              Improvement %               |        72 |        73 |        74 |        75 |        74 |        72 |        63 |      9089 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10080 |      8879 |      8487 |      8311 |      8139 |      7579 |      6488 |      6493 |
|                  jbird                   |     38156 |     34015 |     33855 |     33663 |     33119 |     28015 |     17204 |     15582 |
|                    Δ                     |     28076 |     25136 |     25368 |     25352 |     24980 |     20436 |     10716 |      9089 |
|              Improvement %               |       279 |       283 |       299 |       305 |       307 |       270 |       165 |      9089 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6493 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15582 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9089 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9089 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6493 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15582 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      9089 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9089 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2070 |      2072 |      2072 |      2073 |      2073 |      2088 |      2116 |      6493 |
|                  jbird                   |       850 |       851 |       851 |       851 |       851 |       856 |       901 |     15582 |
|                    Δ                     |     -1220 |     -1221 |     -1221 |     -1222 |     -1222 |     -1232 |     -1215 |      9089 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        57 |      9089 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1993 |      2136 |      2152 |      2177 |      2226 |      2324 |      2413 |       453 |
|                  jbird                   |      1556 |      1639 |      1653 |      1667 |      1691 |      1751 |      1849 |       590 |
|                    Δ                     |      -437 |      -497 |      -499 |      -510 |      -535 |      -573 |      -564 |       137 |
|              Improvement %               |        22 |        23 |        23 |        23 |        24 |        25 |        23 |       137 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2000 |      2138 |      2154 |      2179 |      2232 |      2324 |      2419 |       453 |
|                  jbird                   |      1557 |      1641 |      1656 |      1669 |      1693 |      1752 |      1851 |       590 |
|                    Δ                     |      -443 |      -497 |      -498 |      -510 |      -539 |      -572 |      -568 |       137 |
|              Improvement %               |        22 |        23 |        23 |        23 |        24 |        25 |        23 |       137 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       502 |       468 |       465 |       460 |       449 |       431 |       415 |       453 |
|                  jbird                   |       643 |       610 |       605 |       600 |       591 |       571 |       541 |       590 |
|                    Δ                     |       141 |       142 |       140 |       140 |       142 |       140 |       126 |       137 |
|              Improvement %               |        28 |        30 |        30 |        30 |        32 |        32 |        30 |       137 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        34 |        34 |        34 |        34 |        34 |        34 |       453 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       590 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       137 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       137 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       453 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       590 |
|                    Δ                     |      -192 |      -192 |      -192 |      -192 |      -192 |      -192 |      -192 |       137 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       137 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        41 |        41 |        41 |        42 |        42 |        42 |        43 |       453 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       590 |
|                    Δ                     |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |       137 |
|              Improvement %               |        20 |        20 |        20 |        21 |        21 |        21 |        21 |       137 |

<p>
</details>

