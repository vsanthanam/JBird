# Freddy vs. JBird

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3024 |      3277 |      3301 |      3332 |      3443 |      4264 |      4376 |       295 |
|                  jbird                   |      1869 |      2016 |      2037 |      2081 |      2179 |      2623 |      2876 |       474 |
|                    Δ                     |     -1155 |     -1261 |     -1264 |     -1251 |     -1264 |     -1641 |     -1500 |       179 |
|              Improvement %               |        38 |        38 |        38 |        38 |        37 |        38 |        34 |       179 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3026 |      3279 |      3303 |      3336 |      3445 |      4264 |      4382 |       295 |
|                  jbird                   |      1867 |      2016 |      2038 |      2084 |      2179 |      2634 |      2881 |       474 |
|                    Δ                     |     -1159 |     -1263 |     -1265 |     -1252 |     -1266 |     -1630 |     -1501 |       179 |
|              Improvement %               |        38 |        39 |        38 |        38 |        37 |        38 |        34 |       179 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       331 |       305 |       303 |       300 |       291 |       235 |       228 |       295 |
|                  jbird                   |       535 |       496 |       491 |       481 |       459 |       381 |       348 |       474 |
|                    Δ                     |       204 |       191 |       188 |       181 |       168 |       146 |       120 |       179 |
|              Improvement %               |        62 |        63 |        62 |        60 |        58 |        62 |        53 |       179 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       295 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       474 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       179 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       179 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       295 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       474 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       179 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       179 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        67 |        68 |       295 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       474 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       179 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        26 |       179 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3042 |      3303 |      3324 |      3351 |      3394 |      3471 |      3560 |       297 |
|                  jbird                   |      1895 |      2034 |      2076 |      2116 |      2167 |      2275 |      2311 |       472 |
|                    Δ                     |     -1147 |     -1269 |     -1248 |     -1235 |     -1227 |     -1196 |     -1249 |       175 |
|              Improvement %               |        38 |        38 |        38 |        37 |        36 |        34 |        35 |       175 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3043 |      3305 |      3326 |      3355 |      3396 |      3473 |      3561 |       297 |
|                  jbird                   |      1888 |      2035 |      2077 |      2116 |      2169 |      2277 |      2313 |       472 |
|                    Δ                     |     -1155 |     -1270 |     -1249 |     -1239 |     -1227 |     -1196 |     -1248 |       175 |
|              Improvement %               |        38 |        38 |        38 |        37 |        36 |        34 |        35 |       175 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       303 |       301 |       299 |       295 |       288 |       281 |       297 |
|                  jbird                   |       528 |       492 |       482 |       473 |       462 |       440 |       433 |       472 |
|                    Δ                     |       199 |       189 |       181 |       174 |       167 |       152 |       152 |       175 |
|              Improvement %               |        60 |        62 |        60 |        58 |        57 |        53 |        54 |       175 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       297 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       472 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       175 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       175 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       297 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       472 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       175 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       175 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        68 |        68 |        68 |        69 |       297 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       472 |
|                    Δ                     |       -18 |       -18 |       -18 |       -19 |       -19 |       -18 |       -18 |       175 |
|              Improvement %               |        27 |        27 |        27 |        28 |        28 |        26 |        26 |       175 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       730 |       801 |       809 |       817 |       827 |       867 |       899 |      1176 |
|                  jbird                   |       465 |       504 |       511 |       521 |       530 |       559 |       595 |      1823 |
|                    Δ                     |      -265 |      -297 |      -298 |      -296 |      -297 |      -308 |      -304 |       647 |
|              Improvement %               |        36 |        37 |        37 |        36 |        36 |        36 |        34 |       647 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       732 |       803 |       811 |       819 |       829 |       871 |       906 |      1176 |
|                  jbird                   |       466 |       506 |       513 |       522 |       531 |       560 |       592 |      1823 |
|                    Δ                     |      -266 |      -297 |      -298 |      -297 |      -298 |      -311 |      -314 |       647 |
|              Improvement %               |        36 |        37 |        37 |        36 |        36 |        36 |        35 |       647 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1369 |      1248 |      1236 |      1224 |      1209 |      1153 |      1113 |      1176 |
|                  jbird                   |      2150 |      1984 |      1957 |      1919 |      1886 |      1789 |      1679 |      1823 |
|                    Δ                     |       781 |       736 |       721 |       695 |       677 |       636 |       566 |       647 |
|              Improvement %               |        57 |        59 |        58 |        57 |        56 |        55 |        51 |       647 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1176 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1823 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       647 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       647 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1176 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1823 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       647 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       647 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1176 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1823 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       647 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       647 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       746 |       814 |       820 |       828 |       836 |       866 |       887 |      1161 |
|                  jbird                   |       465 |       507 |       514 |       522 |       535 |       556 |       580 |      1815 |
|                    Δ                     |      -281 |      -307 |      -306 |      -306 |      -301 |      -310 |      -307 |       654 |
|              Improvement %               |        38 |        38 |        37 |        37 |        36 |        36 |        35 |       654 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       747 |       815 |       822 |       830 |       838 |       866 |       888 |      1161 |
|                  jbird                   |       466 |       508 |       515 |       524 |       536 |       557 |       581 |      1815 |
|                    Δ                     |      -281 |      -307 |      -307 |      -306 |      -302 |      -309 |      -307 |       654 |
|              Improvement %               |        38 |        38 |        37 |        37 |        36 |        36 |        35 |       654 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1341 |      1229 |      1219 |      1208 |      1196 |      1156 |      1128 |      1161 |
|                  jbird                   |      2151 |      1974 |      1947 |      1915 |      1871 |      1801 |      1726 |      1815 |
|                    Δ                     |       810 |       745 |       728 |       707 |       675 |       645 |       598 |       654 |
|              Improvement %               |        60 |        61 |        60 |        59 |        56 |        56 |        53 |       654 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1161 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1815 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       654 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       654 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1161 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1815 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       654 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       654 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1161 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1815 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       654 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       654 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1494 |      1621 |      1633 |      1647 |      1667 |      1821 |      1880 |       596 |
|                  jbird                   |       939 |      1015 |      1026 |      1036 |      1050 |      1092 |      1138 |       942 |
|                    Δ                     |      -555 |      -606 |      -607 |      -611 |      -617 |      -729 |      -742 |       346 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        40 |        39 |       346 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1496 |      1623 |      1635 |      1649 |      1670 |      1822 |      1881 |       596 |
|                  jbird                   |       940 |      1016 |      1028 |      1038 |      1051 |      1090 |      1141 |       942 |
|                    Δ                     |      -556 |      -607 |      -607 |      -611 |      -619 |      -732 |      -740 |       346 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        40 |        39 |       346 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       669 |       617 |       613 |       607 |       600 |       549 |       532 |       596 |
|                  jbird                   |      1065 |       985 |       975 |       965 |       953 |       917 |       879 |       942 |
|                    Δ                     |       396 |       368 |       362 |       358 |       353 |       368 |       347 |       346 |
|              Improvement %               |        59 |        60 |        59 |        59 |        59 |        67 |        65 |       346 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       596 |
|                  jbird                   |        26 |        28 |        28 |        29 |        29 |        29 |        29 |       942 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       346 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       346 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       596 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       942 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       346 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       346 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       596 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       942 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       346 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        26 |       346 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1502 |      1638 |      1650 |      1663 |      1678 |      1722 |      1738 |       591 |
|                  jbird                   |       943 |      1019 |      1033 |      1049 |      1065 |      1097 |      1154 |       934 |
|                    Δ                     |      -559 |      -619 |      -617 |      -614 |      -613 |      -625 |      -584 |       343 |
|              Improvement %               |        37 |        38 |        37 |        37 |        37 |        36 |        34 |       343 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1504 |      1640 |      1652 |      1665 |      1680 |      1724 |      1739 |       591 |
|                  jbird                   |       944 |      1020 |      1034 |      1050 |      1065 |      1098 |      1155 |       934 |
|                    Δ                     |      -560 |      -620 |      -618 |      -615 |      -615 |      -626 |      -584 |       343 |
|              Improvement %               |        37 |        38 |        37 |        37 |        37 |        36 |        34 |       343 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       666 |       611 |       606 |       601 |       596 |       581 |       575 |       591 |
|                  jbird                   |      1060 |       981 |       968 |       954 |       939 |       913 |       867 |       934 |
|                    Δ                     |       394 |       370 |       362 |       353 |       343 |       332 |       292 |       343 |
|              Improvement %               |        59 |        61 |        60 |        59 |        58 |        57 |        51 |       343 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       591 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       934 |
|                    Δ                     |         0 |         1 |         1 |         0 |         0 |         0 |         0 |       343 |
|              Improvement %               |         0 |        -4 |        -4 |         0 |         0 |         0 |         0 |       343 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       591 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       934 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       343 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       343 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        35 |       591 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       934 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       343 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        26 |       343 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        27 |
|              Improvement %               |        31 |        31 |        31 |        31 |        35 |        29 |        29 |        27 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        27 |
|              Improvement %               |        31 |        31 |        31 |        31 |        35 |        29 |        29 |        27 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        61 |        61 |        61 |        60 |        59 |        59 |        61 |
|                  jbird                   |        93 |        90 |        89 |        88 |        87 |        85 |        85 |        88 |
|                    Δ                     |        30 |        29 |        28 |        27 |        27 |        26 |        26 |        27 |
|              Improvement %               |        48 |        48 |        46 |        44 |        45 |        44 |        44 |        27 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        42 |        42 |        42 |        42 |        42 |        42 |        61 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |        -7 |        10 |        10 |        10 |        10 |        10 |        10 |        27 |
|              Improvement %               |        20 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |        27 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        27 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        27 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       333 |       333 |       334 |       334 |       334 |       338 |       338 |        61 |
|                  jbird                   |       249 |       249 |       249 |       250 |       250 |       258 |       258 |        88 |
|                    Δ                     |       -84 |       -84 |       -85 |       -84 |       -84 |       -80 |       -80 |        27 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        24 |        24 |        27 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        17 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -6 |        -5 |        -6 |        -6 |        -6 |        -5 |        -5 |        30 |
|              Improvement %               |        38 |        31 |        35 |        35 |        35 |        29 |        29 |        30 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        17 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -6 |        -5 |        -6 |        -6 |        -6 |        -5 |        -5 |        30 |
|              Improvement %               |        38 |        31 |        35 |        35 |        35 |        29 |        29 |        30 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        61 |        60 |        60 |        60 |        59 |        59 |        61 |
|                  jbird                   |        97 |        93 |        92 |        91 |        88 |        85 |        85 |        91 |
|                    Δ                     |        33 |        32 |        32 |        31 |        28 |        26 |        26 |        30 |
|              Improvement %               |        52 |        52 |        53 |        52 |        47 |        44 |        44 |        30 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        41 |        41 |        41 |        41 |        41 |        41 |        61 |
|                  jbird                   |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        91 |
|                    Δ                     |         8 |        11 |        11 |        11 |        11 |        11 |        11 |        30 |
|              Improvement %               |       -23 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |        30 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        91 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       338 |       339 |       339 |       339 |       344 |       344 |        61 |
|                  jbird                   |       249 |       249 |       249 |       249 |       253 |       257 |       257 |        91 |
|                    Δ                     |       -89 |       -89 |       -90 |       -90 |       -86 |       -87 |       -87 |        30 |
|              Improvement %               |        26 |        26 |        27 |        27 |        25 |        25 |        25 |        30 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       199 |       205 |       209 |       215 |       230 |       252 |      4128 |
|                  jbird                   |       115 |       121 |       129 |       131 |       138 |       151 |       179 |      6112 |
|                    Δ                     |       -69 |       -78 |       -76 |       -78 |       -77 |       -79 |       -73 |      1984 |
|              Improvement %               |        38 |        39 |        37 |        37 |        36 |        34 |        29 |      1984 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       185 |       200 |       207 |       211 |       217 |       229 |       254 |      4128 |
|                  jbird                   |       117 |       123 |       130 |       132 |       140 |       151 |       176 |      6112 |
|                    Δ                     |       -68 |       -77 |       -77 |       -79 |       -77 |       -78 |       -78 |      1984 |
|              Improvement %               |        37 |        38 |        37 |        37 |        35 |        34 |        31 |      1984 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5437 |      5035 |      4871 |      4783 |      4651 |      4355 |      3967 |      4128 |
|                  jbird                   |      8674 |      8263 |      7759 |      7639 |      7231 |      6635 |      5578 |      6112 |
|                    Δ                     |      3237 |      3228 |      2888 |      2856 |      2580 |      2280 |      1611 |      1984 |
|              Improvement %               |        60 |        64 |        59 |        60 |        55 |        52 |        41 |      1984 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4128 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6112 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1984 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1984 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4128 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6112 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1984 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1984 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4162 |      4164 |      4164 |      4164 |      4164 |      4227 |      4241 |      4128 |
|                  jbird                   |      3000 |      3000 |      3002 |      3002 |      3002 |      3074 |      3146 |      6112 |
|                    Δ                     |     -1162 |     -1164 |     -1162 |     -1162 |     -1162 |     -1153 |     -1095 |      1984 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        26 |      1984 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       200 |       207 |       211 |       215 |       231 |       256 |      4103 |
|                  jbird                   |       117 |       124 |       131 |       134 |       140 |       154 |       180 |      6017 |
|                    Δ                     |       -69 |       -76 |       -76 |       -77 |       -75 |       -77 |       -76 |      1914 |
|              Improvement %               |        37 |        38 |        37 |        36 |        35 |        33 |        30 |      1914 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       187 |       202 |       208 |       212 |       216 |       230 |       250 |      4103 |
|                  jbird                   |       118 |       125 |       133 |       136 |       141 |       153 |       184 |      6017 |
|                    Δ                     |       -69 |       -77 |       -75 |       -76 |       -75 |       -77 |       -66 |      1914 |
|              Improvement %               |        37 |        38 |        36 |        36 |        35 |        33 |        26 |      1914 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5391 |      4995 |      4831 |      4747 |      4663 |      4331 |      3908 |      4103 |
|                  jbird                   |      8544 |      8099 |      7619 |      7459 |      7175 |      6511 |      5550 |      6017 |
|                    Δ                     |      3153 |      3104 |      2788 |      2712 |      2512 |      2180 |      1642 |      1914 |
|              Improvement %               |        58 |        62 |        58 |        57 |        54 |        50 |        42 |      1914 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4103 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6017 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      1914 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      1914 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4103 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6017 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1914 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1914 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4236 |      4239 |      4239 |      4239 |      4239 |      4305 |      4316 |      4103 |
|                  jbird                   |      3048 |      3049 |      3049 |      3049 |      3049 |      3121 |      3194 |      6017 |
|                    Δ                     |     -1188 |     -1190 |     -1190 |     -1190 |     -1190 |     -1184 |     -1122 |      1914 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        26 |      1914 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        59 |        63 |        63 |        64 |        75 |       102 |     10406 |
|                  jbird                   |        48 |        49 |        51 |        54 |        56 |        65 |        89 |     12037 |
|                    Δ                     |        -6 |       -10 |       -12 |        -9 |        -8 |       -10 |       -13 |      1631 |
|              Improvement %               |        11 |        17 |        19 |        14 |        12 |        13 |        13 |      1631 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        60 |        64 |        65 |        66 |        76 |        94 |     10406 |
|                  jbird                   |        49 |        50 |        52 |        56 |        57 |        67 |        82 |     12037 |
|                    Δ                     |        -7 |       -10 |       -12 |        -9 |        -9 |        -9 |       -12 |      1631 |
|              Improvement %               |        12 |        17 |        19 |        14 |        14 |        12 |        13 |      1631 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        17 |        16 |        16 |        16 |        13 |        10 |     10406 |
|                  jbird                   |        21 |        20 |        20 |        18 |        18 |        15 |        11 |     12037 |
|                    Δ                     |         3 |         3 |         4 |         2 |         2 |         2 |         1 |      1631 |
|              Improvement %               |        17 |        18 |        25 |        12 |        12 |        15 |        10 |      1631 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10406 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     12037 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1631 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1631 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10406 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12037 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1631 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1631 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1615 |      1616 |      1616 |      1616 |      1616 |      1649 |      1663 |     10406 |
|                  jbird                   |      1309 |      1310 |      1310 |      1310 |      1310 |      1338 |      1363 |     12037 |
|                    Δ                     |      -306 |      -306 |      -306 |      -306 |      -306 |      -311 |      -300 |      1631 |
|              Improvement %               |        19 |        19 |        19 |        19 |        19 |        19 |        18 |      1631 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        97 |       101 |       102 |       105 |       118 |       150 |      7387 |
|                  jbird                   |        85 |        90 |        96 |        98 |        99 |       112 |       154 |      7951 |
|                    Δ                     |        -5 |        -7 |        -5 |        -4 |        -6 |        -6 |         4 |       564 |
|              Improvement %               |         6 |         7 |         5 |         4 |         6 |         5 |        -3 |       564 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        92 |        99 |       102 |       103 |       106 |       118 |       152 |      7387 |
|                  jbird                   |        87 |        91 |        97 |       100 |       101 |       112 |       158 |      7951 |
|                    Δ                     |        -5 |        -8 |        -5 |        -3 |        -5 |        -6 |         6 |       564 |
|              Improvement %               |         5 |         8 |         5 |         3 |         5 |         5 |        -4 |       564 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11091 |     10271 |      9911 |      9823 |      9543 |      8471 |      6680 |      7387 |
|                  jbird                   |     11702 |     11111 |     10439 |     10167 |     10063 |      8935 |      6494 |      7951 |
|                    Δ                     |       611 |       840 |       528 |       344 |       520 |       464 |      -186 |       564 |
|              Improvement %               |         6 |         8 |         5 |         4 |         5 |         5 |        -3 |       564 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7387 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7951 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       564 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       564 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7387 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7951 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       564 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       564 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2661 |      2662 |      2662 |      2662 |      2664 |      2683 |      2859 |      7387 |
|                  jbird                   |      2594 |      2595 |      2595 |      2595 |      2595 |      2609 |      2829 |      7951 |
|                    Δ                     |       -67 |       -67 |       -67 |       -67 |       -69 |       -74 |       -30 |       564 |
|              Improvement %               |         3 |         3 |         3 |         3 |         3 |         3 |         1 |       564 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        88 |        95 |        96 |        98 |       111 |       130 |      7856 |
|                  jbird                   |        55 |        58 |        62 |        63 |        64 |        75 |       139 |     10862 |
|                    Δ                     |       -29 |       -30 |       -33 |       -33 |       -34 |       -36 |         9 |      3006 |
|              Improvement %               |        35 |        34 |        35 |        34 |        35 |        32 |        -7 |      3006 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        86 |        90 |        96 |        97 |       100 |       110 |       133 |      7856 |
|                  jbird                   |        56 |        59 |        63 |        65 |        66 |        77 |       143 |     10862 |
|                    Δ                     |       -30 |       -31 |       -33 |       -32 |       -34 |       -33 |        10 |      3006 |
|              Improvement %               |        35 |        34 |        34 |        33 |        34 |        30 |        -8 |      3006 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        10 |        10 |         9 |         8 |      7856 |
|                  jbird                   |        18 |        17 |        16 |        16 |        16 |        13 |         7 |     10862 |
|                    Δ                     |         6 |         6 |         5 |         6 |         6 |         4 |        -1 |      3006 |
|              Improvement %               |        50 |        55 |        45 |        60 |        60 |        44 |       -12 |      3006 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7856 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10862 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3006 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3006 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7856 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10862 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      3006 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      3006 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1801 |      1801 |      1801 |      1817 |      1876 |      7856 |
|                  jbird                   |      1589 |      1589 |      1589 |      1589 |      1589 |      1597 |      1712 |     10862 |
|                    Δ                     |      -211 |      -212 |      -212 |      -212 |      -212 |      -220 |      -164 |      3006 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |         9 |      3006 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       103 |       114 |       119 |       122 |       125 |       136 |       240 |      6453 |
|                  jbird                   |        28 |        30 |        31 |        33 |        34 |        45 |        66 |     15201 |
|                    Δ                     |       -75 |       -84 |       -88 |       -89 |       -91 |       -91 |      -174 |      8748 |
|              Improvement %               |        73 |        74 |        74 |        73 |        73 |        67 |        72 |      8748 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       104 |       115 |       121 |       123 |       126 |       138 |       242 |      6453 |
|                  jbird                   |        29 |        32 |        33 |        35 |        36 |        47 |        60 |     15201 |
|                    Δ                     |       -75 |       -83 |       -88 |       -88 |       -90 |       -91 |      -182 |      8748 |
|              Improvement %               |        72 |        72 |        73 |        72 |        71 |        66 |        75 |      8748 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9725 |      8791 |      8399 |      8215 |      8019 |      7359 |      4163 |      6453 |
|                  jbird                   |     36199 |     33087 |     32143 |     30351 |     29279 |     22223 |     15038 |     15201 |
|                    Δ                     |     26474 |     24296 |     23744 |     22136 |     21260 |     14864 |     10875 |      8748 |
|              Improvement %               |       272 |       276 |       283 |       269 |       265 |       202 |       261 |      8748 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6453 |
|                  jbird                   |        25 |        25 |        25 |        26 |        26 |        26 |        26 |     15201 |
|                    Δ                     |         0 |         0 |         0 |         1 |         1 |         1 |         1 |      8748 |
|              Improvement %               |         0 |         0 |         0 |        -4 |        -4 |        -4 |        -4 |      8748 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6453 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15201 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8748 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8748 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2104 |      2105 |      2105 |      2105 |      2105 |      2120 |      2153 |      6453 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       941 |     15201 |
|                    Δ                     |     -1227 |     -1227 |     -1227 |     -1227 |     -1227 |     -1237 |     -1212 |      8748 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        56 |      8748 |

<p>
</details>

