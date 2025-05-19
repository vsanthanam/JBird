# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2972 |      3213 |      3238 |      3269 |      3303 |      3568 |      3672 |       304 |
|                  jbird                   |      1877 |      2000 |      2017 |      2039 |      2076 |      2212 |      2336 |       485 |
|                    Δ                     |     -1095 |     -1213 |     -1221 |     -1230 |     -1227 |     -1356 |     -1336 |       181 |
|              Improvement %               |        37 |        38 |        38 |        38 |        37 |        38 |        36 |       181 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2975 |      3215 |      3242 |      3269 |      3305 |      3566 |      3676 |       304 |
|                  jbird                   |      1879 |      2001 |      2019 |      2041 |      2080 |      2218 |      2338 |       485 |
|                    Δ                     |     -1096 |     -1214 |     -1223 |     -1228 |     -1225 |     -1348 |     -1338 |       181 |
|              Improvement %               |        37 |        38 |        38 |        38 |        37 |        38 |        36 |       181 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       337 |       311 |       309 |       306 |       303 |       280 |       272 |       304 |
|                  jbird                   |       533 |       500 |       496 |       491 |       482 |       452 |       428 |       485 |
|                    Δ                     |       196 |       189 |       187 |       185 |       179 |       172 |       156 |       181 |
|              Improvement %               |        58 |        61 |        61 |        60 |        59 |        61 |        57 |       181 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       304 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       485 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       181 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       181 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       304 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       485 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       181 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       181 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        67 |        68 |       304 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        49 |       485 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -19 |       181 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        28 |       181 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2996 |      3246 |      3260 |      3277 |      3303 |      3361 |      3436 |       303 |
|                  jbird                   |      1905 |      2035 |      2066 |      2101 |      2134 |      2175 |      2333 |       475 |
|                    Δ                     |     -1091 |     -1211 |     -1194 |     -1176 |     -1169 |     -1186 |     -1103 |       172 |
|              Improvement %               |        36 |        37 |        37 |        36 |        35 |        35 |        32 |       172 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3003 |      3250 |      3265 |      3279 |      3303 |      3363 |      3437 |       303 |
|                  jbird                   |      1910 |      2037 |      2068 |      2103 |      2136 |      2173 |      2334 |       475 |
|                    Δ                     |     -1093 |     -1213 |     -1197 |     -1176 |     -1167 |     -1190 |     -1103 |       172 |
|              Improvement %               |        36 |        37 |        37 |        36 |        35 |        35 |        32 |       172 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       334 |       308 |       307 |       305 |       303 |       298 |       291 |       303 |
|                  jbird                   |       525 |       491 |       484 |       476 |       469 |       460 |       429 |       475 |
|                    Δ                     |       191 |       183 |       177 |       171 |       166 |       162 |       138 |       172 |
|              Improvement %               |        57 |        59 |        58 |        56 |        55 |        54 |        47 |       172 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        28 |        28 |        29 |        29 |        29 |        29 |       303 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       475 |
|                    Δ                     |         2 |         3 |         3 |         2 |         2 |         2 |         2 |       172 |
|              Improvement %               |        -7 |       -11 |       -11 |        -7 |        -7 |        -7 |        -7 |       172 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       303 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       475 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        67 |        68 |        68 |        69 |       303 |
|                  jbird                   |        48 |        48 |        48 |        48 |        49 |        50 |        50 |       475 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       -19 |       172 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        26 |        28 |       172 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       732 |       799 |       806 |       813 |       820 |       840 |       894 |      1182 |
|                  jbird                   |       461 |       496 |       504 |       517 |       525 |       538 |       633 |      1840 |
|                    Δ                     |      -271 |      -303 |      -302 |      -296 |      -295 |      -302 |      -261 |       658 |
|              Improvement %               |        37 |        38 |        37 |        36 |        36 |        36 |        29 |       658 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       733 |       801 |       807 |       815 |       822 |       842 |       896 |      1182 |
|                  jbird                   |       462 |       497 |       506 |       519 |       527 |       540 |       619 |      1840 |
|                    Δ                     |      -271 |      -304 |      -301 |      -296 |      -295 |      -302 |      -277 |       658 |
|              Improvement %               |        37 |        38 |        37 |        36 |        36 |        36 |        31 |       658 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1366 |      1252 |      1241 |      1231 |      1220 |      1190 |      1118 |      1182 |
|                  jbird                   |      2171 |      2018 |      1983 |      1934 |      1905 |      1860 |      1581 |      1840 |
|                    Δ                     |       805 |       766 |       742 |       703 |       685 |       670 |       463 |       658 |
|              Improvement %               |        59 |        61 |        60 |        57 |        56 |        56 |        41 |       658 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1182 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1840 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       658 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       658 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1182 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1840 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       658 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       658 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1182 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1840 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       658 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       658 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       740 |       806 |       814 |       820 |       826 |       847 |       950 |      1173 |
|                  jbird                   |       474 |       507 |       518 |       547 |       560 |       575 |       667 |      1776 |
|                    Δ                     |      -266 |      -299 |      -296 |      -273 |      -266 |      -272 |      -283 |       603 |
|              Improvement %               |        36 |        37 |        36 |        33 |        32 |        32 |        30 |       603 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       742 |       808 |       815 |       821 |       828 |       849 |       951 |      1173 |
|                  jbird                   |       475 |       508 |       520 |       549 |       561 |       577 |       668 |      1776 |
|                    Δ                     |      -267 |      -300 |      -295 |      -272 |      -267 |      -272 |      -283 |       603 |
|              Improvement %               |        36 |        37 |        36 |        33 |        32 |        32 |        30 |       603 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1351 |      1240 |      1230 |      1220 |      1210 |      1180 |      1053 |      1173 |
|                  jbird                   |      2112 |      1974 |      1931 |      1828 |      1788 |      1740 |      1500 |      1776 |
|                    Δ                     |       761 |       734 |       701 |       608 |       578 |       560 |       447 |       603 |
|              Improvement %               |        56 |        59 |        57 |        50 |        48 |        47 |        42 |       603 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1173 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1776 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       603 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       603 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1173 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1776 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       603 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       603 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        18 |      1173 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1776 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       603 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        28 |       603 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1463 |      1611 |      1622 |      1634 |      1654 |      1736 |      1855 |       601 |
|                  jbird                   |       929 |      1002 |      1032 |      1060 |      1079 |      1152 |      1196 |       932 |
|                    Δ                     |      -534 |      -609 |      -590 |      -574 |      -575 |      -584 |      -659 |       331 |
|              Improvement %               |        37 |        38 |        36 |        35 |        35 |        34 |        36 |       331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1465 |      1612 |      1624 |      1636 |      1656 |      1738 |      1856 |       601 |
|                  jbird                   |       930 |      1004 |      1034 |      1062 |      1081 |      1155 |      1197 |       932 |
|                    Δ                     |      -535 |      -608 |      -590 |      -574 |      -575 |      -583 |      -659 |       331 |
|              Improvement %               |        37 |        38 |        36 |        35 |        35 |        34 |        36 |       331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       683 |       621 |       617 |       612 |       605 |       576 |       539 |       601 |
|                  jbird                   |      1077 |       998 |       969 |       943 |       927 |       868 |       836 |       932 |
|                    Δ                     |       394 |       377 |       352 |       331 |       322 |       292 |       297 |       331 |
|              Improvement %               |        58 |        61 |        57 |        54 |        53 |        51 |        55 |       331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       601 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       932 |
|                    Δ                     |         0 |         1 |         1 |         0 |         0 |         0 |         0 |       331 |
|              Improvement %               |         0 |        -4 |        -4 |         0 |         0 |         0 |         0 |       331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       601 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       932 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       331 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       601 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       932 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       331 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        29 |        26 |       331 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1500 |      1629 |      1639 |      1651 |      1662 |      1700 |      1740 |       596 |
|                  jbird                   |       941 |      1013 |      1023 |      1038 |      1051 |      1075 |      1109 |       941 |
|                    Δ                     |      -559 |      -616 |      -616 |      -613 |      -611 |      -625 |      -631 |       345 |
|              Improvement %               |        37 |        38 |        38 |        37 |        37 |        37 |        36 |       345 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1501 |      1631 |      1641 |      1653 |      1664 |      1702 |      1742 |       596 |
|                  jbird                   |       943 |      1015 |      1025 |      1040 |      1052 |      1077 |      1113 |       941 |
|                    Δ                     |      -558 |      -616 |      -616 |      -613 |      -612 |      -625 |      -629 |       345 |
|              Improvement %               |        37 |        38 |        38 |        37 |        37 |        37 |        36 |       345 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       667 |       614 |       610 |       606 |       602 |       588 |       575 |       596 |
|                  jbird                   |      1062 |       987 |       977 |       963 |       953 |       930 |       902 |       941 |
|                    Δ                     |       395 |       373 |       367 |       357 |       351 |       342 |       327 |       345 |
|              Improvement %               |        59 |        61 |        60 |        59 |        58 |        58 |        57 |       345 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        28 |        28 |        28 |       596 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       941 |
|                    Δ                     |         0 |         1 |         1 |         1 |         0 |         0 |         0 |       345 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |         0 |         0 |         0 |       345 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       596 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       941 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       345 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       345 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       596 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       941 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       345 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        26 |       345 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        19 |        19 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -6 |        -7 |        -7 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        35 |        37 |        37 |        28 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        19 |        19 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -6 |        -7 |        -7 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        35 |        37 |        37 |        28 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        61 |        61 |        60 |        60 |        54 |        54 |        61 |
|                  jbird                   |        94 |        91 |        90 |        89 |        88 |        87 |        87 |        89 |
|                    Δ                     |        31 |        30 |        29 |        29 |        28 |        33 |        33 |        28 |
|              Improvement %               |        49 |        49 |        48 |        48 |        47 |        61 |        61 |        28 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        41 |        42 |        42 |        42 |        42 |        42 |        61 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |        -8 |        11 |        10 |        10 |        10 |        10 |        10 |        28 |
|              Improvement %               |        22 |       -27 |       -24 |       -24 |       -24 |       -24 |       -24 |        28 |

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
|                  freddy                  |       332 |       333 |       333 |       333 |       334 |       338 |       338 |        61 |
|                  jbird                   |       246 |       247 |       247 |       247 |       247 |       255 |       255 |        89 |
|                    Δ                     |       -86 |       -86 |       -86 |       -86 |       -87 |       -83 |       -83 |        28 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        25 |        25 |        28 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        13 |        13 |        87 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -4 |        26 |
|              Improvement %               |        31 |        31 |        31 |        31 |        29 |        24 |        24 |        26 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        13 |        13 |        87 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -4 |        26 |
|              Improvement %               |        31 |        31 |        31 |        31 |        29 |        24 |        24 |        26 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        61 |        61 |        61 |        60 |        58 |        58 |        61 |
|                  jbird                   |        94 |        89 |        88 |        87 |        85 |        80 |        80 |        87 |
|                    Δ                     |        31 |        28 |        27 |        26 |        25 |        22 |        22 |        26 |
|              Improvement %               |        49 |        46 |        44 |        43 |        42 |        38 |        38 |        26 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        39 |        39 |        40 |        40 |        42 |        42 |        61 |
|                  jbird                   |        43 |        51 |        52 |        52 |        52 |        52 |        52 |        87 |
|                    Δ                     |         8 |        12 |        13 |        12 |        12 |        10 |        10 |        26 |
|              Improvement %               |       -23 |       -31 |       -33 |       -30 |       -30 |       -24 |       -24 |        26 |

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
|                  freddy                  |       339 |       339 |       339 |       340 |       340 |       345 |       345 |        61 |
|                  jbird                   |       251 |       252 |       252 |       252 |       252 |       261 |       261 |        87 |
|                    Δ                     |       -88 |       -87 |       -87 |       -88 |       -88 |       -84 |       -84 |        26 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        24 |        26 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       183 |       199 |       205 |       208 |       210 |       222 |       246 |      4148 |
|                  jbird                   |       116 |       123 |       129 |       134 |       139 |       159 |       272 |      6039 |
|                    Δ                     |       -67 |       -76 |       -76 |       -74 |       -71 |       -63 |        26 |      1891 |
|              Improvement %               |        37 |        38 |        37 |        36 |        34 |        28 |       -11 |      1891 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       200 |       206 |       210 |       212 |       224 |       248 |      4148 |
|                  jbird                   |       118 |       125 |       131 |       135 |       140 |       159 |       229 |      6039 |
|                    Δ                     |       -66 |       -75 |       -75 |       -75 |       -72 |       -65 |       -19 |      1891 |
|              Improvement %               |        36 |        38 |        36 |        36 |        34 |        29 |         8 |      1891 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5464 |      5043 |      4887 |      4811 |      4755 |      4499 |      4066 |      4148 |
|                  jbird                   |      8599 |      8107 |      7743 |      7475 |      7219 |      6307 |      3681 |      6039 |
|                    Δ                     |      3135 |      3064 |      2856 |      2664 |      2464 |      1808 |      -385 |      1891 |
|              Improvement %               |        57 |        61 |        58 |        55 |        52 |        40 |        -9 |      1891 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4148 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6039 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      1891 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      1891 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4148 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6039 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1891 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1891 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4158 |      4159 |      4159 |      4159 |      4159 |      4223 |      4432 |      4148 |
|                  jbird                   |      2967 |      2968 |      2968 |      2968 |      2970 |      3041 |      3138 |      6039 |
|                    Δ                     |     -1191 |     -1191 |     -1191 |     -1191 |     -1189 |     -1182 |     -1294 |      1891 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        29 |      1891 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       201 |       207 |       210 |       213 |       226 |       255 |      4098 |
|                  jbird                   |       117 |       122 |       129 |       133 |       137 |       156 |       197 |      6074 |
|                    Δ                     |       -67 |       -79 |       -78 |       -77 |       -76 |       -70 |       -58 |      1976 |
|              Improvement %               |        36 |        39 |        38 |        37 |        36 |        31 |        23 |      1976 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       185 |       203 |       209 |       212 |       215 |       228 |       255 |      4098 |
|                  jbird                   |       119 |       123 |       130 |       135 |       138 |       158 |       187 |      6074 |
|                    Δ                     |       -66 |       -80 |       -79 |       -77 |       -77 |       -70 |       -68 |      1976 |
|              Improvement %               |        36 |        39 |        38 |        36 |        36 |        31 |        27 |      1976 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5443 |      4975 |      4831 |      4755 |      4691 |      4431 |      3917 |      4098 |
|                  jbird                   |      8526 |      8223 |      7771 |      7515 |      7319 |      6415 |      5080 |      6074 |
|                    Δ                     |      3083 |      3248 |      2940 |      2760 |      2628 |      1984 |      1163 |      1976 |
|              Improvement %               |        57 |        65 |        61 |        58 |        56 |        45 |        30 |      1976 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4098 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6074 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1976 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1976 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4098 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6074 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1976 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1976 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4231 |      4235 |      4235 |      4235 |      4235 |      4297 |      4505 |      4098 |
|                  jbird                   |      3022 |      3023 |      3023 |      3023 |      3027 |      3097 |      3227 |      6074 |
|                    Δ                     |     -1209 |     -1212 |     -1212 |     -1212 |     -1208 |     -1200 |     -1278 |      1976 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        28 |      1976 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        55 |        60 |        64 |        64 |        65 |        72 |        91 |     10311 |
|                  jbird                   |        57 |        59 |        63 |        65 |        66 |        77 |        94 |     10642 |
|                    Δ                     |         2 |        -1 |        -1 |         1 |         1 |         5 |         3 |       331 |
|              Improvement %               |        -4 |         2 |         2 |        -2 |        -2 |        -7 |        -3 |       331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        62 |        65 |        66 |        67 |        75 |        91 |     10311 |
|                  jbird                   |        58 |        60 |        64 |        67 |        68 |        79 |        96 |     10642 |
|                    Δ                     |         2 |        -2 |        -1 |         1 |         1 |         4 |         5 |       331 |
|              Improvement %               |        -4 |         3 |         2 |        -2 |        -1 |        -5 |        -5 |       331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        17 |        16 |        16 |        15 |        14 |        11 |     10311 |
|                  jbird                   |        18 |        17 |        16 |        15 |        15 |        13 |        11 |     10642 |
|                    Δ                     |         0 |         0 |         0 |        -1 |         0 |        -1 |         0 |       331 |
|              Improvement %               |         0 |         0 |         0 |        -6 |         0 |        -7 |         0 |       331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10311 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10642 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       331 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10311 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10642 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |       331 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1626 |      1626 |      1626 |      1627 |      1627 |      1659 |      1677 |     10311 |
|                  jbird                   |      1606 |      1607 |      1607 |      1607 |      1607 |      1635 |      1714 |     10642 |
|                    Δ                     |       -20 |       -19 |       -19 |       -20 |       -20 |       -24 |        37 |       331 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |        -2 |       331 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        99 |       101 |       104 |       105 |       113 |       136 |      7358 |
|                  jbird                   |        86 |        93 |        98 |       101 |       105 |       117 |       277 |      7757 |
|                    Δ                     |        -4 |        -6 |        -3 |        -3 |         0 |         4 |       141 |       399 |
|              Improvement %               |         4 |         6 |         3 |         3 |         0 |        -4 |      -104 |       399 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        91 |       100 |       103 |       105 |       106 |       116 |       132 |      7358 |
|                  jbird                   |        87 |        95 |       100 |       103 |       106 |       118 |       170 |      7757 |
|                    Δ                     |        -4 |        -5 |        -3 |        -2 |         0 |         2 |        38 |       399 |
|              Improvement %               |         4 |         5 |         3 |         2 |         0 |        -2 |       -29 |       399 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11121 |     10151 |      9895 |      9655 |      9567 |      8863 |      7376 |      7358 |
|                  jbird                   |     11690 |     10727 |     10191 |      9895 |      9535 |      8567 |      3615 |      7757 |
|                    Δ                     |       569 |       576 |       296 |       240 |       -32 |      -296 |     -3761 |       399 |
|              Improvement %               |         5 |         6 |         3 |         2 |         0 |        -3 |       -51 |       399 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7358 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7757 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       399 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       399 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7358 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7757 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       399 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       399 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2660 |      2662 |      2662 |      2662 |      2664 |      2683 |      2826 |      7358 |
|                  jbird                   |      2558 |      2560 |      2560 |      2560 |      2560 |      2574 |      2777 |      7757 |
|                    Δ                     |      -102 |      -102 |      -102 |      -102 |      -104 |      -109 |       -49 |       399 |
|              Improvement %               |         4 |         4 |         4 |         4 |         4 |         4 |         2 |       399 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        88 |        94 |        95 |        98 |       109 |       133 |      7908 |
|                  jbird                   |        55 |        59 |        63 |        64 |        65 |        74 |       170 |     10766 |
|                    Δ                     |       -29 |       -29 |       -31 |       -31 |       -33 |       -35 |        37 |      2858 |
|              Improvement %               |        35 |        33 |        33 |        33 |        34 |        32 |       -28 |      2858 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        90 |        96 |        96 |        99 |       111 |       137 |      7908 |
|                  jbird                   |        57 |        60 |        64 |        65 |        66 |        76 |       156 |     10766 |
|                    Δ                     |       -28 |       -30 |       -32 |       -31 |       -33 |       -35 |        19 |      2858 |
|              Improvement %               |        33 |        33 |        33 |        32 |        33 |        32 |       -14 |      2858 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        11 |        10 |         9 |         8 |      7908 |
|                  jbird                   |        18 |        17 |        16 |        16 |        15 |        13 |         6 |     10766 |
|                    Δ                     |         6 |         6 |         5 |         5 |         5 |         4 |        -2 |      2858 |
|              Improvement %               |        50 |        55 |        45 |        45 |        50 |        44 |       -25 |      2858 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      7908 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10766 |
|                    Δ                     |         0 |         1 |         0 |         0 |         0 |         0 |         0 |      2858 |
|              Improvement %               |         0 |        -4 |         0 |         0 |         0 |         0 |         0 |      2858 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7908 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10766 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2858 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2858 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1801 |      1801 |      1801 |      1801 |      1801 |      1816 |      1937 |      7908 |
|                  jbird                   |      1572 |      1573 |      1573 |      1573 |      1573 |      1578 |      1696 |     10766 |
|                    Δ                     |      -229 |      -228 |      -228 |      -228 |      -228 |      -238 |      -241 |      2858 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        12 |      2858 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       326 |       361 |       367 |       375 |       386 |       415 |       460 |      2453 |
|                  jbird                   |        74 |        78 |        83 |        86 |        91 |       103 |       172 |      8413 |
|                    Δ                     |      -252 |      -283 |      -284 |      -289 |      -295 |      -312 |      -288 |      5960 |
|              Improvement %               |        77 |        78 |        77 |        77 |        76 |        75 |        63 |      5960 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       328 |       363 |       369 |       376 |       388 |       417 |       459 |      2453 |
|                  jbird                   |        76 |        79 |        85 |        87 |        93 |       105 |       178 |      8413 |
|                    Δ                     |      -252 |      -284 |      -284 |      -289 |      -295 |      -312 |      -281 |      5960 |
|              Improvement %               |        77 |        78 |        77 |        77 |        76 |        75 |        61 |      5960 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3064 |      2767 |      2725 |      2671 |      2595 |      2413 |      2176 |      2453 |
|                  jbird                   |     13460 |     12879 |     12047 |     11647 |     10999 |      9687 |      5807 |      8413 |
|                    Δ                     |     10396 |     10112 |      9322 |      8976 |      8404 |      7274 |      3631 |      5960 |
|              Improvement %               |       339 |       365 |       342 |       336 |       324 |       301 |       167 |      5960 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      2453 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      8413 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5960 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5960 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      5701 |      2453 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      8413 |
|                    Δ                     |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |     -5652 |      5960 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      5960 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8327 |      8331 |      8331 |      8331 |      8335 |      8757 |      8774 |      2453 |
|                  jbird                   |      1464 |      1464 |      1464 |      1464 |      1465 |      1479 |      1601 |      8413 |
|                    Δ                     |     -6863 |     -6867 |     -6867 |     -6867 |     -6870 |     -7278 |     -7173 |      5960 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        83 |        82 |      5960 |

<p>
</details>

