# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2948 |      3129 |      3158 |      3187 |      3222 |      3912 |      4543 |       311 |
|                  jbird                   |      1866 |      2040 |      2056 |      2078 |      2101 |      2439 |      2640 |       475 |
|                    Δ                     |     -1082 |     -1089 |     -1102 |     -1109 |     -1121 |     -1473 |     -1903 |       164 |
|              Improvement %               |        37 |        35 |        35 |        35 |        35 |        38 |        42 |       164 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2950 |      3129 |      3160 |      3191 |      3224 |      3916 |      4548 |       311 |
|                  jbird                   |      1867 |      2043 |      2059 |      2080 |      2103 |      2443 |      2638 |       475 |
|                    Δ                     |     -1083 |     -1086 |     -1101 |     -1111 |     -1121 |     -1473 |     -1910 |       164 |
|              Improvement %               |        37 |        35 |        35 |        35 |        35 |        38 |        42 |       164 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       339 |       320 |       317 |       314 |       311 |       256 |       220 |       311 |
|                  jbird                   |       536 |       490 |       486 |       481 |       476 |       410 |       379 |       475 |
|                    Δ                     |       197 |       170 |       169 |       167 |       165 |       154 |       159 |       164 |
|              Improvement %               |        58 |        53 |        53 |        53 |        53 |        60 |        72 |       164 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       311 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       475 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       164 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       164 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       311 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       475 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       164 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       164 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        66 |        68 |       311 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        51 |       475 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -16 |       -17 |       164 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        25 |       164 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2969 |      3152 |      3183 |      3209 |      3234 |      3267 |      3344 |       311 |
|                  jbird                   |      1916 |      2075 |      2090 |      2105 |      2118 |      2177 |      2218 |       470 |
|                    Δ                     |     -1053 |     -1077 |     -1093 |     -1104 |     -1116 |     -1090 |     -1126 |       159 |
|              Improvement %               |        35 |        34 |        34 |        34 |        35 |        33 |        34 |       159 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2972 |      3154 |      3185 |      3213 |      3236 |      3273 |      3346 |       311 |
|                  jbird                   |      1918 |      2077 |      2093 |      2107 |      2118 |      2185 |      2223 |       470 |
|                    Δ                     |     -1054 |     -1077 |     -1092 |     -1106 |     -1118 |     -1088 |     -1123 |       159 |
|              Improvement %               |        35 |        34 |        34 |        34 |        35 |        33 |        34 |       159 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       337 |       317 |       314 |       312 |       309 |       306 |       299 |       311 |
|                  jbird                   |       522 |       482 |       478 |       475 |       473 |       459 |       451 |       470 |
|                    Δ                     |       185 |       165 |       164 |       163 |       164 |       153 |       152 |       159 |
|              Improvement %               |        55 |        52 |        52 |        52 |        53 |        50 |        51 |       159 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       311 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       470 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       159 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       159 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       311 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       470 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       159 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       159 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        67 |        68 |        68 |        69 |       311 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       470 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -19 |       -18 |       -18 |       159 |
|              Improvement %               |        27 |        27 |        27 |        27 |        28 |        26 |        26 |       159 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       722 |       775 |       785 |       795 |       805 |       825 |       862 |      1213 |
|                  jbird                   |       467 |       507 |       509 |       513 |       519 |       536 |       584 |      1825 |
|                    Δ                     |      -255 |      -268 |      -276 |      -282 |      -286 |      -289 |      -278 |       612 |
|              Improvement %               |        35 |        35 |        35 |        35 |        36 |        35 |        32 |       612 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       723 |       777 |       787 |       797 |       808 |       828 |       864 |      1213 |
|                  jbird                   |       469 |       509 |       511 |       515 |       521 |       536 |       574 |      1825 |
|                    Δ                     |      -254 |      -268 |      -276 |      -282 |      -287 |      -292 |      -290 |       612 |
|              Improvement %               |        35 |        34 |        35 |        35 |        36 |        35 |        34 |       612 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1386 |      1291 |      1274 |      1259 |      1242 |      1212 |      1159 |      1213 |
|                  jbird                   |      2142 |      1974 |      1964 |      1950 |      1929 |      1867 |      1712 |      1825 |
|                    Δ                     |       756 |       683 |       690 |       691 |       687 |       655 |       553 |       612 |
|              Improvement %               |        55 |        53 |        54 |        55 |        55 |        54 |        48 |       612 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1213 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1825 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       612 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       612 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1213 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1825 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       612 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       612 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1213 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1825 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       612 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       612 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       735 |       788 |       799 |       808 |       818 |       851 |       937 |      1193 |
|                  jbird                   |       469 |       514 |       518 |       524 |       530 |       549 |       581 |      1794 |
|                    Δ                     |      -266 |      -274 |      -281 |      -284 |      -288 |      -302 |      -356 |       601 |
|              Improvement %               |        36 |        35 |        35 |        35 |        35 |        35 |        38 |       601 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       736 |       790 |       801 |       810 |       821 |       854 |       939 |      1193 |
|                  jbird                   |       471 |       516 |       520 |       526 |       532 |       551 |       585 |      1794 |
|                    Δ                     |      -265 |      -274 |      -281 |      -284 |      -289 |      -303 |      -354 |       601 |
|              Improvement %               |        36 |        35 |        35 |        35 |        35 |        35 |        38 |       601 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1361 |      1270 |      1252 |      1237 |      1223 |      1175 |      1067 |      1193 |
|                  jbird                   |      2134 |      1944 |      1931 |      1909 |      1887 |      1822 |      1722 |      1794 |
|                    Δ                     |       773 |       674 |       679 |       672 |       664 |       647 |       655 |       601 |
|              Improvement %               |        57 |        53 |        54 |        54 |        54 |        55 |        61 |       601 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        26 |        26 |        26 |        26 |        26 |        26 |      1193 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1794 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       601 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       601 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1193 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1794 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       601 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       601 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1193 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        13 |        13 |      1794 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -4 |       601 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        24 |        24 |       601 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1479 |      1571 |      1581 |      1592 |      1604 |      1629 |      1658 |       617 |
|                  jbird                   |       929 |      1009 |      1014 |      1020 |      1029 |      1053 |      1111 |       950 |
|                    Δ                     |      -550 |      -562 |      -567 |      -572 |      -575 |      -576 |      -547 |       333 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        35 |        33 |       333 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1481 |      1573 |      1584 |      1594 |      1607 |      1634 |      1660 |       617 |
|                  jbird                   |       931 |      1011 |      1016 |      1022 |      1031 |      1060 |      1116 |       950 |
|                    Δ                     |      -550 |      -562 |      -568 |      -572 |      -576 |      -574 |      -544 |       333 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        35 |        33 |       333 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       676 |       637 |       633 |       628 |       624 |       614 |       603 |       617 |
|                  jbird                   |      1076 |       991 |       986 |       981 |       972 |       950 |       900 |       950 |
|                    Δ                     |       400 |       354 |       353 |       353 |       348 |       336 |       297 |       333 |
|              Improvement %               |        59 |        56 |        56 |        56 |        56 |        55 |        49 |       333 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       617 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       950 |
|                    Δ                     |         0 |         1 |         1 |         0 |         0 |         0 |         0 |       333 |
|              Improvement %               |         0 |        -4 |        -4 |         0 |         0 |         0 |         0 |       333 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       617 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       950 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       333 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       333 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       617 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       950 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       333 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        26 |       333 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1491 |      1594 |      1607 |      1619 |      1633 |      1740 |      1846 |       607 |
|                  jbird                   |       937 |      1021 |      1026 |      1031 |      1040 |      1066 |      1132 |       938 |
|                    Δ                     |      -554 |      -573 |      -581 |      -588 |      -593 |      -674 |      -714 |       331 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        39 |        39 |       331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1493 |      1596 |      1609 |      1622 |      1635 |      1742 |      1852 |       607 |
|                  jbird                   |       939 |      1023 |      1028 |      1034 |      1042 |      1068 |      1136 |       938 |
|                    Δ                     |      -554 |      -573 |      -581 |      -588 |      -593 |      -674 |      -716 |       331 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        39 |        39 |       331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       671 |       627 |       623 |       618 |       612 |       575 |       542 |       607 |
|                  jbird                   |      1067 |       980 |       975 |       970 |       962 |       938 |       884 |       938 |
|                    Δ                     |       396 |       353 |       352 |       352 |       350 |       363 |       342 |       331 |
|              Improvement %               |        59 |        56 |        57 |        57 |        57 |        63 |        63 |       331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       607 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       938 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       331 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       607 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       938 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       331 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       607 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       938 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -8 |       331 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        24 |       331 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        63 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        92 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        29 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        29 |        29 |        29 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        63 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        92 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        29 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        29 |        29 |        29 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        63 |        63 |        63 |        62 |        58 |        58 |        63 |
|                  jbird                   |        99 |        94 |        93 |        91 |        89 |        87 |        87 |        92 |
|                    Δ                     |        34 |        31 |        30 |        28 |        27 |        29 |        29 |        29 |
|              Improvement %               |        52 |        49 |        48 |        44 |        44 |        50 |        50 |        29 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        46 |        46 |        46 |        46 |        46 |        46 |        63 |
|                  jbird                   |        28 |        54 |        54 |        54 |        54 |        54 |        54 |        92 |
|                    Δ                     |        -7 |         8 |         8 |         8 |         8 |         8 |         8 |        29 |
|              Improvement %               |        20 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |        29 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        63 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        92 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        29 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        29 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       333 |       333 |       333 |       333 |       338 |       338 |        63 |
|                  jbird                   |       243 |       246 |       246 |       249 |       251 |       260 |       260 |        92 |
|                    Δ                     |       -89 |       -87 |       -87 |       -84 |       -82 |       -78 |       -78 |        29 |
|              Improvement %               |        27 |        26 |        26 |        25 |        25 |        23 |        23 |        29 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        62 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -4 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        26 |
|              Improvement %               |        27 |        31 |        31 |        31 |        31 |        29 |        29 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        17 |        17 |        17 |        62 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -4 |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        26 |
|              Improvement %               |        27 |        31 |        31 |        31 |        35 |        29 |        29 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        62 |        62 |        61 |        61 |        59 |        59 |        62 |
|                  jbird                   |        93 |        89 |        88 |        88 |        87 |        86 |        86 |        88 |
|                    Δ                     |        28 |        27 |        26 |        27 |        26 |        27 |        27 |        26 |
|              Improvement %               |        43 |        44 |        42 |        44 |        43 |        46 |        46 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        41 |        42 |        42 |        42 |        42 |        42 |        62 |
|                  jbird                   |        34 |        51 |        51 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |        -1 |        10 |         9 |        10 |        10 |        10 |        10 |        26 |
|              Improvement %               |         3 |       -24 |       -21 |       -24 |       -24 |       -24 |       -24 |        26 |

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
|                  freddy                  |       338 |       338 |       338 |       339 |       341 |       344 |       344 |        62 |
|                  jbird                   |       250 |       254 |       254 |       254 |       255 |       263 |       263 |        88 |
|                    Δ                     |       -88 |       -84 |       -84 |       -85 |       -86 |       -81 |       -81 |        26 |
|              Improvement %               |        26 |        25 |        25 |        25 |        25 |        24 |        24 |        26 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       182 |       193 |       201 |       207 |       210 |       232 |       404 |      4185 |
|                  jbird                   |       115 |       123 |       129 |       131 |       132 |       141 |       190 |      6089 |
|                    Δ                     |       -67 |       -70 |       -72 |       -76 |       -78 |       -91 |      -214 |      1904 |
|              Improvement %               |        37 |        36 |        36 |        37 |        37 |        39 |        53 |      1904 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       183 |       195 |       202 |       209 |       212 |       234 |       408 |      4185 |
|                  jbird                   |       116 |       125 |       131 |       133 |       134 |       143 |       185 |      6089 |
|                    Δ                     |       -67 |       -70 |       -71 |       -76 |       -78 |       -91 |      -223 |      1904 |
|              Improvement %               |        37 |        36 |        35 |        36 |        37 |        39 |        55 |      1904 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5502 |      5183 |      4987 |      4835 |      4759 |      4311 |      2474 |      4185 |
|                  jbird                   |      8727 |      8127 |      7755 |      7619 |      7571 |      7123 |      5270 |      6089 |
|                    Δ                     |      3225 |      2944 |      2768 |      2784 |      2812 |      2812 |      2796 |      1904 |
|              Improvement %               |        59 |        57 |        56 |        58 |        59 |        65 |       113 |      1904 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4185 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6089 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1904 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1904 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4185 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6089 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1904 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1904 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4159 |      4162 |      4162 |      4162 |      4162 |      4227 |      4242 |      4185 |
|                  jbird                   |      3016 |      3017 |      3017 |      3017 |      3019 |      3090 |      3168 |      6089 |
|                    Δ                     |     -1143 |     -1145 |     -1145 |     -1145 |     -1143 |     -1137 |     -1074 |      1904 |
|              Improvement %               |        27 |        28 |        28 |        28 |        27 |        27 |        25 |      1904 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       185 |       196 |       204 |       210 |       217 |       245 |       583 |      4118 |
|                  jbird                   |       117 |       125 |       131 |       132 |       136 |       147 |       183 |      6019 |
|                    Δ                     |       -68 |       -71 |       -73 |       -78 |       -81 |       -98 |      -400 |      1901 |
|              Improvement %               |        37 |        36 |        36 |        37 |        37 |        40 |        69 |      1901 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       187 |       197 |       206 |       212 |       219 |       245 |       465 |      4118 |
|                  jbird                   |       118 |       127 |       133 |       134 |       138 |       149 |       186 |      6019 |
|                    Δ                     |       -69 |       -70 |       -73 |       -78 |       -81 |       -96 |      -279 |      1901 |
|              Improvement %               |        37 |        36 |        35 |        37 |        37 |        39 |        60 |      1901 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5402 |      5115 |      4907 |      4755 |      4619 |      4081 |      1715 |      4118 |
|                  jbird                   |      8556 |      8007 |      7651 |      7603 |      7351 |      6799 |      5455 |      6019 |
|                    Δ                     |      3154 |      2892 |      2744 |      2848 |      2732 |      2718 |      3740 |      1901 |
|              Improvement %               |        58 |        57 |        56 |        60 |        59 |        67 |       218 |      1901 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4118 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6019 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1901 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1901 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4118 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6019 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1901 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1901 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4242 |      4243 |      4243 |      4243 |      4248 |      4309 |      4517 |      4118 |
|                  jbird                   |      3062 |      3064 |      3064 |      3064 |      3064 |      3138 |      3208 |      6019 |
|                    Δ                     |     -1180 |     -1179 |     -1179 |     -1179 |     -1184 |     -1171 |     -1309 |      1901 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        29 |      1901 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        55 |        58 |        63 |        64 |        66 |        76 |       307 |     10343 |
|                  jbird                   |        48 |        49 |        53 |        54 |        54 |        61 |        80 |     11945 |
|                    Δ                     |        -7 |        -9 |       -10 |       -10 |       -12 |       -15 |      -227 |      1602 |
|              Improvement %               |        13 |        16 |        16 |        16 |        18 |        20 |        74 |      1602 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        57 |        60 |        65 |        66 |        68 |        78 |       238 |     10343 |
|                  jbird                   |        49 |        50 |        55 |        56 |        56 |        64 |        80 |     11945 |
|                    Δ                     |        -8 |       -10 |       -10 |       -10 |       -12 |       -14 |      -158 |      1602 |
|              Improvement %               |        14 |        17 |        15 |        15 |        18 |        18 |        66 |      1602 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        17 |        16 |        16 |        15 |        13 |         3 |     10343 |
|                  jbird                   |        21 |        21 |        19 |        19 |        18 |        16 |        12 |     11945 |
|                    Δ                     |         3 |         4 |         3 |         3 |         3 |         3 |         9 |      1602 |
|              Improvement %               |        17 |        24 |        19 |        19 |        20 |        23 |       300 |      1602 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10343 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11945 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1602 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1602 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10343 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11945 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1602 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1602 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1615 |      1616 |      1616 |      1616 |      1617 |      1650 |      1722 |     10343 |
|                  jbird                   |      1316 |      1317 |      1317 |      1317 |      1317 |      1346 |      1364 |     11945 |
|                    Δ                     |      -299 |      -299 |      -299 |      -299 |      -300 |      -304 |      -358 |      1602 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        18 |        21 |      1602 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        93 |       100 |       101 |       103 |       113 |       161 |      7533 |
|                  jbird                   |        87 |        93 |        97 |        98 |        98 |       107 |       159 |      7833 |
|                    Δ                     |        -3 |         0 |        -3 |        -3 |        -5 |        -6 |        -2 |       300 |
|              Improvement %               |         3 |         0 |         3 |         3 |         5 |         5 |         1 |       300 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        91 |        95 |       102 |       103 |       105 |       115 |       166 |      7533 |
|                  jbird                   |        89 |        95 |        99 |       100 |       100 |       109 |       163 |      7833 |
|                    Δ                     |        -2 |         0 |        -3 |        -3 |        -5 |        -6 |        -3 |       300 |
|              Improvement %               |         2 |         0 |         3 |         3 |         5 |         5 |         2 |       300 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        10 |        10 |        10 |         9 |         6 |      7533 |
|                  jbird                   |        11 |        11 |        10 |        10 |        10 |         9 |         6 |      7833 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       300 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       300 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7533 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7833 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       300 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       300 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7533 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7833 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       300 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       300 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2661 |      2662 |      2662 |      2662 |      2664 |      2683 |      2836 |      7533 |
|                  jbird                   |      2649 |      2650 |      2650 |      2650 |      2650 |      2658 |      2881 |      7833 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -14 |       -25 |        45 |       300 |
|              Improvement %               |         0 |         0 |         0 |         0 |         1 |         1 |        -2 |       300 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        83 |        86 |        89 |        94 |        96 |       105 |       167 |      8096 |
|                  jbird                   |        52 |        58 |        60 |        61 |        63 |        69 |       141 |     10962 |
|                    Δ                     |       -31 |       -28 |       -29 |       -33 |       -33 |       -36 |       -26 |      2866 |
|              Improvement %               |        37 |        33 |        33 |        35 |        34 |        34 |        16 |      2866 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        87 |        91 |        96 |        97 |       108 |       147 |      8096 |
|                  jbird                   |        54 |        60 |        62 |        63 |        65 |        72 |       145 |     10962 |
|                    Δ                     |       -30 |       -27 |       -29 |       -33 |       -32 |       -36 |        -2 |      2866 |
|              Improvement %               |        36 |        31 |        32 |        34 |        33 |        33 |         1 |      2866 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        11 |        11 |        10 |        10 |         6 |      8096 |
|                  jbird                   |        19 |        17 |        17 |        16 |        16 |        15 |         7 |     10962 |
|                    Δ                     |         7 |         5 |         6 |         5 |         6 |         5 |         1 |      2866 |
|              Improvement %               |        58 |        42 |        55 |        45 |        60 |        50 |        17 |      2866 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      8096 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10962 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2866 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2866 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8096 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10962 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2866 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2866 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1801 |      1801 |      1801 |      1808 |      1891 |      8096 |
|                  jbird                   |      1614 |      1615 |      1615 |      1615 |      1615 |      1621 |      1744 |     10962 |
|                    Δ                     |      -186 |      -186 |      -186 |      -186 |      -186 |      -187 |      -147 |      2866 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        10 |         8 |      2866 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       102 |       110 |       116 |       121 |       125 |       144 |       499 |      6528 |
|                  jbird                   |        28 |        31 |        31 |        32 |        34 |        38 |       469 |     15171 |
|                    Δ                     |       -74 |       -79 |       -85 |       -89 |       -91 |      -106 |       -30 |      8643 |
|              Improvement %               |        73 |        72 |        73 |        74 |        73 |        74 |         6 |      8643 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       104 |       111 |       118 |       123 |       127 |       146 |       231 |      6528 |
|                  jbird                   |        29 |        32 |        33 |        34 |        36 |        41 |       212 |     15171 |
|                    Δ                     |       -75 |       -79 |       -85 |       -89 |       -91 |      -105 |       -19 |      8643 |
|              Improvement %               |        72 |        71 |        72 |        72 |        72 |        72 |         8 |      8643 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9760 |      9119 |      8599 |      8263 |      8007 |      6955 |      2005 |      6528 |
|                  jbird                   |     36310 |     32751 |     31919 |     31631 |     29311 |     26127 |      2134 |     15171 |
|                    Δ                     |     26550 |     23632 |     23320 |     23368 |     21304 |     19172 |       129 |      8643 |
|              Improvement %               |       272 |       259 |       271 |       283 |       266 |       276 |         6 |      8643 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6528 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15171 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8643 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8643 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6528 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15171 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8643 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8643 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2104 |      2105 |      2105 |      2105 |      2107 |      2120 |      2173 |      6528 |
|                  jbird                   |       878 |       879 |       879 |       879 |       879 |       885 |      1169 |     15171 |
|                    Δ                     |     -1226 |     -1226 |     -1226 |     -1226 |     -1228 |     -1235 |     -1004 |      8643 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        46 |      8643 |

<p>
</details>

