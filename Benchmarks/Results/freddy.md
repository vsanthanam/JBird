
## Jaybird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3400 |      3521 |      3559 |      3684 |      3934 |      4039 |      4094 |       272 |
|                 jaybird                  |      2142 |      2189 |      2238 |      2421 |      2499 |      2562 |      2635 |       427 |
|                    Δ                     |     -1258 |     -1332 |     -1321 |     -1263 |     -1435 |     -1477 |     -1459 |       155 |
|              Improvement %               |        37 |        38 |        37 |        34 |        36 |        37 |        36 |       155 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3409 |      3523 |      3561 |      3686 |      3930 |      4037 |      4087 |       272 |
|                 jaybird                  |      2144 |      2191 |      2238 |      2423 |      2501 |      2568 |      2632 |       427 |
|                    Δ                     |     -1265 |     -1332 |     -1323 |     -1263 |     -1429 |     -1469 |     -1455 |       155 |
|              Improvement %               |        37 |        38 |        37 |        34 |        36 |        36 |        36 |       155 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       294 |       284 |       281 |       271 |       254 |       248 |       244 |       272 |
|                 jaybird                  |       467 |       457 |       447 |       413 |       400 |       390 |       379 |       427 |
|                    Δ                     |       173 |       173 |       166 |       142 |       146 |       142 |       135 |       155 |
|              Improvement %               |        59 |        61 |        59 |        52 |        57 |        57 |        55 |       155 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       272 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       427 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       155 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       155 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       272 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       427 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       155 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       155 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        67 |        67 |        67 |        67 |        68 |        68 |       272 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       427 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       155 |
|              Improvement %               |        29 |        30 |        30 |        30 |        30 |        29 |        28 |       155 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3518 |      3690 |      3940 |      4094 |      4227 |      4768 |      4908 |       251 |
|                 jaybird                  |      2181 |      2251 |      2294 |      2458 |      2523 |      2589 |      2701 |       418 |
|                    Δ                     |     -1337 |     -1439 |     -1646 |     -1636 |     -1704 |     -2179 |     -2207 |       167 |
|              Improvement %               |        38 |        39 |        42 |        40 |        40 |        46 |        45 |       167 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3526 |      3697 |      3942 |      4094 |      4231 |      4768 |      4903 |       251 |
|                 jaybird                  |      2183 |      2253 |      2292 |      2451 |      2523 |      2597 |      2703 |       418 |
|                    Δ                     |     -1343 |     -1444 |     -1650 |     -1643 |     -1708 |     -2171 |     -2200 |       167 |
|              Improvement %               |        38 |        39 |        42 |        40 |        40 |        46 |        45 |       167 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       284 |       271 |       254 |       244 |       237 |       210 |       204 |       251 |
|                 jaybird                  |       459 |       444 |       436 |       407 |       396 |       386 |       370 |       418 |
|                    Δ                     |       175 |       173 |       182 |       163 |       159 |       176 |       166 |       167 |
|              Improvement %               |        62 |        64 |        72 |        67 |        67 |        84 |        81 |       167 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        28 |        28 |        29 |        29 |        29 |        29 |       251 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       418 |
|                    Δ                     |         2 |         3 |         3 |         2 |         2 |         2 |         2 |       167 |
|              Improvement %               |        -7 |       -11 |       -11 |        -7 |        -7 |        -7 |        -7 |       167 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       251 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       418 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        68 |        68 |        68 |        68 |        69 |        69 |       251 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       418 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       167 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        29 |        28 |       167 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       855 |       874 |       887 |       967 |       986 |      1021 |      1080 |      1039 |
|                 jaybird                  |       534 |       546 |       558 |       611 |       624 |       654 |       746 |      1609 |
|                    Δ                     |      -321 |      -328 |      -329 |      -356 |      -362 |      -367 |      -334 |       570 |
|              Improvement %               |        38 |        38 |        37 |        37 |        37 |        36 |        31 |       570 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       857 |       877 |       889 |       969 |       988 |      1022 |      1080 |      1039 |
|                 jaybird                  |       536 |       549 |       560 |       613 |       626 |       651 |       695 |      1609 |
|                    Δ                     |      -321 |      -328 |      -329 |      -356 |      -362 |      -371 |      -385 |       570 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        36 |        36 |       570 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1170 |      1144 |      1127 |      1034 |      1015 |       980 |       926 |      1039 |
|                 jaybird                  |      1874 |      1831 |      1793 |      1637 |      1603 |      1530 |      1341 |      1609 |
|                    Δ                     |       704 |       687 |       666 |       603 |       588 |       550 |       415 |       570 |
|              Improvement %               |        60 |        60 |        59 |        58 |        58 |        56 |        45 |       570 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1039 |
|                 jaybird                  |        25 |        27 |        27 |        27 |        27 |        27 |        27 |      1609 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       570 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       570 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1039 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1609 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       570 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       570 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1039 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1609 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       570 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       570 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       858 |       887 |       907 |       986 |      1007 |      1042 |      1064 |      1020 |
|                 jaybird                  |       539 |       559 |       570 |       624 |       637 |       668 |       706 |      1580 |
|                    Δ                     |      -319 |      -328 |      -337 |      -362 |      -370 |      -374 |      -358 |       560 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        36 |        34 |       560 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       860 |       889 |       909 |       988 |      1009 |      1041 |      1066 |      1020 |
|                 jaybird                  |       541 |       561 |       572 |       626 |       639 |       668 |       708 |      1580 |
|                    Δ                     |      -319 |      -328 |      -337 |      -362 |      -370 |      -373 |      -358 |       560 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        36 |        34 |       560 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1166 |      1128 |      1103 |      1015 |       994 |       960 |       940 |      1020 |
|                 jaybird                  |      1856 |      1791 |      1755 |      1604 |      1570 |      1498 |      1417 |      1580 |
|                    Δ                     |       690 |       663 |       652 |       589 |       576 |       538 |       477 |       560 |
|              Improvement %               |        59 |        59 |        59 |        58 |        58 |        56 |        51 |       560 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1020 |
|                 jaybird                  |        25 |        27 |        27 |        27 |        27 |        27 |        27 |      1580 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       560 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       560 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1020 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1580 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       560 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       560 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1020 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1580 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       560 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       560 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1691 |      1723 |      1754 |      1912 |      1944 |      1994 |      2044 |       538 |
|                 jaybird                  |      1067 |      1089 |      1103 |      1205 |      1238 |      1362 |      1507 |       842 |
|                    Δ                     |      -624 |      -634 |      -651 |      -707 |      -706 |      -632 |      -537 |       304 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        32 |        26 |       304 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1693 |      1726 |      1756 |      1916 |      1947 |      1992 |      2047 |       538 |
|                 jaybird                  |      1069 |      1091 |      1106 |      1206 |      1242 |      1364 |      1505 |       842 |
|                    Δ                     |      -624 |      -635 |      -650 |      -710 |      -705 |      -628 |      -542 |       304 |
|              Improvement %               |        37 |        37 |        37 |        37 |        36 |        32 |        26 |       304 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       591 |       580 |       570 |       523 |       515 |       502 |       489 |       538 |
|                 jaybird                  |       938 |       919 |       907 |       830 |       808 |       735 |       663 |       842 |
|                    Δ                     |       347 |       339 |       337 |       307 |       293 |       233 |       174 |       304 |
|              Improvement %               |        59 |        58 |        59 |        59 |        57 |        46 |        36 |       304 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       538 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       842 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       304 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       304 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       538 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       842 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       304 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       538 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       842 |
|                    Δ                     |       -10 |       -10 |        -9 |        -9 |        -9 |       -10 |        -9 |       304 |
|              Improvement %               |        30 |        30 |        27 |        27 |        27 |        29 |        26 |       304 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1742 |      1785 |      1816 |      1977 |      2009 |      2060 |      2084 |       521 |
|                 jaybird                  |      1087 |      1111 |      1129 |      1237 |      1261 |      1317 |      1441 |       824 |
|                    Δ                     |      -655 |      -674 |      -687 |      -740 |      -748 |      -743 |      -643 |       303 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        36 |        31 |       303 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1744 |      1788 |      1819 |      1978 |      2012 |      2062 |      2086 |       521 |
|                 jaybird                  |      1088 |      1113 |      1132 |      1240 |      1264 |      1316 |      1446 |       824 |
|                    Δ                     |      -656 |      -675 |      -687 |      -738 |      -748 |      -746 |      -640 |       303 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        36 |        31 |       303 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       574 |       560 |       551 |       506 |       498 |       486 |       480 |       521 |
|                 jaybird                  |       920 |       901 |       886 |       808 |       793 |       760 |       694 |       824 |
|                    Δ                     |       346 |       341 |       335 |       302 |       295 |       274 |       214 |       303 |
|              Improvement %               |        60 |        61 |        61 |        60 |        59 |        56 |        45 |       303 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       521 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       824 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       303 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       303 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       521 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       824 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       303 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       303 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        35 |       521 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       824 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |       -10 |       303 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        29 |       303 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        18 |        18 |        19 |        19 |        19 |        56 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        13 |        14 |        14 |        80 |
|                    Δ                     |        -5 |        -5 |        -6 |        -5 |        -6 |        -5 |        -5 |        24 |
|              Improvement %               |        29 |        29 |        33 |        28 |        32 |        26 |        26 |        24 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        18 |        18 |        19 |        19 |        19 |        56 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        13 |        14 |        14 |        80 |
|                    Δ                     |        -5 |        -5 |        -6 |        -5 |        -6 |        -5 |        -5 |        24 |
|              Improvement %               |        29 |        29 |        33 |        28 |        32 |        26 |        26 |        24 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        58 |        57 |        56 |        54 |        52 |        51 |        51 |        56 |
|                 jaybird                  |        86 |        85 |        81 |        78 |        76 |        71 |        71 |        80 |
|                    Δ                     |        28 |        28 |        25 |        24 |        24 |        20 |        20 |        24 |
|              Improvement %               |        48 |        49 |        45 |        44 |        46 |        39 |        39 |        24 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        39 |        39 |        39 |        39 |        39 |        39 |        56 |
|                 jaybird                  |        43 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |         8 |        14 |        14 |        14 |        14 |        14 |        14 |        24 |
|              Improvement %               |       -23 |       -36 |       -36 |       -36 |       -36 |       -36 |       -36 |        24 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        56 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        24 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        24 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       333 |       333 |       333 |       333 |       338 |       338 |        56 |
|                 jaybird                  |       239 |       240 |       241 |       241 |       244 |       253 |       253 |        80 |
|                    Δ                     |       -93 |       -93 |       -92 |       -92 |       -89 |       -85 |       -85 |        24 |
|              Improvement %               |        28 |        28 |        28 |        28 |        27 |        25 |        25 |        24 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        53 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        14 |        15 |        15 |        78 |
|                    Δ                     |        -6 |        -6 |        -7 |        -6 |        -6 |        -5 |        -5 |        25 |
|              Improvement %               |        33 |        33 |        37 |        32 |        30 |        25 |        25 |        25 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        18 |        19 |        19 |        20 |        20 |        20 |        53 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        14 |        15 |        15 |        78 |
|                    Δ                     |        -6 |        -6 |        -7 |        -6 |        -6 |        -5 |        -5 |        25 |
|              Improvement %               |        33 |        33 |        37 |        32 |        30 |        25 |        25 |        25 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        57 |        55 |        53 |        52 |        51 |        49 |        49 |        53 |
|                 jaybird                  |        86 |        84 |        80 |        76 |        74 |        69 |        69 |        78 |
|                    Δ                     |        29 |        29 |        27 |        24 |        23 |        20 |        20 |        25 |
|              Improvement %               |        51 |        53 |        51 |        46 |        45 |        41 |        41 |        25 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        40 |        41 |        41 |        41 |        41 |        41 |        53 |
|                 jaybird                  |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        78 |
|                    Δ                     |        10 |        12 |        11 |        11 |        11 |        11 |        11 |        25 |
|              Improvement %               |       -30 |       -30 |       -27 |       -27 |       -27 |       -27 |       -27 |        25 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        53 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        78 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        25 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        25 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       339 |       339 |       339 |       340 |       345 |       345 |        53 |
|                 jaybird                  |       245 |       245 |       246 |       246 |       251 |       257 |       257 |        78 |
|                    Δ                     |       -93 |       -94 |       -93 |       -93 |       -89 |       -88 |       -88 |        25 |
|              Improvement %               |        28 |        28 |        27 |        27 |        26 |        26 |        26 |        25 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       214 |       222 |       226 |       237 |       251 |       262 |       283 |      3646 |
|                 jaybird                  |       133 |       137 |       140 |       152 |       158 |       166 |       189 |      5370 |
|                    Δ                     |       -81 |       -85 |       -86 |       -85 |       -93 |       -96 |       -94 |      1724 |
|              Improvement %               |        38 |        38 |        38 |        36 |        37 |        37 |        33 |      1724 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       224 |       228 |       239 |       253 |       263 |       282 |      3646 |
|                 jaybird                  |       135 |       139 |       142 |       154 |       160 |       167 |       187 |      5370 |
|                    Δ                     |       -81 |       -85 |       -86 |       -85 |       -93 |       -96 |       -95 |      1724 |
|              Improvement %               |        38 |        38 |        38 |        36 |        37 |        37 |        34 |      1724 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4662 |      4515 |      4435 |      4227 |      3985 |      3825 |      3531 |      3646 |
|                 jaybird                  |      7528 |      7327 |      7131 |      6579 |      6331 |      6039 |      5283 |      5370 |
|                    Δ                     |      2866 |      2812 |      2696 |      2352 |      2346 |      2214 |      1752 |      1724 |
|              Improvement %               |        61 |        62 |        61 |        56 |        59 |        58 |        50 |      1724 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3646 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5370 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1724 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1724 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3646 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5370 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1724 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1724 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4185 |      4190 |      4192 |      4194 |      4198 |      4260 |      4284 |      3646 |
|                 jaybird                  |      2941 |      2943 |      2947 |      2949 |      2949 |      3019 |      3092 |      5370 |
|                    Δ                     |     -1244 |     -1247 |     -1245 |     -1245 |     -1249 |     -1241 |     -1192 |      1724 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        29 |        28 |      1724 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       223 |       229 |       250 |       256 |       264 |       281 |      3569 |
|                 jaybird                  |       136 |       143 |       147 |       155 |       165 |       175 |       194 |      5211 |
|                    Δ                     |       -80 |       -80 |       -82 |       -95 |       -91 |       -89 |       -87 |      1642 |
|              Improvement %               |        37 |        36 |        36 |        38 |        36 |        34 |        31 |      1642 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       218 |       225 |       231 |       252 |       259 |       266 |       280 |      3569 |
|                 jaybird                  |       138 |       146 |       149 |       157 |       167 |       176 |       197 |      5211 |
|                    Δ                     |       -80 |       -79 |       -82 |       -95 |       -92 |       -90 |       -83 |      1642 |
|              Improvement %               |        37 |        35 |        35 |        38 |        36 |        34 |        30 |      1642 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4638 |      4487 |      4371 |      4001 |      3903 |      3787 |      3561 |      3569 |
|                 jaybird                  |      7328 |      6971 |      6819 |      6455 |      6071 |      5719 |      5154 |      5211 |
|                    Δ                     |      2690 |      2484 |      2448 |      2454 |      2168 |      1932 |      1593 |      1642 |
|              Improvement %               |        58 |        55 |        56 |        61 |        56 |        51 |        45 |      1642 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      3569 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5211 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1642 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1642 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      3569 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5211 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1642 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1642 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4246 |      4248 |      4256 |      4256 |      4260 |      4321 |      4336 |      3569 |
|                 jaybird                  |      2991 |      2994 |      2996 |      2998 |      3000 |      3066 |      3139 |      5211 |
|                    Δ                     |     -1255 |     -1254 |     -1260 |     -1258 |     -1260 |     -1255 |     -1197 |      1642 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        29 |        28 |      1642 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       104 |       106 |       109 |       119 |       123 |       130 |       148 |      6531 |
|                 jaybird                  |       101 |       103 |       106 |       115 |       119 |       125 |       146 |      6862 |
|                    Δ                     |        -3 |        -3 |        -3 |        -4 |        -4 |        -5 |        -2 |       331 |
|              Improvement %               |         3 |         3 |         3 |         3 |         3 |         4 |         1 |       331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       105 |       108 |       112 |       121 |       125 |       131 |       145 |      6531 |
|                 jaybird                  |       103 |       105 |       109 |       117 |       121 |       127 |       150 |      6862 |
|                    Δ                     |        -2 |        -3 |        -3 |        -4 |        -4 |        -4 |         5 |       331 |
|              Improvement %               |         2 |         3 |         3 |         3 |         3 |         3 |        -3 |       331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9654 |      9423 |      9151 |      8439 |      8147 |      7687 |      6757 |      6531 |
|                 jaybird                  |      9901 |      9679 |      9415 |      8695 |      8399 |      8035 |      6834 |      6862 |
|                    Δ                     |       247 |       256 |       264 |       256 |       252 |       348 |        77 |       331 |
|              Improvement %               |         3 |         3 |         3 |         3 |         3 |         5 |         1 |       331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6531 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6862 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       331 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      6531 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6862 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       331 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2662 |      2664 |      2666 |      2669 |      2671 |      2689 |      2828 |      6531 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2693 |      6862 |
|                    Δ                     |      -184 |      -186 |      -186 |      -187 |      -187 |      -192 |      -135 |       331 |
|              Improvement %               |         7 |         7 |         7 |         7 |         7 |         7 |         5 |       331 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        98 |       100 |       103 |       111 |       115 |       120 |       141 |      6876 |
|                 jaybird                  |        64 |        66 |        67 |        73 |        76 |        88 |       129 |      9442 |
|                    Δ                     |       -34 |       -34 |       -36 |       -38 |       -39 |       -32 |       -12 |      2566 |
|              Improvement %               |        35 |        34 |        35 |        34 |        34 |        27 |         9 |      2566 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       100 |       102 |       105 |       113 |       117 |       123 |       140 |      6876 |
|                 jaybird                  |        65 |        68 |        69 |        75 |        79 |        89 |       132 |      9442 |
|                    Δ                     |       -35 |       -34 |       -36 |       -38 |       -38 |       -34 |        -8 |      2566 |
|              Improvement %               |        35 |        33 |        34 |        34 |        32 |        28 |         6 |      2566 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10243 |      9983 |      9711 |      9039 |      8711 |      8335 |      7073 |      6876 |
|                 jaybird                  |     15697 |     15231 |     14895 |     13719 |     13095 |     11327 |      7777 |      9442 |
|                    Δ                     |      5454 |      5248 |      5184 |      4680 |      4384 |      2992 |       704 |      2566 |
|              Improvement %               |        53 |        53 |        53 |        52 |        50 |        36 |        10 |      2566 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6876 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      9442 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |      2566 |
|              Improvement %               |         0 |         0 |         4 |         4 |         4 |         4 |         4 |      2566 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      6876 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9442 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2566 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2566 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1803 |      1805 |      1806 |      1819 |      1896 |      6876 |
|                 jaybird                  |      1533 |      1534 |      1535 |      1536 |      1538 |      1548 |      1685 |      9442 |
|                    Δ                     |      -267 |      -267 |      -268 |      -269 |      -268 |      -271 |      -211 |      2566 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        15 |        11 |      2566 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       382 |       392 |       399 |       430 |       446 |       475 |       535 |      2206 |
|                 jaybird                  |        79 |        85 |        91 |        97 |       102 |       126 |       202 |      7430 |
|                    Δ                     |      -303 |      -307 |      -308 |      -333 |      -344 |      -349 |      -333 |      5224 |
|              Improvement %               |        79 |        78 |        77 |        77 |        77 |        73 |        62 |      5224 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       384 |       395 |       401 |       431 |       448 |       479 |       539 |      2206 |
|                 jaybird                  |        81 |        87 |        93 |        99 |       104 |       127 |       204 |      7430 |
|                    Δ                     |      -303 |      -308 |      -308 |      -332 |      -344 |      -352 |      -335 |      5224 |
|              Improvement %               |        79 |        78 |        77 |        77 |        77 |        73 |        62 |      5224 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2619 |      2549 |      2509 |      2327 |      2241 |      2105 |      1868 |      2206 |
|                 jaybird                  |     12672 |     11719 |     11015 |     10343 |      9815 |      7939 |      4954 |      7430 |
|                    Δ                     |     10053 |      9170 |      8506 |      8016 |      7574 |      5834 |      3086 |      5224 |
|              Improvement %               |       384 |       360 |       339 |       344 |       338 |       277 |       165 |      5224 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      2206 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7430 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5224 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5224 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2206 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7430 |
|                    Δ                     |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |      5224 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      5224 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8225 |      8237 |      8241 |      8241 |      8249 |      8667 |      8679 |      2206 |
|                 jaybird                  |      1462 |      1463 |      1465 |      1467 |      1467 |      1481 |      1509 |      7430 |
|                    Δ                     |     -6763 |     -6774 |     -6776 |     -6774 |     -6782 |     -7186 |     -7170 |      5224 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        83 |        83 |      5224 |

<p>
</details>

