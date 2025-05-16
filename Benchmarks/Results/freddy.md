# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2973 |      3164 |      3195 |      3217 |      3248 |      3357 |      4306 |       309 |
|                  jbird                   |      1894 |      2080 |      2107 |      2124 |      2150 |      2697 |      3532 |       465 |
|                    Δ                     |     -1079 |     -1084 |     -1088 |     -1093 |     -1098 |      -660 |      -774 |       156 |
|              Improvement %               |        36 |        34 |        34 |        34 |        34 |        20 |        18 |       156 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2975 |      3166 |      3199 |      3219 |      3250 |      3367 |      4312 |       309 |
|                  jbird                   |      1895 |      2083 |      2109 |      2128 |      2152 |      2699 |      3538 |       465 |
|                    Δ                     |     -1080 |     -1083 |     -1090 |     -1091 |     -1098 |      -668 |      -774 |       156 |
|              Improvement %               |        36 |        34 |        34 |        34 |        34 |        20 |        18 |       156 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       336 |       316 |       313 |       311 |       308 |       298 |       232 |       309 |
|                  jbird                   |       528 |       481 |       475 |       471 |       465 |       371 |       283 |       465 |
|                    Δ                     |       192 |       165 |       162 |       160 |       157 |        73 |        51 |       156 |
|              Improvement %               |        57 |        52 |        52 |        51 |        51 |        24 |        22 |       156 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        28 |        28 |        29 |        29 |        29 |        29 |       309 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       465 |
|                    Δ                     |         2 |         3 |         3 |         2 |         2 |         2 |         2 |       156 |
|              Improvement %               |        -7 |       -11 |       -11 |        -7 |        -7 |        -7 |        -7 |       156 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       309 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       465 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       156 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       156 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        67 |        68 |       309 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        48 |        49 |       465 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -19 |       -19 |       156 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        28 |        28 |       156 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3017 |      3213 |      3230 |      3244 |      3258 |      3318 |      3336 |       307 |
|                  jbird                   |      1910 |      2051 |      2068 |      2097 |      2152 |      2193 |      2223 |       473 |
|                    Δ                     |     -1107 |     -1162 |     -1162 |     -1147 |     -1106 |     -1125 |     -1113 |       166 |
|              Improvement %               |        37 |        36 |        36 |        35 |        34 |        34 |        33 |       166 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3019 |      3215 |      3234 |      3248 |      3262 |      3320 |      3338 |       307 |
|                  jbird                   |      1912 |      2053 |      2071 |      2099 |      2154 |      2195 |      2225 |       473 |
|                    Δ                     |     -1107 |     -1162 |     -1163 |     -1149 |     -1108 |     -1125 |     -1113 |       166 |
|              Improvement %               |        37 |        36 |        36 |        35 |        34 |        34 |        33 |       166 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       331 |       311 |       310 |       308 |       307 |       301 |       300 |       307 |
|                  jbird                   |       524 |       488 |       484 |       477 |       465 |       456 |       450 |       473 |
|                    Δ                     |       193 |       177 |       174 |       169 |       158 |       155 |       150 |       166 |
|              Improvement %               |        58 |        57 |        56 |        55 |        51 |        51 |        50 |       166 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       307 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       473 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       166 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       166 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       307 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       473 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       166 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       166 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        68 |        68 |        68 |        69 |       307 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       473 |
|                    Δ                     |       -18 |       -18 |       -18 |       -19 |       -19 |       -18 |       -19 |       166 |
|              Improvement %               |        27 |        27 |        27 |        28 |        28 |        26 |        28 |       166 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       726 |       783 |       792 |       800 |       807 |       827 |       867 |      1204 |
|                  jbird                   |       464 |       504 |       510 |       525 |       530 |       544 |       616 |      1813 |
|                    Δ                     |      -262 |      -279 |      -282 |      -275 |      -277 |      -283 |      -251 |       609 |
|              Improvement %               |        36 |        36 |        36 |        34 |        34 |        34 |        29 |       609 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       728 |       785 |       794 |       802 |       809 |       828 |       871 |      1204 |
|                  jbird                   |       466 |       506 |       512 |       527 |       532 |       547 |       620 |      1813 |
|                    Δ                     |      -262 |      -279 |      -282 |      -275 |      -277 |      -281 |      -251 |       609 |
|              Improvement %               |        36 |        36 |        36 |        34 |        34 |        34 |        29 |       609 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1377 |      1278 |      1264 |      1250 |      1240 |      1210 |      1153 |      1204 |
|                  jbird                   |      2155 |      1983 |      1962 |      1905 |      1886 |      1839 |      1623 |      1813 |
|                    Δ                     |       778 |       705 |       698 |       655 |       646 |       629 |       470 |       609 |
|              Improvement %               |        56 |        55 |        55 |        52 |        52 |        52 |        41 |       609 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1204 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1813 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       609 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       609 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1204 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1813 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       609 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       609 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1204 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1813 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       609 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       609 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       740 |       801 |       808 |       816 |       824 |       840 |       865 |      1180 |
|                  jbird                   |       475 |       511 |       516 |       525 |       534 |       553 |       597 |      1796 |
|                    Δ                     |      -265 |      -290 |      -292 |      -291 |      -290 |      -287 |      -268 |       616 |
|              Improvement %               |        36 |        36 |        36 |        36 |        35 |        34 |        31 |       616 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       742 |       803 |       810 |       818 |       826 |       842 |       869 |      1180 |
|                  jbird                   |       477 |       513 |       518 |       527 |       536 |       555 |       601 |      1796 |
|                    Δ                     |      -265 |      -290 |      -292 |      -291 |      -290 |      -287 |      -268 |       616 |
|              Improvement %               |        36 |        36 |        36 |        36 |        35 |        34 |        31 |       616 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1351 |      1249 |      1237 |      1225 |      1214 |      1191 |      1156 |      1180 |
|                  jbird                   |      2104 |      1958 |      1937 |      1905 |      1874 |      1808 |      1674 |      1796 |
|                    Δ                     |       753 |       709 |       700 |       680 |       660 |       617 |       518 |       616 |
|              Improvement %               |        56 |        57 |        57 |        56 |        54 |        52 |        45 |       616 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1180 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1796 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       616 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       616 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1180 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1796 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       616 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       616 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1180 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1796 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       616 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       616 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1474 |      1579 |      1590 |      1601 |      1609 |      1636 |      1648 |       615 |
|                  jbird                   |       941 |      1011 |      1020 |      1029 |      1038 |      1064 |      1136 |       945 |
|                    Δ                     |      -533 |      -568 |      -570 |      -572 |      -571 |      -572 |      -512 |       330 |
|              Improvement %               |        36 |        36 |        36 |        36 |        35 |        35 |        31 |       330 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1475 |      1581 |      1592 |      1603 |      1612 |      1635 |      1650 |       615 |
|                  jbird                   |       942 |      1013 |      1022 |      1031 |      1040 |      1067 |      1140 |       945 |
|                    Δ                     |      -533 |      -568 |      -570 |      -572 |      -572 |      -568 |      -510 |       330 |
|              Improvement %               |        36 |        36 |        36 |        36 |        35 |        35 |        31 |       330 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       678 |       634 |       629 |       625 |       622 |       611 |       607 |       615 |
|                  jbird                   |      1063 |       989 |       981 |       972 |       964 |       941 |       880 |       945 |
|                    Δ                     |       385 |       355 |       352 |       347 |       342 |       330 |       273 |       330 |
|              Improvement %               |        57 |        56 |        56 |        56 |        55 |        54 |        45 |       330 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       615 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       945 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       330 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       330 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       615 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       945 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       330 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       330 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       615 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       945 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       330 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        29 |        26 |       330 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1464 |      1579 |      1593 |      1607 |      1617 |      1639 |      1667 |       613 |
|                  jbird                   |       955 |      1036 |      1055 |      1068 |      1076 |      1100 |      1198 |       917 |
|                    Δ                     |      -509 |      -543 |      -538 |      -539 |      -541 |      -539 |      -469 |       304 |
|              Improvement %               |        35 |        34 |        34 |        34 |        33 |        33 |        28 |       304 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1466 |      1581 |      1596 |      1609 |      1619 |      1645 |      1669 |       613 |
|                  jbird                   |       956 |      1037 |      1056 |      1070 |      1078 |      1102 |      1202 |       917 |
|                    Δ                     |      -510 |      -544 |      -540 |      -539 |      -541 |      -543 |      -467 |       304 |
|              Improvement %               |        35 |        34 |        34 |        33 |        33 |        33 |        28 |       304 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       683 |       633 |       628 |       623 |       619 |       610 |       600 |       613 |
|                  jbird                   |      1047 |       966 |       949 |       937 |       929 |       910 |       835 |       917 |
|                    Δ                     |       364 |       333 |       321 |       314 |       310 |       300 |       235 |       304 |
|              Improvement %               |        53 |        53 |        51 |        50 |        50 |        49 |        39 |       304 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       613 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       917 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       304 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       304 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       613 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       917 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       304 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       304 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       613 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       917 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       304 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        26 |       304 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        18 |        18 |        63 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        93 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -6 |        -6 |        30 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        33 |        33 |        30 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        18 |        18 |        63 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        93 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -6 |        -6 |        30 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        33 |        33 |        30 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        63 |        63 |        62 |        62 |        54 |        54 |        63 |
|                  jbird                   |        99 |        95 |        94 |        93 |        90 |        86 |        86 |        93 |
|                    Δ                     |        34 |        32 |        31 |        31 |        28 |        32 |        32 |        30 |
|              Improvement %               |        52 |        51 |        49 |        50 |        45 |        59 |        59 |        30 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        42 |        44 |        44 |        44 |        44 |        44 |        63 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        93 |
|                    Δ                     |        -8 |        10 |         8 |         8 |         8 |         8 |         8 |        30 |
|              Improvement %               |        22 |       -24 |       -18 |       -18 |       -18 |       -18 |       -18 |        30 |

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
|                  freddy                  |       332 |       333 |       333 |       333 |       334 |       338 |       338 |        63 |
|                  jbird                   |       240 |       243 |       243 |       243 |       245 |       255 |       255 |        93 |
|                    Δ                     |       -92 |       -90 |       -90 |       -90 |       -89 |       -83 |       -83 |        30 |
|              Improvement %               |        28 |        27 |        27 |        27 |        27 |        25 |        25 |        30 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        62 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -6 |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        29 |
|              Improvement %               |        38 |        31 |        31 |        31 |        35 |        29 |        29 |        29 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        62 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -6 |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        29 |
|              Improvement %               |        38 |        31 |        31 |        31 |        35 |        29 |        29 |        29 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        62 |        62 |        61 |        60 |        58 |        58 |        62 |
|                  jbird                   |        97 |        93 |        93 |        92 |        90 |        84 |        84 |        91 |
|                    Δ                     |        33 |        31 |        31 |        31 |        30 |        26 |        26 |        29 |
|              Improvement %               |        52 |        50 |        50 |        51 |        50 |        45 |        45 |        29 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        40 |        40 |        40 |        40 |        40 |        40 |        62 |
|                  jbird                   |        28 |        52 |        52 |        52 |        53 |        53 |        53 |        91 |
|                    Δ                     |        -7 |        12 |        12 |        12 |        13 |        13 |        13 |        29 |
|              Improvement %               |        20 |       -30 |       -30 |       -30 |       -32 |       -32 |       -32 |        29 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        62 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        91 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        29 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        29 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       338 |       339 |       339 |       339 |       344 |       344 |        62 |
|                  jbird                   |       246 |       247 |       247 |       248 |       248 |       259 |       259 |        91 |
|                    Δ                     |       -92 |       -91 |       -92 |       -91 |       -91 |       -85 |       -85 |        29 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        25 |        25 |        29 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       193 |       200 |       206 |       209 |       219 |       254 |      4225 |
|                  jbird                   |       116 |       121 |       128 |       132 |       133 |       142 |       184 |      6131 |
|                    Δ                     |       -68 |       -72 |       -72 |       -74 |       -76 |       -77 |       -70 |      1906 |
|              Improvement %               |        37 |        37 |        36 |        36 |        36 |        35 |        28 |      1906 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       185 |       194 |       201 |       208 |       210 |       221 |       257 |      4225 |
|                  jbird                   |       118 |       123 |       130 |       133 |       135 |       144 |       188 |      6131 |
|                    Δ                     |       -67 |       -71 |       -71 |       -75 |       -75 |       -77 |       -69 |      1906 |
|              Improvement %               |        36 |        37 |        35 |        36 |        36 |        35 |        27 |      1906 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5450 |      5199 |      5011 |      4847 |      4799 |      4575 |      3941 |      4225 |
|                  jbird                   |      8587 |      8255 |      7827 |      7607 |      7531 |      7035 |      5437 |      6131 |
|                    Δ                     |      3137 |      3056 |      2816 |      2760 |      2732 |      2460 |      1496 |      1906 |
|              Improvement %               |        58 |        59 |        56 |        57 |        57 |        54 |        38 |      1906 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4225 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6131 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1906 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1906 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4225 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6131 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1906 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1906 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4157 |      4159 |      4159 |      4159 |      4159 |      4223 |      4240 |      4225 |
|                  jbird                   |      2967 |      2968 |      2968 |      2968 |      2970 |      3041 |      3118 |      6131 |
|                    Δ                     |     -1190 |     -1191 |     -1191 |     -1191 |     -1189 |     -1182 |     -1122 |      1906 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        26 |      1906 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       187 |       195 |       203 |       210 |       213 |       223 |       243 |      4167 |
|                  jbird                   |       118 |       125 |       130 |       134 |       136 |       144 |       180 |      6039 |
|                    Δ                     |       -69 |       -70 |       -73 |       -76 |       -77 |       -79 |       -63 |      1872 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        35 |        26 |      1872 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       189 |       197 |       205 |       212 |       215 |       226 |       246 |      4167 |
|                  jbird                   |       120 |       126 |       132 |       136 |       138 |       147 |       184 |      6039 |
|                    Δ                     |       -69 |       -71 |       -73 |       -76 |       -77 |       -79 |       -62 |      1872 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        35 |        25 |      1872 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5338 |      5119 |      4931 |      4767 |      4707 |      4495 |      4108 |      4167 |
|                  jbird                   |      8439 |      8035 |      7671 |      7475 |      7339 |      6931 |      5543 |      6039 |
|                    Δ                     |      3101 |      2916 |      2740 |      2708 |      2632 |      2436 |      1435 |      1872 |
|              Improvement %               |        58 |        57 |        56 |        57 |        56 |        54 |        35 |      1872 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4167 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6039 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1872 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1872 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4167 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6039 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1872 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1872 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4231 |      4235 |      4235 |      4235 |      4235 |      4297 |      4316 |      4167 |
|                  jbird                   |      3025 |      3025 |      3027 |      3027 |      3027 |      3099 |      3176 |      6039 |
|                    Δ                     |     -1206 |     -1210 |     -1208 |     -1208 |     -1208 |     -1198 |     -1140 |      1872 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        26 |      1872 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        95 |       100 |       102 |       105 |       113 |       150 |      7485 |
|                  jbird                   |        88 |        94 |        99 |       101 |       103 |       110 |       162 |      7757 |
|                    Δ                     |        -2 |        -1 |        -1 |        -1 |        -2 |        -3 |        12 |       272 |
|              Improvement %               |         2 |         1 |         1 |         1 |         2 |         3 |        -8 |       272 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        92 |        96 |       102 |       104 |       106 |       115 |       159 |      7485 |
|                  jbird                   |        90 |        95 |       101 |       103 |       105 |       113 |       166 |      7757 |
|                    Δ                     |        -2 |        -1 |        -1 |        -1 |        -1 |        -2 |         7 |       272 |
|              Improvement %               |         2 |         1 |         1 |         1 |         1 |         2 |        -4 |       272 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        10 |        10 |        10 |         9 |         7 |      7485 |
|                  jbird                   |        11 |        11 |        10 |        10 |        10 |         9 |         6 |      7757 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |        -1 |       272 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |       -14 |       272 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7485 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7757 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       272 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       272 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7485 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7757 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       272 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       272 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2662 |      2662 |      2662 |      2662 |      2662 |      2683 |      2819 |      7485 |
|                  jbird                   |      2558 |      2558 |      2558 |      2558 |      2558 |      2566 |      2784 |      7757 |
|                    Δ                     |      -104 |      -104 |      -104 |      -104 |      -104 |      -117 |       -35 |       272 |
|              Improvement %               |         4 |         4 |         4 |         4 |         4 |         4 |         1 |       272 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        86 |        89 |        95 |        97 |       104 |       141 |      8075 |
|                  jbird                   |        56 |        61 |        64 |        66 |        68 |        74 |       144 |     10556 |
|                    Δ                     |       -28 |       -25 |       -25 |       -29 |       -29 |       -30 |         3 |      2481 |
|              Improvement %               |        33 |        29 |        28 |        31 |        30 |        29 |        -2 |      2481 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        88 |        91 |        97 |        98 |       106 |       145 |      8075 |
|                  jbird                   |        58 |        62 |        65 |        68 |        70 |        77 |       150 |     10556 |
|                    Δ                     |       -27 |       -26 |       -26 |       -29 |       -28 |       -29 |         5 |      2481 |
|              Improvement %               |        32 |        30 |        29 |        30 |        29 |        27 |        -3 |      2481 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        11 |        11 |        10 |        10 |         7 |      8075 |
|                  jbird                   |        18 |        17 |        16 |        15 |        15 |        13 |         7 |     10556 |
|                    Δ                     |         6 |         5 |         5 |         4 |         5 |         3 |         0 |      2481 |
|              Improvement %               |        50 |        42 |        45 |        36 |        50 |        30 |         0 |      2481 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      8075 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     10556 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2481 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2481 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8075 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10556 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2481 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2481 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1802 |      1803 |      1803 |      1803 |      1803 |      1811 |      1878 |      8075 |
|                  jbird                   |      1572 |      1573 |      1573 |      1573 |      1573 |      1578 |      1703 |     10556 |
|                    Δ                     |      -230 |      -230 |      -230 |      -230 |      -230 |      -233 |      -175 |      2481 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |         9 |      2481 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       357 |       361 |       368 |       374 |       395 |       452 |      2500 |
|                  jbird                   |        73 |        79 |        85 |        90 |        97 |       105 |       193 |      8253 |
|                    Δ                     |      -259 |      -278 |      -276 |      -278 |      -277 |      -290 |      -259 |      5753 |
|              Improvement %               |        78 |        78 |        76 |        76 |        74 |        73 |        57 |      5753 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       334 |       359 |       363 |       370 |       376 |       396 |       454 |      2500 |
|                  jbird                   |        75 |        80 |        87 |        92 |        99 |       107 |       197 |      8253 |
|                    Δ                     |      -259 |      -279 |      -276 |      -278 |      -277 |      -289 |      -257 |      5753 |
|              Improvement %               |        78 |        78 |        76 |        75 |        74 |        73 |        57 |      5753 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3013 |      2801 |      2769 |      2721 |      2679 |      2535 |      2211 |      2500 |
|                  jbird                   |     13675 |     12719 |     11767 |     11079 |     10311 |      9527 |      5188 |      8253 |
|                    Δ                     |     10662 |      9918 |      8998 |      8358 |      7632 |      6992 |      2977 |      5753 |
|              Improvement %               |       354 |       354 |       325 |       307 |       285 |       276 |       135 |      5753 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      2500 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      8253 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5753 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5753 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2500 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      8253 |
|                    Δ                     |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |      5753 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      5753 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8326 |      8327 |      8327 |      8327 |      8327 |      8757 |      8770 |      2500 |
|                  jbird                   |      1464 |      1464 |      1464 |      1464 |      1464 |      1473 |      1500 |      8253 |
|                    Δ                     |     -6862 |     -6863 |     -6863 |     -6863 |     -6863 |     -7284 |     -7270 |      5753 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        83 |        83 |      5753 |

<p>
</details>

