# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3036 |      3301 |      3326 |      3379 |      3469 |      4116 |      4525 |       293 |
|                  jbird                   |      1871 |      2059 |      2079 |      2114 |      2171 |      2601 |      3233 |       466 |
|                    Δ                     |     -1165 |     -1242 |     -1247 |     -1265 |     -1298 |     -1515 |     -1292 |       173 |
|              Improvement %               |        38 |        38 |        37 |        37 |        37 |        37 |        29 |       173 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3037 |      3305 |      3328 |      3383 |      3478 |      4119 |      4530 |       293 |
|                  jbird                   |      1873 |      2062 |      2082 |      2116 |      2173 |      2603 |      3238 |       466 |
|                    Δ                     |     -1164 |     -1243 |     -1246 |     -1267 |     -1305 |     -1516 |     -1292 |       173 |
|              Improvement %               |        38 |        38 |        37 |        37 |        38 |        37 |        29 |       173 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       303 |       301 |       296 |       288 |       243 |       221 |       293 |
|                  jbird                   |       534 |       486 |       481 |       473 |       461 |       385 |       309 |       466 |
|                    Δ                     |       205 |       183 |       180 |       177 |       173 |       142 |        88 |       173 |
|              Improvement %               |        62 |        60 |        60 |        60 |        60 |        58 |        40 |       173 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       293 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       466 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       173 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       173 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       293 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       466 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       173 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       173 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        67 |        67 |        68 |        68 |       293 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       466 |
|                    Δ                     |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       173 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        29 |        28 |       173 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3100 |      3320 |      3348 |      3402 |      3488 |      3787 |      3983 |       293 |
|                  jbird                   |      1922 |      2103 |      2138 |      2185 |      2214 |      2310 |      2339 |       458 |
|                    Δ                     |     -1178 |     -1217 |     -1210 |     -1217 |     -1274 |     -1477 |     -1644 |       165 |
|              Improvement %               |        38 |        37 |        36 |        36 |        37 |        39 |        41 |       165 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3101 |      3324 |      3351 |      3406 |      3492 |      3793 |      3985 |       293 |
|                  jbird                   |      1924 |      2103 |      2140 |      2189 |      2216 |      2312 |      2341 |       458 |
|                    Δ                     |     -1177 |     -1221 |     -1211 |     -1217 |     -1276 |     -1481 |     -1644 |       165 |
|              Improvement %               |        38 |        37 |        36 |        36 |        37 |        39 |        41 |       165 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       323 |       301 |       299 |       294 |       287 |       264 |       251 |       293 |
|                  jbird                   |       520 |       476 |       468 |       458 |       452 |       433 |       427 |       458 |
|                    Δ                     |       197 |       175 |       169 |       164 |       165 |       169 |       176 |       165 |
|              Improvement %               |        61 |        58 |        57 |        56 |        57 |        64 |        70 |       165 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       293 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       458 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       165 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       165 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       293 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       458 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       165 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       165 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        68 |        68 |        68 |        68 |        69 |        69 |       293 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        50 |       458 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -19 |       -19 |       165 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        28 |        28 |       165 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       735 |       810 |       819 |       827 |       835 |       867 |       962 |      1163 |
|                  jbird                   |       464 |       511 |       518 |       528 |       537 |       566 |       589 |      1792 |
|                    Δ                     |      -271 |      -299 |      -301 |      -299 |      -298 |      -301 |      -373 |       629 |
|              Improvement %               |        37 |        37 |        37 |        36 |        36 |        35 |        39 |       629 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       736 |       812 |       821 |       828 |       838 |       869 |       963 |      1163 |
|                  jbird                   |       466 |       513 |       520 |       530 |       539 |       567 |       594 |      1792 |
|                    Δ                     |      -270 |      -299 |      -301 |      -298 |      -299 |      -302 |      -369 |       629 |
|              Improvement %               |        37 |        37 |        37 |        36 |        36 |        35 |        38 |       629 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1361 |      1234 |      1221 |      1210 |      1198 |      1153 |      1040 |      1163 |
|                  jbird                   |      2154 |      1958 |      1929 |      1895 |      1863 |      1768 |      1697 |      1792 |
|                    Δ                     |       793 |       724 |       708 |       685 |       665 |       615 |       657 |       629 |
|              Improvement %               |        58 |        59 |        58 |        57 |        56 |        53 |        63 |       629 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1163 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1792 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       629 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       629 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1163 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1792 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       629 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       629 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1163 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1792 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       629 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       629 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       738 |       807 |       815 |       821 |       829 |       849 |       867 |      1170 |
|                  jbird                   |       480 |       521 |       528 |       547 |       562 |       608 |      1099 |      1740 |
|                    Δ                     |      -258 |      -286 |      -287 |      -274 |      -267 |      -241 |       232 |       570 |
|              Improvement %               |        35 |        35 |        35 |        33 |        32 |        28 |       -27 |       570 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       740 |       808 |       816 |       823 |       831 |       852 |       864 |      1170 |
|                  jbird                   |       482 |       523 |       530 |       549 |       563 |       610 |       765 |      1740 |
|                    Δ                     |      -258 |      -285 |      -286 |      -274 |      -268 |      -242 |       -99 |       570 |
|              Improvement %               |        35 |        35 |        35 |        33 |        32 |        28 |        11 |       570 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1354 |      1240 |      1228 |      1218 |      1207 |      1178 |      1154 |      1170 |
|                  jbird                   |      2082 |      1919 |      1893 |      1827 |      1781 |      1645 |       910 |      1740 |
|                    Δ                     |       728 |       679 |       665 |       609 |       574 |       467 |      -244 |       570 |
|              Improvement %               |        54 |        55 |        54 |        50 |        48 |        40 |       -21 |       570 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        26 |        26 |        26 |        26 |        26 |        26 |      1170 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1740 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       570 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       570 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1170 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1740 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       570 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       570 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1170 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1740 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       570 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       570 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1488 |      1623 |      1634 |      1652 |      1673 |      1723 |      1898 |       596 |
|                  jbird                   |       946 |      1029 |      1036 |      1049 |      1078 |      1117 |      1162 |       926 |
|                    Δ                     |      -542 |      -594 |      -598 |      -603 |      -595 |      -606 |      -736 |       330 |
|              Improvement %               |        36 |        37 |        37 |        37 |        36 |        35 |        39 |       330 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1491 |      1625 |      1637 |      1654 |      1674 |      1725 |      1904 |       596 |
|                  jbird                   |       947 |      1030 |      1038 |      1051 |      1080 |      1119 |      1166 |       926 |
|                    Δ                     |      -544 |      -595 |      -599 |      -603 |      -594 |      -606 |      -738 |       330 |
|              Improvement %               |        36 |        37 |        37 |        36 |        35 |        35 |        39 |       330 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       672 |       616 |       612 |       606 |       598 |       580 |       527 |       596 |
|                  jbird                   |      1057 |       973 |       965 |       954 |       928 |       895 |       861 |       926 |
|                    Δ                     |       385 |       357 |       353 |       348 |       330 |       315 |       334 |       330 |
|              Improvement %               |        57 |        58 |        58 |        57 |        55 |        54 |        63 |       330 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       596 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       926 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       330 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       330 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       596 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       926 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       330 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       330 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       596 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       926 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       330 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        29 |        26 |       330 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1510 |      1645 |      1654 |      1666 |      1679 |      1723 |      1741 |       590 |
|                  jbird                   |       966 |      1037 |      1056 |      1081 |      1102 |      1150 |      1310 |       909 |
|                    Δ                     |      -544 |      -608 |      -598 |      -585 |      -577 |      -573 |      -431 |       319 |
|              Improvement %               |        36 |        37 |        36 |        35 |        34 |        33 |        25 |       319 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1511 |      1647 |      1656 |      1668 |      1681 |      1726 |      1744 |       590 |
|                  jbird                   |       967 |      1039 |      1058 |      1083 |      1104 |      1151 |      1263 |       909 |
|                    Δ                     |      -544 |      -608 |      -598 |      -585 |      -577 |      -575 |      -481 |       319 |
|              Improvement %               |        36 |        37 |        36 |        35 |        34 |        33 |        28 |       319 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       662 |       608 |       605 |       600 |       596 |       580 |       574 |       590 |
|                  jbird                   |      1036 |       964 |       948 |       925 |       908 |       870 |       764 |       909 |
|                    Δ                     |       374 |       356 |       343 |       325 |       312 |       290 |       190 |       319 |
|              Improvement %               |        56 |        59 |        57 |        54 |        52 |        50 |        33 |       319 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       590 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       909 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       319 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       319 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       590 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       909 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       319 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       590 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       909 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       319 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        26 |       319 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        17 |        17 |        17 |        18 |        18 |        61 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        13 |        13 |        86 |
|                    Δ                     |        -5 |        -5 |        -6 |        -5 |        -5 |        -5 |        -5 |        25 |
|              Improvement %               |        31 |        31 |        35 |        29 |        29 |        28 |        28 |        25 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        17 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |        -5 |        -5 |        -6 |        -5 |        -5 |        -5 |        -5 |        25 |
|              Improvement %               |        31 |        31 |        35 |        29 |        29 |        29 |        29 |        25 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        62 |        61 |        61 |        60 |        60 |        57 |        57 |        61 |
|                  jbird                   |        93 |        88 |        87 |        87 |        85 |        78 |        78 |        86 |
|                    Δ                     |        31 |        27 |        26 |        27 |        25 |        21 |        21 |        25 |
|              Improvement %               |        50 |        44 |        43 |        45 |        42 |        37 |        37 |        25 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        41 |        41 |        41 |        41 |        41 |        41 |        61 |
|                  jbird                   |        28 |        50 |        50 |        50 |        50 |        50 |        50 |        86 |
|                    Δ                     |        -7 |         9 |         9 |         9 |         9 |         9 |         9 |        25 |
|              Improvement %               |        20 |       -22 |       -22 |       -22 |       -22 |       -22 |       -22 |        25 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        86 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        25 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        25 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       333 |       333 |       333 |       333 |       337 |       337 |        61 |
|                  jbird                   |       246 |       246 |       246 |       246 |       246 |       251 |       251 |        86 |
|                    Δ                     |       -86 |       -87 |       -87 |       -87 |       -87 |       -86 |       -86 |        25 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        26 |        25 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        18 |        18 |        60 |
|                  jbird                   |        11 |        12 |        12 |        12 |        12 |        13 |        13 |        84 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        24 |
|              Improvement %               |        31 |        29 |        29 |        29 |        29 |        28 |        28 |        24 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        18 |        18 |        60 |
|                  jbird                   |        11 |        12 |        12 |        12 |        12 |        13 |        13 |        84 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        24 |
|              Improvement %               |        31 |        29 |        29 |        29 |        29 |        28 |        28 |        24 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        62 |        60 |        60 |        60 |        59 |        56 |        56 |        60 |
|                  jbird                   |        89 |        86 |        85 |        83 |        82 |        76 |        76 |        84 |
|                    Δ                     |        27 |        26 |        25 |        23 |        23 |        20 |        20 |        24 |
|              Improvement %               |        44 |        43 |        42 |        38 |        39 |        36 |        36 |        24 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        39 |        39 |        40 |        41 |        41 |        41 |        60 |
|                  jbird                   |        28 |        51 |        51 |        52 |        52 |        52 |        52 |        84 |
|                    Δ                     |        -7 |        12 |        12 |        12 |        11 |        11 |        11 |        24 |
|              Improvement %               |        20 |       -31 |       -31 |       -30 |       -27 |       -27 |       -27 |        24 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        60 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        84 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        24 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        24 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       339 |       339 |       339 |       339 |       345 |       345 |        60 |
|                  jbird                   |       252 |       252 |       252 |       252 |       252 |       261 |       261 |        84 |
|                    Δ                     |       -86 |       -87 |       -87 |       -87 |       -87 |       -84 |       -84 |        24 |
|              Improvement %               |        25 |        26 |        26 |        26 |        26 |        24 |        24 |        24 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       204 |       207 |       210 |       213 |       226 |       254 |      4078 |
|                  jbird                   |       116 |       127 |       131 |       133 |       136 |       145 |       178 |      5987 |
|                    Δ                     |       -68 |       -77 |       -76 |       -77 |       -77 |       -81 |       -76 |      1909 |
|              Improvement %               |        37 |        38 |        37 |        37 |        36 |        36 |        30 |      1909 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       205 |       209 |       212 |       215 |       228 |       256 |      4078 |
|                  jbird                   |       117 |       129 |       133 |       135 |       137 |       148 |       180 |      5987 |
|                    Δ                     |       -69 |       -76 |       -76 |       -77 |       -78 |       -80 |       -76 |      1909 |
|              Improvement %               |        37 |        37 |        36 |        36 |        36 |        35 |        30 |      1909 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5420 |      4919 |      4823 |      4755 |      4695 |      4419 |      3936 |      4078 |
|                  jbird                   |      8618 |      7871 |      7627 |      7507 |      7379 |      6903 |      5622 |      5987 |
|                    Δ                     |      3198 |      2952 |      2804 |      2752 |      2684 |      2484 |      1686 |      1909 |
|              Improvement %               |        59 |        60 |        58 |        58 |        57 |        56 |        43 |      1909 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4078 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5987 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      1909 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      1909 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4078 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5987 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1909 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1909 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4155 |      4157 |      4157 |      4157 |      4157 |      4223 |      4430 |      4078 |
|                  jbird                   |      2959 |      2959 |      2959 |      2959 |      2961 |      3033 |      3110 |      5987 |
|                    Δ                     |     -1196 |     -1198 |     -1198 |     -1198 |     -1196 |     -1190 |     -1320 |      1909 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        30 |      1909 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       205 |       209 |       212 |       214 |       226 |       252 |      4056 |
|                  jbird                   |       120 |       131 |       134 |       137 |       139 |       148 |       177 |      5870 |
|                    Δ                     |       -66 |       -74 |       -75 |       -75 |       -75 |       -78 |       -75 |      1814 |
|              Improvement %               |        35 |        36 |        36 |        35 |        35 |        35 |        30 |      1814 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       187 |       206 |       211 |       213 |       216 |       228 |       245 |      4056 |
|                  jbird                   |       122 |       132 |       136 |       138 |       140 |       150 |       176 |      5870 |
|                    Δ                     |       -65 |       -74 |       -75 |       -75 |       -76 |       -78 |       -69 |      1814 |
|              Improvement %               |        35 |        36 |        36 |        35 |        35 |        34 |        28 |      1814 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5376 |      4883 |      4783 |      4731 |      4671 |      4427 |      3963 |      4056 |
|                  jbird                   |      8328 |      7663 |      7443 |      7327 |      7219 |      6779 |      5652 |      5870 |
|                    Δ                     |      2952 |      2780 |      2660 |      2596 |      2548 |      2352 |      1689 |      1814 |
|              Improvement %               |        55 |        57 |        56 |        55 |        55 |        53 |        43 |      1814 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4056 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5870 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      1814 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      1814 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4056 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5870 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1814 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1814 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4228 |      4231 |      4231 |      4231 |      4231 |      4297 |      4311 |      4056 |
|                  jbird                   |      3017 |      3017 |      3019 |      3019 |      3019 |      3090 |      3162 |      5870 |
|                    Δ                     |     -1211 |     -1214 |     -1212 |     -1212 |     -1212 |     -1207 |     -1149 |      1814 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        27 |      1814 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        62 |        63 |        64 |        65 |        75 |        97 |     10287 |
|                  jbird                   |        58 |        62 |        65 |        66 |        66 |        74 |        94 |     10400 |
|                    Δ                     |         4 |         0 |         2 |         2 |         1 |        -1 |        -3 |       113 |
|              Improvement %               |        -7 |         0 |        -3 |        -3 |        -2 |         1 |         3 |       113 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        63 |        65 |        65 |        67 |        77 |       108 |     10287 |
|                  jbird                   |        59 |        63 |        67 |        67 |        68 |        76 |        98 |     10400 |
|                    Δ                     |         3 |         0 |         2 |         2 |         1 |        -1 |       -10 |       113 |
|              Improvement %               |        -5 |         0 |        -3 |        -3 |        -1 |         1 |         9 |       113 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        16 |        16 |        16 |        15 |        13 |        10 |     10287 |
|                  jbird                   |        17 |        16 |        15 |        15 |        15 |        13 |        11 |     10400 |
|                    Δ                     |        -1 |         0 |        -1 |        -1 |         0 |         0 |         1 |       113 |
|              Improvement %               |        -6 |         0 |        -6 |        -6 |         0 |         0 |        10 |       113 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10287 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10400 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       113 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       113 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10287 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10400 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |       113 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       113 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1615 |      1616 |      1616 |      1616 |      1617 |      1650 |      1664 |     10287 |
|                  jbird                   |      1612 |      1613 |      1613 |      1613 |      1613 |      1641 |      1666 |     10400 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -4 |        -9 |         2 |       113 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         1 |         0 |       113 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        91 |       101 |       102 |       103 |       105 |       117 |       157 |      7298 |
|                  jbird                   |        86 |        96 |        98 |        99 |       101 |       114 |       178 |      7739 |
|                    Δ                     |        -5 |        -5 |        -4 |        -4 |        -4 |        -3 |        21 |       441 |
|              Improvement %               |         5 |         5 |         4 |         4 |         4 |         3 |       -13 |       441 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        92 |       102 |       103 |       105 |       106 |       119 |       161 |      7298 |
|                  jbird                   |        87 |        97 |       100 |       101 |       103 |       116 |       182 |      7739 |
|                    Δ                     |        -5 |        -5 |        -3 |        -4 |        -3 |        -3 |        21 |       441 |
|              Improvement %               |         5 |         5 |         3 |         4 |         3 |         3 |       -13 |       441 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10999 |      9927 |      9831 |      9703 |      9543 |      8559 |      6366 |      7298 |
|                  jbird                   |     11645 |     10463 |     10191 |     10079 |      9887 |      8799 |      5604 |      7739 |
|                    Δ                     |       646 |       536 |       360 |       376 |       344 |       240 |      -762 |       441 |
|              Improvement %               |         6 |         5 |         4 |         4 |         4 |         3 |       -12 |       441 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7298 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7739 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       441 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       441 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7298 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7739 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       441 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       441 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2661 |      2662 |      2662 |      2662 |      2664 |      2683 |      2853 |      7298 |
|                  jbird                   |      2546 |      2548 |      2548 |      2548 |      2548 |      2560 |      2789 |      7739 |
|                    Δ                     |      -115 |      -114 |      -114 |      -114 |      -116 |      -123 |       -64 |       441 |
|              Improvement %               |         4 |         4 |         4 |         4 |         4 |         5 |         2 |       441 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        91 |        95 |        96 |        97 |       108 |       139 |      7829 |
|                  jbird                   |        57 |        63 |        65 |        66 |        67 |        76 |       137 |     10423 |
|                    Δ                     |       -27 |       -28 |       -30 |       -30 |       -30 |       -32 |        -2 |      2594 |
|              Improvement %               |        32 |        31 |        32 |        31 |        31 |        30 |         1 |      2594 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        92 |        97 |        97 |        99 |       110 |       142 |      7829 |
|                  jbird                   |        58 |        65 |        67 |        68 |        69 |        78 |       141 |     10423 |
|                    Δ                     |       -27 |       -27 |       -30 |       -29 |       -30 |       -32 |        -1 |      2594 |
|              Improvement %               |        32 |        29 |        31 |        30 |        30 |        29 |         1 |      2594 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        10 |        10 |         9 |         7 |      7829 |
|                  jbird                   |        18 |        16 |        15 |        15 |        15 |        13 |         7 |     10423 |
|                    Δ                     |         6 |         5 |         4 |         5 |         5 |         4 |         0 |      2594 |
|              Improvement %               |        50 |        45 |        36 |        50 |        50 |        44 |         0 |      2594 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      7829 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10423 |
|                    Δ                     |         0 |         1 |         0 |         0 |         0 |         0 |         0 |      2594 |
|              Improvement %               |         0 |        -4 |         0 |         0 |         0 |         0 |         0 |      2594 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7829 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10423 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2594 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2594 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1801 |      1801 |      1801 |      1808 |      1903 |      7829 |
|                  jbird                   |      1566 |      1567 |      1567 |      1567 |      1567 |      1573 |      1690 |     10423 |
|                    Δ                     |      -234 |      -234 |      -234 |      -234 |      -234 |      -235 |      -213 |      2594 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        11 |      2594 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       105 |       116 |       120 |       122 |       124 |       133 |       151 |      6423 |
|                  jbird                   |        28 |        31 |        32 |        33 |        34 |        40 |        70 |     15018 |
|                    Δ                     |       -77 |       -85 |       -88 |       -89 |       -90 |       -93 |       -81 |      8595 |
|              Improvement %               |        73 |        73 |        73 |        73 |        73 |        70 |        54 |      8595 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       106 |       118 |       121 |       123 |       126 |       136 |       153 |      6423 |
|                  jbird                   |        30 |        32 |        34 |        34 |        36 |        42 |        68 |     15018 |
|                    Δ                     |       -76 |       -86 |       -87 |       -89 |       -90 |       -94 |       -85 |      8595 |
|              Improvement %               |        72 |        73 |        72 |        72 |        71 |        69 |        56 |      8595 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9531 |      8615 |      8351 |      8207 |      8063 |      7503 |      6615 |      6423 |
|                  jbird                   |     35140 |     32623 |     31135 |     30575 |     29247 |     24879 |     14328 |     15018 |
|                    Δ                     |     25609 |     24008 |     22784 |     22368 |     21184 |     17376 |      7713 |      8595 |
|              Improvement %               |       269 |       279 |       273 |       273 |       263 |       232 |       117 |      8595 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6423 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15018 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8595 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8595 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6423 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15018 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8595 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8595 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2103 |      2103 |      2105 |      2105 |      2105 |      2120 |      2281 |      6423 |
|                  jbird                   |       876 |       877 |       877 |       877 |       877 |       882 |       928 |     15018 |
|                    Δ                     |     -1227 |     -1226 |     -1228 |     -1228 |     -1228 |     -1238 |     -1353 |      8595 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        59 |      8595 |

<p>
</details>

