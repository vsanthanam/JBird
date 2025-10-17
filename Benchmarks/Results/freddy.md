# JBird vs. Freddy 

```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2961 |      3195 |      3215 |      3234 |      3258 |      4276 |      6130 |       305 |
|                  jbird                   |      1893 |      2057 |      2073 |      2087 |      2109 |      2847 |      3757 |       469 |
|                    Δ                     |     -1068 |     -1138 |     -1142 |     -1147 |     -1149 |     -1429 |     -2373 |       164 |
|              Improvement %               |        36 |        36 |        36 |        35 |        35 |        33 |        39 |       164 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2967 |      3197 |      3217 |      3236 |      3258 |      4284 |      6137 |       305 |
|                  jbird                   |      1894 |      2058 |      2074 |      2089 |      2111 |      2851 |      3761 |       469 |
|                    Δ                     |     -1073 |     -1139 |     -1143 |     -1147 |     -1147 |     -1433 |     -2376 |       164 |
|              Improvement %               |        36 |        36 |        36 |        35 |        35 |        33 |        39 |       164 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       313 |       311 |       309 |       307 |       234 |       163 |       305 |
|                  jbird                   |       528 |       486 |       483 |       479 |       474 |       351 |       266 |       469 |
|                    Δ                     |       190 |       173 |       172 |       170 |       167 |       117 |       103 |       164 |
|              Improvement %               |        56 |        55 |        55 |        55 |        54 |        50 |        63 |       164 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       305 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       469 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       164 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       164 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       305 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       469 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       164 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       164 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        66 |        67 |       305 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       469 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       -17 |       164 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        25 |       164 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2984 |      3242 |      3283 |      3314 |      3342 |      3404 |      3490 |       302 |
|                  jbird                   |      1935 |      2072 |      2107 |      2163 |      2292 |      2343 |      2368 |       460 |
|                    Δ                     |     -1049 |     -1170 |     -1176 |     -1151 |     -1050 |     -1061 |     -1122 |       158 |
|              Improvement %               |        35 |        36 |        36 |        35 |        31 |        31 |        32 |       158 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2986 |      3246 |      3287 |      3318 |      3344 |      3410 |      3496 |       302 |
|                  jbird                   |      1936 |      2074 |      2109 |      2165 |      2296 |      2345 |      2360 |       460 |
|                    Δ                     |     -1050 |     -1172 |     -1178 |     -1153 |     -1048 |     -1065 |     -1136 |       158 |
|              Improvement %               |        35 |        36 |        36 |        35 |        31 |        31 |        32 |       158 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       335 |       308 |       305 |       302 |       299 |       294 |       287 |       302 |
|                  jbird                   |       517 |       483 |       475 |       462 |       436 |       427 |       422 |       460 |
|                    Δ                     |       182 |       175 |       170 |       160 |       137 |       133 |       135 |       158 |
|              Improvement %               |        54 |        57 |        56 |        53 |        46 |        45 |        47 |       158 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       302 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       460 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       158 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       158 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       302 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       460 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       158 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       158 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        67 |        67 |        68 |        68 |       302 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        51 |       460 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -19 |       -17 |       158 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        28 |        25 |       158 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       719 |       791 |       798 |       806 |       828 |       877 |       923 |      1187 |
|                  jbird                   |       468 |       513 |       516 |       527 |       543 |       559 |       580 |      1790 |
|                    Δ                     |      -251 |      -278 |      -282 |      -279 |      -285 |      -318 |      -343 |       603 |
|              Improvement %               |        35 |        35 |        35 |        35 |        34 |        36 |        37 |       603 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       720 |       793 |       799 |       808 |       830 |       879 |       924 |      1187 |
|                  jbird                   |       469 |       514 |       518 |       529 |       545 |       561 |       575 |      1790 |
|                    Δ                     |      -251 |      -279 |      -281 |      -279 |      -285 |      -318 |      -349 |       603 |
|              Improvement %               |        35 |        35 |        35 |        35 |        34 |        36 |        38 |       603 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1391 |      1264 |      1254 |      1240 |      1208 |      1141 |      1083 |      1187 |
|                  jbird                   |      2139 |      1952 |      1937 |      1897 |      1842 |      1789 |      1723 |      1790 |
|                    Δ                     |       748 |       688 |       683 |       657 |       634 |       648 |       640 |       603 |
|              Improvement %               |        54 |        54 |        54 |        53 |        52 |        57 |        59 |       603 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1187 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1790 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       603 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       603 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1187 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1790 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       603 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       603 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1187 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1790 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       603 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       603 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       758 |       831 |       837 |       842 |       848 |       876 |       941 |      1139 |
|                  jbird                   |       466 |       513 |       525 |       557 |       572 |       585 |       607 |      1753 |
|                    Δ                     |      -292 |      -318 |      -312 |      -285 |      -276 |      -291 |      -334 |       614 |
|              Improvement %               |        39 |        38 |        37 |        34 |        33 |        33 |        35 |       614 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       760 |       833 |       838 |       843 |       850 |       878 |       943 |      1139 |
|                  jbird                   |       467 |       515 |       526 |       559 |       573 |       587 |       608 |      1753 |
|                    Δ                     |      -293 |      -318 |      -312 |      -284 |      -277 |      -291 |      -335 |       614 |
|              Improvement %               |        39 |        38 |        37 |        34 |        33 |        33 |        36 |       614 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1319 |      1203 |      1196 |      1188 |      1179 |      1142 |      1062 |      1139 |
|                  jbird                   |      2147 |      1950 |      1907 |      1795 |      1750 |      1711 |      1648 |      1753 |
|                    Δ                     |       828 |       747 |       711 |       607 |       571 |       569 |       586 |       614 |
|              Improvement %               |        63 |        62 |        59 |        51 |        48 |        50 |        55 |       614 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1139 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1753 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       614 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       614 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1139 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1753 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       614 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       614 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1139 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        13 |        13 |      1753 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |        -4 |       614 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        24 |        24 |       614 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1477 |      1602 |      1612 |      1623 |      1634 |      1669 |      1728 |       605 |
|                  jbird                   |       937 |      1026 |      1037 |      1051 |      1061 |      1084 |      1111 |       928 |
|                    Δ                     |      -540 |      -576 |      -575 |      -572 |      -573 |      -585 |      -617 |       323 |
|              Improvement %               |        37 |        36 |        36 |        35 |        35 |        35 |        36 |       323 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1479 |      1603 |      1614 |      1625 |      1636 |      1671 |      1729 |       605 |
|                  jbird                   |       938 |      1028 |      1040 |      1053 |      1062 |      1086 |      1112 |       928 |
|                    Δ                     |      -541 |      -575 |      -574 |      -572 |      -574 |      -585 |      -617 |       323 |
|              Improvement %               |        37 |        36 |        36 |        35 |        35 |        35 |        36 |       323 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       677 |       625 |       621 |       616 |       612 |       599 |       579 |       605 |
|                  jbird                   |      1067 |       975 |       964 |       952 |       943 |       922 |       900 |       928 |
|                    Δ                     |       390 |       350 |       343 |       336 |       331 |       323 |       321 |       323 |
|              Improvement %               |        58 |        56 |        55 |        55 |        54 |        54 |        55 |       323 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       605 |
|                  jbird                   |        26 |        29 |        29 |        29 |        29 |        29 |        29 |       928 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       323 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       323 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       605 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       928 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       323 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       323 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       605 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       928 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       323 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       323 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1479 |      1616 |      1625 |      1634 |      1649 |      1682 |      1728 |       600 |
|                  jbird                   |       946 |      1040 |      1062 |      1076 |      1100 |      1149 |      1175 |       908 |
|                    Δ                     |      -533 |      -576 |      -563 |      -558 |      -549 |      -533 |      -553 |       308 |
|              Improvement %               |        36 |        36 |        35 |        34 |        33 |        32 |        32 |       308 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1480 |      1618 |      1627 |      1637 |      1651 |      1684 |      1729 |       600 |
|                  jbird                   |       948 |      1042 |      1063 |      1078 |      1102 |      1151 |      1181 |       908 |
|                    Δ                     |      -532 |      -576 |      -564 |      -559 |      -549 |      -533 |      -548 |       308 |
|              Improvement %               |        36 |        36 |        35 |        34 |        33 |        32 |        32 |       308 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       676 |       619 |       616 |       612 |       607 |       594 |       579 |       600 |
|                  jbird                   |      1057 |       961 |       942 |       929 |       909 |       871 |       851 |       908 |
|                    Δ                     |       381 |       342 |       326 |       317 |       302 |       277 |       272 |       308 |
|              Improvement %               |        56 |        55 |        53 |        52 |        50 |        47 |        47 |       308 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       600 |
|                  jbird                   |        26 |        29 |        29 |        29 |        29 |        29 |        29 |       908 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       308 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       308 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       600 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       908 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       308 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       308 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       600 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        26 |       908 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -8 |       308 |
|              Improvement %               |        24 |        24 |        24 |        24 |        24 |        26 |        24 |       308 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        62 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        90 |
|                    Δ                     |        -4 |        -5 |        -5 |        -5 |        -5 |        -6 |        -6 |        28 |
|              Improvement %               |        27 |        31 |        31 |        31 |        31 |        35 |        35 |        28 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        62 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |        90 |
|                    Δ                     |        -4 |        -5 |        -5 |        -5 |        -5 |        -6 |        -6 |        28 |
|              Improvement %               |        27 |        31 |        31 |        31 |        31 |        35 |        35 |        28 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        63 |        62 |        62 |        61 |        60 |        60 |        62 |
|                  jbird                   |        95 |        91 |        91 |        89 |        88 |        87 |        87 |        90 |
|                    Δ                     |        30 |        28 |        29 |        27 |        27 |        27 |        27 |        28 |
|              Improvement %               |        46 |        44 |        47 |        44 |        44 |        45 |        45 |        28 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        37 |        42 |        42 |        42 |        42 |        42 |        42 |        62 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        90 |
|                    Δ                     |        -9 |        10 |        10 |        10 |        10 |        10 |        10 |        28 |
|              Improvement %               |        24 |       -24 |       -24 |       -24 |       -24 |       -24 |       -24 |        28 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        62 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        90 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        28 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        28 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       328 |       329 |       329 |       329 |       330 |       333 |       333 |        62 |
|                  jbird                   |       247 |       251 |       251 |       251 |       251 |       260 |       260 |        90 |
|                    Δ                     |       -81 |       -78 |       -78 |       -78 |       -79 |       -73 |       -73 |        28 |
|              Improvement %               |        25 |        24 |        24 |        24 |        24 |        22 |        22 |        28 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        -5 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        29 |        29 |        29 |        28 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        -5 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        29 |        29 |        29 |        28 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        62 |        61 |        60 |        60 |        59 |        59 |        61 |
|                  jbird                   |        94 |        91 |        90 |        88 |        85 |        85 |        85 |        89 |
|                    Δ                     |        30 |        29 |        29 |        28 |        25 |        26 |        26 |        28 |
|              Improvement %               |        47 |        47 |        48 |        47 |        42 |        44 |        44 |        28 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        43 |        43 |        43 |        43 |        43 |        43 |        61 |
|                  jbird                   |        28 |        51 |        51 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |        -7 |         8 |         8 |         9 |         9 |         9 |         9 |        28 |
|              Improvement %               |        20 |       -19 |       -19 |       -21 |       -21 |       -21 |       -21 |        28 |

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
|                  freddy                  |       334 |       334 |       334 |       335 |       336 |       338 |       338 |        61 |
|                  jbird                   |       255 |       255 |       255 |       255 |       256 |       264 |       264 |        89 |
|                    Δ                     |       -79 |       -79 |       -79 |       -80 |       -80 |       -74 |       -74 |        28 |
|              Improvement %               |        24 |        24 |        24 |        24 |        24 |        22 |        22 |        28 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       182 |       198 |       204 |       207 |       209 |       218 |       246 |      4158 |
|                  jbird                   |       116 |       128 |       132 |       137 |       148 |       154 |       175 |      5909 |
|                    Δ                     |       -66 |       -70 |       -72 |       -70 |       -61 |       -64 |       -71 |      1751 |
|              Improvement %               |        36 |        35 |        35 |        34 |        29 |        29 |        29 |      1751 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       200 |       205 |       208 |       210 |       221 |       248 |      4158 |
|                  jbird                   |       117 |       129 |       134 |       139 |       149 |       155 |       174 |      5909 |
|                    Δ                     |       -67 |       -71 |       -71 |       -69 |       -61 |       -66 |       -74 |      1751 |
|              Improvement %               |        36 |        36 |        35 |        33 |        29 |        30 |        30 |      1751 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5484 |      5051 |      4907 |      4843 |      4791 |      4579 |      4057 |      4158 |
|                  jbird                   |      8633 |      7835 |      7563 |      7291 |      6771 |      6507 |      5714 |      5909 |
|                    Δ                     |      3149 |      2784 |      2656 |      2448 |      1980 |      1928 |      1657 |      1751 |
|              Improvement %               |        57 |        55 |        54 |        51 |        41 |        42 |        41 |      1751 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4158 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5909 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1751 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1751 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4158 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5909 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1751 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1751 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4132 |      4133 |      4133 |      4133 |      4135 |      4198 |      4338 |      4158 |
|                  jbird                   |      3021 |      3023 |      3023 |      3023 |      3023 |      3095 |      3192 |      5909 |
|                    Δ                     |     -1111 |     -1110 |     -1110 |     -1110 |     -1112 |     -1103 |     -1146 |      1751 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        26 |      1751 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       199 |       205 |       208 |       213 |       224 |       308 |      4133 |
|                  jbird                   |       119 |       130 |       134 |       139 |       143 |       151 |       180 |      5855 |
|                    Δ                     |       -61 |       -69 |       -71 |       -69 |       -70 |       -73 |      -128 |      1722 |
|              Improvement %               |        34 |        35 |        35 |        33 |        33 |        33 |        42 |      1722 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       182 |       200 |       207 |       210 |       215 |       226 |       310 |      4133 |
|                  jbird                   |       120 |       132 |       136 |       141 |       145 |       154 |       174 |      5855 |
|                    Δ                     |       -62 |       -68 |       -71 |       -69 |       -70 |       -72 |      -136 |      1722 |
|              Improvement %               |        34 |        34 |        34 |        33 |        33 |        32 |        44 |      1722 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5548 |      5027 |      4879 |      4807 |      4703 |      4459 |      3245 |      4133 |
|                  jbird                   |      8406 |      7687 |      7459 |      7183 |      6975 |      6615 |      5571 |      5855 |
|                    Δ                     |      2858 |      2660 |      2580 |      2376 |      2272 |      2156 |      2326 |      1722 |
|              Improvement %               |        52 |        53 |        53 |        49 |        48 |        48 |        72 |      1722 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4133 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5855 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1722 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1722 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4133 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5855 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1722 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1722 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4177 |      4178 |      4180 |      4180 |      4180 |      4243 |      4417 |      4133 |
|                  jbird                   |      3066 |      3066 |      3066 |      3068 |      3068 |      3140 |      3236 |      5855 |
|                    Δ                     |     -1111 |     -1112 |     -1114 |     -1112 |     -1112 |     -1103 |     -1181 |      1722 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        27 |      1722 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        61 |        63 |        64 |        66 |        73 |        94 |     10322 |
|                  jbird                   |        48 |        50 |        54 |        55 |        56 |        63 |        89 |     11861 |
|                    Δ                     |        -6 |       -11 |        -9 |        -9 |       -10 |       -10 |        -5 |      1539 |
|              Improvement %               |        11 |        18 |        14 |        14 |        15 |        14 |         5 |      1539 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        55 |        62 |        65 |        66 |        67 |        75 |        86 |     10322 |
|                  jbird                   |        49 |        51 |        55 |        57 |        58 |        65 |        87 |     11861 |
|                    Δ                     |        -6 |       -11 |       -10 |        -9 |        -9 |       -10 |         1 |      1539 |
|              Improvement %               |        11 |        18 |        15 |        14 |        13 |        13 |        -1 |      1539 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        19 |        16 |        16 |        16 |        15 |        14 |        11 |     10322 |
|                  jbird                   |        21 |        20 |        19 |        18 |        18 |        16 |        11 |     11861 |
|                    Δ                     |         2 |         4 |         3 |         2 |         3 |         2 |         0 |      1539 |
|              Improvement %               |        11 |        25 |        19 |        12 |        20 |        14 |         0 |      1539 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10322 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11861 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1539 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1539 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10322 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11861 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1539 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1539 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1606 |      1607 |      1607 |      1607 |      1607 |      1639 |      1675 |     10322 |
|                  jbird                   |      1322 |      1322 |      1322 |      1322 |      1322 |      1351 |      1424 |     11861 |
|                    Δ                     |      -284 |      -285 |      -285 |      -285 |      -285 |      -288 |      -251 |      1539 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        15 |      1539 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       100 |       110 |       114 |       115 |       117 |       130 |       148 |      6783 |
|                  jbird                   |        88 |        94 |        99 |       100 |       101 |       110 |       129 |      7778 |
|                    Δ                     |       -12 |       -16 |       -15 |       -15 |       -16 |       -20 |       -19 |       995 |
|              Improvement %               |        12 |        15 |        13 |        13 |        14 |        15 |        13 |       995 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       102 |       111 |       115 |       116 |       118 |       132 |       150 |      6783 |
|                  jbird                   |        89 |        96 |       100 |       102 |       102 |       112 |       129 |      7778 |
|                    Δ                     |       -13 |       -15 |       -15 |       -14 |       -16 |       -20 |       -21 |       995 |
|              Improvement %               |        13 |        14 |        13 |        12 |        14 |        15 |        14 |       995 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9975 |      9135 |      8807 |      8703 |      8559 |      7683 |      6753 |      6783 |
|                  jbird                   |     11429 |     10607 |     10119 |      9999 |      9943 |      9111 |      7727 |      7778 |
|                    Δ                     |      1454 |      1472 |      1312 |      1296 |      1384 |      1428 |       974 |       995 |
|              Improvement %               |        15 |        16 |        15 |        15 |        16 |        19 |        14 |       995 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6783 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7778 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       995 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       995 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      6783 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7778 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       995 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       995 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2710 |      2712 |      2712 |      2712 |      2712 |      2732 |      2896 |      6783 |
|                  jbird                   |      2666 |      2666 |      2666 |      2666 |      2666 |      2677 |      2909 |      7778 |
|                    Δ                     |       -44 |       -46 |       -46 |       -46 |       -46 |       -55 |        13 |       995 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         0 |       995 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        70 |        74 |        78 |        78 |        79 |        87 |       135 |      9058 |
|                  jbird                   |        52 |        57 |        59 |        60 |        61 |        68 |       115 |     11135 |
|                    Δ                     |       -18 |       -17 |       -19 |       -18 |       -18 |       -19 |       -20 |      2077 |
|              Improvement %               |        26 |        23 |        24 |        23 |        23 |        22 |        15 |      2077 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        76 |        79 |        80 |        81 |        89 |       126 |      9058 |
|                  jbird                   |        54 |        59 |        61 |        61 |        63 |        70 |       111 |     11135 |
|                    Δ                     |       -17 |       -17 |       -18 |       -19 |       -18 |       -19 |       -15 |      2077 |
|              Improvement %               |        24 |        22 |        23 |        24 |        22 |        21 |        12 |      2077 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        13 |        13 |        13 |        13 |        11 |         7 |      9058 |
|                  jbird                   |        19 |        17 |        17 |        17 |        16 |        15 |         9 |     11135 |
|                    Δ                     |         5 |         4 |         4 |         4 |         3 |         4 |         2 |      2077 |
|              Improvement %               |        36 |        31 |        31 |        31 |        23 |        36 |        29 |      2077 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      9058 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11135 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2077 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2077 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9058 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11135 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2077 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2077 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1664 |      1664 |      1664 |      1665 |      1665 |      1672 |      1766 |      9058 |
|                  jbird                   |      1625 |      1625 |      1625 |      1625 |      1625 |      1631 |      1745 |     11135 |
|                    Δ                     |       -39 |       -39 |       -39 |       -40 |       -40 |       -41 |       -21 |      2077 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         1 |      2077 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       101 |       115 |       120 |       122 |       124 |       132 |       146 |      6442 |
|                  jbird                   |        27 |        31 |        32 |        33 |        35 |        40 |        73 |     15286 |
|                    Δ                     |       -74 |       -84 |       -88 |       -89 |       -89 |       -92 |       -73 |      8844 |
|              Improvement %               |        73 |        73 |        73 |        73 |        72 |        70 |        50 |      8844 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       103 |       116 |       122 |       124 |       126 |       134 |       148 |      6442 |
|                  jbird                   |        29 |        32 |        33 |        34 |        36 |        42 |        68 |     15286 |
|                    Δ                     |       -74 |       -84 |       -89 |       -90 |       -90 |       -92 |       -80 |      8844 |
|              Improvement %               |        72 |        72 |        73 |        73 |        71 |        69 |        54 |      8844 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9872 |      8711 |      8319 |      8175 |      8059 |      7555 |      6847 |      6442 |
|                  jbird                   |     36642 |     32575 |     31711 |     30703 |     28815 |     24927 |     13746 |     15286 |
|                    Δ                     |     26770 |     23864 |     23392 |     22528 |     20756 |     17372 |      6899 |      8844 |
|              Improvement %               |       271 |       274 |       281 |       276 |       258 |       230 |       101 |      8844 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6442 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15286 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      8844 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      8844 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6442 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15286 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8844 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8844 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2101 |      2103 |      2103 |      2103 |      2103 |      2118 |      2238 |      6442 |
|                  jbird                   |       878 |       879 |       879 |       879 |       879 |       885 |       946 |     15286 |
|                    Δ                     |     -1223 |     -1224 |     -1224 |     -1224 |     -1224 |     -1233 |     -1292 |      8844 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        58 |      8844 |

<p>
</details>

