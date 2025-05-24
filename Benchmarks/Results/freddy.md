# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3036 |      3301 |      3326 |      3379 |      3469 |      4116 |      4525 |       293 |
|                  jbird                   |      1838 |      1892 |      1909 |      1927 |      1954 |      2040 |      2147 |       513 |
|                    Δ                     |     -1198 |     -1409 |     -1417 |     -1452 |     -1515 |     -2076 |     -2378 |       220 |
|              Improvement %               |        39 |        43 |        43 |        43 |        44 |        50 |        53 |       220 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3037 |      3305 |      3328 |      3383 |      3478 |      4119 |      4530 |       293 |
|                  jbird                   |      1839 |      1894 |      1911 |      1930 |      1955 |      2041 |      2150 |       513 |
|                    Δ                     |     -1198 |     -1411 |     -1417 |     -1453 |     -1523 |     -2078 |     -2380 |       220 |
|              Improvement %               |        39 |        43 |        43 |        43 |        44 |        50 |        53 |       220 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       303 |       301 |       296 |       288 |       243 |       221 |       293 |
|                  jbird                   |       544 |       529 |       524 |       519 |       512 |       490 |       466 |       513 |
|                    Δ                     |       215 |       226 |       223 |       223 |       224 |       247 |       245 |       220 |
|              Improvement %               |        65 |        75 |        74 |        75 |        78 |       102 |       111 |       220 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       293 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       513 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       220 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       220 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       293 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       513 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       220 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       220 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        67 |        67 |        68 |        68 |       293 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       513 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       220 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        26 |       220 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3100 |      3320 |      3348 |      3402 |      3488 |      3787 |      3983 |       293 |
|                  jbird                   |      1865 |      1917 |      1933 |      1950 |      1974 |      2048 |      2109 |       507 |
|                    Δ                     |     -1235 |     -1403 |     -1415 |     -1452 |     -1514 |     -1739 |     -1874 |       214 |
|              Improvement %               |        40 |        42 |        42 |        43 |        43 |        46 |        47 |       214 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3101 |      3324 |      3351 |      3406 |      3492 |      3793 |      3985 |       293 |
|                  jbird                   |      1867 |      1919 |      1934 |      1953 |      1972 |      2050 |      2113 |       507 |
|                    Δ                     |     -1234 |     -1405 |     -1417 |     -1453 |     -1520 |     -1743 |     -1872 |       214 |
|              Improvement %               |        40 |        42 |        42 |        43 |        44 |        46 |        47 |       214 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       323 |       301 |       299 |       294 |       287 |       264 |       251 |       293 |
|                  jbird                   |       536 |       522 |       518 |       513 |       507 |       488 |       474 |       507 |
|                    Δ                     |       213 |       221 |       219 |       219 |       220 |       224 |       223 |       214 |
|              Improvement %               |        66 |        73 |        73 |        74 |        77 |        85 |        89 |       214 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       293 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       507 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       214 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       214 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       293 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       507 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       214 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       214 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        68 |        68 |        68 |        68 |        69 |        69 |       293 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        50 |       507 |
|                    Δ                     |       -19 |       -20 |       -20 |       -20 |       -20 |       -19 |       -19 |       214 |
|              Improvement %               |        28 |        29 |        29 |        29 |        29 |        28 |        28 |       214 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       735 |       810 |       819 |       827 |       835 |       867 |       962 |      1163 |
|                  jbird                   |       457 |       467 |       474 |       487 |       499 |       523 |       584 |      1944 |
|                    Δ                     |      -278 |      -343 |      -345 |      -340 |      -336 |      -344 |      -378 |       781 |
|              Improvement %               |        38 |        42 |        42 |        41 |        40 |        40 |        39 |       781 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       736 |       812 |       821 |       828 |       838 |       869 |       963 |      1163 |
|                  jbird                   |       458 |       468 |       476 |       489 |       501 |       524 |       587 |      1944 |
|                    Δ                     |      -278 |      -344 |      -345 |      -339 |      -337 |      -345 |      -376 |       781 |
|              Improvement %               |        38 |        42 |        42 |        41 |        40 |        40 |        39 |       781 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1361 |      1234 |      1221 |      1210 |      1198 |      1153 |      1040 |      1163 |
|                  jbird                   |      2188 |      2143 |      2109 |      2051 |      2002 |      1914 |      1713 |      1944 |
|                    Δ                     |       827 |       909 |       888 |       841 |       804 |       761 |       673 |       781 |
|              Improvement %               |        61 |        74 |        73 |        70 |        67 |        66 |        65 |       781 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1163 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1944 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       781 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       781 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1163 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1944 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       781 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       781 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1163 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1944 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |       781 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       781 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       738 |       807 |       815 |       821 |       829 |       849 |       867 |      1170 |
|                  jbird                   |       463 |       473 |       481 |       494 |       504 |       525 |       601 |      1922 |
|                    Δ                     |      -275 |      -334 |      -334 |      -327 |      -325 |      -324 |      -266 |       752 |
|              Improvement %               |        37 |        41 |        41 |        40 |        39 |        38 |        31 |       752 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       740 |       808 |       816 |       823 |       831 |       852 |       864 |      1170 |
|                  jbird                   |       464 |       474 |       482 |       496 |       506 |       527 |       605 |      1922 |
|                    Δ                     |      -276 |      -334 |      -334 |      -327 |      -325 |      -325 |      -259 |       752 |
|              Improvement %               |        37 |        41 |        41 |        40 |        39 |        38 |        30 |       752 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1354 |      1240 |      1228 |      1218 |      1207 |      1178 |      1154 |      1170 |
|                  jbird                   |      2161 |      2117 |      2081 |      2025 |      1984 |      1904 |      1664 |      1922 |
|                    Δ                     |       807 |       877 |       853 |       807 |       777 |       726 |       510 |       752 |
|              Improvement %               |        60 |        71 |        69 |        66 |        64 |        62 |        44 |       752 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        26 |        26 |        26 |        26 |        26 |        26 |      1170 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1922 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       752 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       752 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1170 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1922 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       752 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       752 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1170 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1922 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       752 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       752 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1488 |      1623 |      1634 |      1652 |      1673 |      1723 |      1898 |       596 |
|                  jbird                   |       918 |       946 |       958 |       969 |       980 |      1018 |      1124 |      1004 |
|                    Δ                     |      -570 |      -677 |      -676 |      -683 |      -693 |      -705 |      -774 |       408 |
|              Improvement %               |        38 |        42 |        41 |        41 |        41 |        41 |        41 |       408 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1491 |      1625 |      1637 |      1654 |      1674 |      1725 |      1904 |       596 |
|                  jbird                   |       919 |       947 |       959 |       971 |       982 |      1019 |      1127 |      1004 |
|                    Δ                     |      -572 |      -678 |      -678 |      -683 |      -692 |      -706 |      -777 |       408 |
|              Improvement %               |        38 |        42 |        41 |        41 |        41 |        41 |        41 |       408 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       672 |       616 |       612 |       606 |       598 |       580 |       527 |       596 |
|                  jbird                   |      1090 |      1058 |      1044 |      1032 |      1021 |       983 |       890 |      1004 |
|                    Δ                     |       418 |       442 |       432 |       426 |       423 |       403 |       363 |       408 |
|              Improvement %               |        62 |        72 |        71 |        70 |        71 |        69 |        69 |       408 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       596 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |      1004 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       408 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       408 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       596 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      1004 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       408 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       408 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       596 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |      1004 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       408 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        29 |        26 |       408 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1510 |      1645 |      1654 |      1666 |      1679 |      1723 |      1741 |       590 |
|                  jbird                   |       923 |       950 |       960 |       973 |       992 |      1044 |      1172 |       999 |
|                    Δ                     |      -587 |      -695 |      -694 |      -693 |      -687 |      -679 |      -569 |       409 |
|              Improvement %               |        39 |        42 |        42 |        42 |        41 |        39 |        33 |       409 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1511 |      1647 |      1656 |      1668 |      1681 |      1726 |      1744 |       590 |
|                  jbird                   |       925 |       951 |       962 |       975 |       994 |      1046 |      1175 |       999 |
|                    Δ                     |      -586 |      -696 |      -694 |      -693 |      -687 |      -680 |      -569 |       409 |
|              Improvement %               |        39 |        42 |        42 |        42 |        41 |        39 |        33 |       409 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       662 |       608 |       605 |       600 |       596 |       580 |       574 |       590 |
|                  jbird                   |      1083 |      1053 |      1042 |      1028 |      1009 |       958 |       853 |       999 |
|                    Δ                     |       421 |       445 |       437 |       428 |       413 |       378 |       279 |       409 |
|              Improvement %               |        64 |        73 |        72 |        71 |        69 |        65 |        49 |       409 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        27 |        27 |        27 |        27 |       590 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       999 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       409 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       409 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       590 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       999 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       409 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       409 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       590 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       999 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -8 |       409 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        24 |       409 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        17 |        17 |        17 |        18 |        18 |        61 |
|                  jbird                   |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        95 |
|                    Δ                     |        -6 |        -6 |        -7 |        -6 |        -6 |        -7 |        -7 |        34 |
|              Improvement %               |        38 |        38 |        41 |        35 |        35 |        39 |        39 |        34 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        17 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        95 |
|                    Δ                     |        -6 |        -6 |        -7 |        -6 |        -6 |        -6 |        -6 |        34 |
|              Improvement %               |        38 |        38 |        41 |        35 |        35 |        35 |        35 |        34 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        62 |        61 |        61 |        60 |        60 |        57 |        57 |        61 |
|                  jbird                   |        98 |        96 |        96 |        95 |        94 |        91 |        91 |        95 |
|                    Δ                     |        36 |        35 |        35 |        35 |        34 |        34 |        34 |        34 |
|              Improvement %               |        58 |        57 |        57 |        58 |        57 |        60 |        60 |        34 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        41 |        41 |        41 |        41 |        41 |        41 |        61 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        95 |
|                    Δ                     |        -7 |        11 |        11 |        11 |        11 |        11 |        11 |        34 |
|              Improvement %               |        20 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |        34 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        95 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        34 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        34 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       333 |       333 |       333 |       333 |       337 |       337 |        61 |
|                  jbird                   |       247 |       247 |       247 |       248 |       248 |       256 |       256 |        95 |
|                    Δ                     |       -85 |       -86 |       -86 |       -85 |       -85 |       -81 |       -81 |        34 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        24 |        34 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        18 |        18 |        60 |
|                  jbird                   |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        96 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -6 |        -7 |        -7 |        36 |
|              Improvement %               |        38 |        41 |        41 |        41 |        35 |        39 |        39 |        36 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        17 |        17 |        17 |        17 |        18 |        18 |        60 |
|                  jbird                   |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        96 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -6 |        -7 |        -7 |        36 |
|              Improvement %               |        38 |        41 |        41 |        41 |        35 |        39 |        39 |        36 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        62 |        60 |        60 |        60 |        59 |        56 |        56 |        60 |
|                  jbird                   |       100 |        98 |        98 |        97 |        95 |        89 |        89 |        96 |
|                    Δ                     |        38 |        38 |        38 |        37 |        36 |        33 |        33 |        36 |
|              Improvement %               |        61 |        63 |        63 |        62 |        61 |        59 |        59 |        36 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        39 |        39 |        40 |        41 |        41 |        41 |        60 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        96 |
|                    Δ                     |        -7 |        13 |        13 |        12 |        11 |        11 |        11 |        36 |
|              Improvement %               |        20 |       -33 |       -33 |       -30 |       -27 |       -27 |       -27 |        36 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        60 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        96 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        36 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        36 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       339 |       339 |       339 |       339 |       345 |       345 |        60 |
|                  jbird                   |       247 |       247 |       247 |       247 |       251 |       259 |       259 |        96 |
|                    Δ                     |       -91 |       -92 |       -92 |       -92 |       -88 |       -86 |       -86 |        36 |
|              Improvement %               |        27 |        27 |        27 |        27 |        26 |        25 |        25 |        36 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       204 |       207 |       210 |       213 |       226 |       254 |      4078 |
|                  jbird                   |       115 |       117 |       118 |       122 |       130 |       140 |       187 |      6471 |
|                    Δ                     |       -69 |       -87 |       -89 |       -88 |       -83 |       -86 |       -67 |      2393 |
|              Improvement %               |        38 |        43 |        43 |        42 |        39 |        38 |        26 |      2393 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       205 |       209 |       212 |       215 |       228 |       256 |      4078 |
|                  jbird                   |       116 |       118 |       119 |       123 |       131 |       142 |       191 |      6471 |
|                    Δ                     |       -70 |       -87 |       -90 |       -89 |       -84 |       -86 |       -65 |      2393 |
|              Improvement %               |        38 |        42 |        43 |        42 |        39 |        38 |        25 |      2393 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5420 |      4919 |      4823 |      4755 |      4695 |      4419 |      3936 |      4078 |
|                  jbird                   |      8727 |      8583 |      8471 |      8223 |      7723 |      7159 |      5344 |      6471 |
|                    Δ                     |      3307 |      3664 |      3648 |      3468 |      3028 |      2740 |      1408 |      2393 |
|              Improvement %               |        61 |        74 |        76 |        73 |        64 |        62 |        36 |      2393 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4078 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6471 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      2393 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      2393 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4078 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6471 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      2393 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      2393 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4155 |      4157 |      4157 |      4157 |      4157 |      4223 |      4430 |      4078 |
|                  jbird                   |      2988 |      2990 |      2990 |      2990 |      2990 |      3062 |      3134 |      6471 |
|                    Δ                     |     -1167 |     -1167 |     -1167 |     -1167 |     -1167 |     -1161 |     -1296 |      2393 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        29 |      2393 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       205 |       209 |       212 |       214 |       226 |       252 |      4056 |
|                  jbird                   |       116 |       117 |       119 |       123 |       131 |       140 |       180 |      6429 |
|                    Δ                     |       -70 |       -88 |       -90 |       -89 |       -83 |       -86 |       -72 |      2373 |
|              Improvement %               |        38 |        43 |        43 |        42 |        39 |        38 |        29 |      2373 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       187 |       206 |       211 |       213 |       216 |       228 |       245 |      4056 |
|                  jbird                   |       117 |       119 |       120 |       124 |       132 |       142 |       183 |      6429 |
|                    Δ                     |       -70 |       -87 |       -91 |       -89 |       -84 |       -86 |       -62 |      2373 |
|              Improvement %               |        37 |        42 |        43 |        42 |        39 |        38 |        25 |      2373 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5376 |      4883 |      4783 |      4731 |      4671 |      4427 |      3963 |      4056 |
|                  jbird                   |      8618 |      8519 |      8431 |      8163 |      7659 |      7131 |      5559 |      6429 |
|                    Δ                     |      3242 |      3636 |      3648 |      3432 |      2988 |      2704 |      1596 |      2373 |
|              Improvement %               |        60 |        74 |        76 |        73 |        64 |        61 |        40 |      2373 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4056 |
|                  jbird                   |        25 |        25 |        25 |        25 |        26 |        26 |        26 |      6429 |
|                    Δ                     |         0 |         0 |         0 |         0 |         1 |         1 |         1 |      2373 |
|              Improvement %               |         0 |         0 |         0 |         0 |        -4 |        -4 |        -4 |      2373 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4056 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6429 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      2373 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      2373 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4228 |      4231 |      4231 |      4231 |      4231 |      4297 |      4311 |      4056 |
|                  jbird                   |      3020 |      3023 |      3023 |      3023 |      3023 |      3095 |      3192 |      6429 |
|                    Δ                     |     -1208 |     -1208 |     -1208 |     -1208 |     -1208 |     -1202 |     -1119 |      2373 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        26 |      2373 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        62 |        63 |        64 |        65 |        75 |        97 |     10287 |
|                  jbird                   |        56 |        57 |        57 |        57 |        58 |        73 |       110 |     11472 |
|                    Δ                     |         2 |        -5 |        -6 |        -7 |        -7 |        -2 |        13 |      1185 |
|              Improvement %               |        -4 |         8 |        10 |        11 |        11 |         3 |       -13 |      1185 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        63 |        65 |        65 |        67 |        77 |       108 |     10287 |
|                  jbird                   |        58 |        58 |        58 |        59 |        60 |        75 |       103 |     11472 |
|                    Δ                     |         2 |        -5 |        -7 |        -6 |        -7 |        -2 |        -5 |      1185 |
|              Improvement %               |        -4 |         8 |        11 |         9 |        10 |         3 |         5 |      1185 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        16 |        16 |        16 |        15 |        13 |        10 |     10287 |
|                  jbird                   |        18 |        18 |        18 |        17 |        17 |        14 |         9 |     11472 |
|                    Δ                     |         0 |         2 |         2 |         1 |         2 |         1 |        -1 |      1185 |
|              Improvement %               |         0 |        12 |        12 |         6 |        13 |         8 |       -10 |      1185 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10287 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11472 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1185 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1185 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10287 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11472 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1185 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1185 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1615 |      1616 |      1616 |      1616 |      1617 |      1650 |      1664 |     10287 |
|                  jbird                   |      1519 |      1520 |      1520 |      1520 |      1520 |      1548 |      1621 |     11472 |
|                    Δ                     |       -96 |       -96 |       -96 |       -96 |       -97 |      -102 |       -43 |      1185 |
|              Improvement %               |         6 |         6 |         6 |         6 |         6 |         6 |         3 |      1185 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        91 |       101 |       102 |       103 |       105 |       117 |       157 |      7298 |
|                  jbird                   |        86 |        88 |        90 |        94 |        98 |       108 |       156 |      8267 |
|                    Δ                     |        -5 |       -13 |       -12 |        -9 |        -7 |        -9 |        -1 |       969 |
|              Improvement %               |         5 |        13 |        12 |         9 |         7 |         8 |         1 |       969 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        92 |       102 |       103 |       105 |       106 |       119 |       161 |      7298 |
|                  jbird                   |        88 |        89 |        91 |        96 |       100 |       110 |       160 |      8267 |
|                    Δ                     |        -4 |       -13 |       -12 |        -9 |        -6 |        -9 |        -1 |       969 |
|              Improvement %               |         4 |        13 |        12 |         9 |         6 |         8 |         1 |       969 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10999 |      9927 |      9831 |      9703 |      9543 |      8559 |      6366 |      7298 |
|                  jbird                   |     11566 |     11375 |     11175 |     10623 |     10175 |      9263 |      6429 |      8267 |
|                    Δ                     |       567 |      1448 |      1344 |       920 |       632 |       704 |        63 |       969 |
|              Improvement %               |         5 |        15 |        14 |         9 |         7 |         8 |         1 |       969 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7298 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      8267 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       969 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       969 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7298 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8267 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       969 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       969 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2661 |      2662 |      2662 |      2662 |      2664 |      2683 |      2853 |      7298 |
|                  jbird                   |      2592 |      2593 |      2593 |      2593 |      2593 |      2603 |      2831 |      8267 |
|                    Δ                     |       -69 |       -69 |       -69 |       -69 |       -71 |       -80 |       -22 |       969 |
|              Improvement %               |         3 |         3 |         3 |         3 |         3 |         3 |         1 |       969 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        91 |        95 |        96 |        97 |       108 |       139 |      7829 |
|                  jbird                   |        52 |        53 |        54 |        58 |        59 |        69 |       137 |     11725 |
|                    Δ                     |       -32 |       -38 |       -41 |       -38 |       -38 |       -39 |        -2 |      3896 |
|              Improvement %               |        38 |        42 |        43 |        40 |        39 |        36 |         1 |      3896 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        92 |        97 |        97 |        99 |       110 |       142 |      7829 |
|                  jbird                   |        53 |        54 |        55 |        60 |        61 |        70 |       140 |     11725 |
|                    Δ                     |       -32 |       -38 |       -42 |       -37 |       -38 |       -40 |        -2 |      3896 |
|              Improvement %               |        38 |        41 |        43 |        38 |        38 |        36 |         1 |      3896 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        10 |        10 |         9 |         7 |      7829 |
|                  jbird                   |        19 |        19 |        19 |        17 |        17 |        15 |         7 |     11725 |
|                    Δ                     |         7 |         8 |         8 |         7 |         7 |         6 |         0 |      3896 |
|              Improvement %               |        58 |        73 |        73 |        70 |        70 |        67 |         0 |      3896 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      7829 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11725 |
|                    Δ                     |         0 |         1 |         0 |         0 |         0 |         0 |         0 |      3896 |
|              Improvement %               |         0 |        -4 |         0 |         0 |         0 |         0 |         0 |      3896 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      7829 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11725 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      3896 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      3896 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1801 |      1801 |      1801 |      1808 |      1903 |      7829 |
|                  jbird                   |      1589 |      1589 |      1589 |      1589 |      1589 |      1595 |      1713 |     11725 |
|                    Δ                     |      -211 |      -212 |      -212 |      -212 |      -212 |      -213 |      -190 |      3896 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        10 |      3896 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       105 |       116 |       120 |       122 |       124 |       133 |       151 |      6423 |
|                  jbird                   |        28 |        28 |        28 |        31 |        31 |        38 |        71 |     16287 |
|                    Δ                     |       -77 |       -88 |       -92 |       -91 |       -93 |       -95 |       -80 |      9864 |
|              Improvement %               |        73 |        76 |        77 |        75 |        75 |        71 |        53 |      9864 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       106 |       118 |       121 |       123 |       126 |       136 |       153 |      6423 |
|                  jbird                   |        29 |        29 |        29 |        32 |        33 |        40 |        67 |     16287 |
|                    Δ                     |       -77 |       -89 |       -92 |       -91 |       -93 |       -96 |       -86 |      9864 |
|              Improvement %               |        73 |        75 |        76 |        74 |        74 |        71 |        56 |      9864 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9531 |      8615 |      8351 |      8207 |      8063 |      7503 |      6615 |      6423 |
|                  jbird                   |     36364 |     35999 |     35839 |     32527 |     32175 |     26591 |     14068 |     16287 |
|                    Δ                     |     26833 |     27384 |     27488 |     24320 |     24112 |     19088 |      7453 |      9864 |
|              Improvement %               |       282 |       318 |       329 |       296 |       299 |       254 |       113 |      9864 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6423 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     16287 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9864 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9864 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6423 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     16287 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      9864 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9864 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2103 |      2103 |      2105 |      2105 |      2105 |      2120 |      2281 |      6423 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       961 |     16287 |
|                    Δ                     |     -1226 |     -1225 |     -1227 |     -1227 |     -1227 |     -1237 |     -1320 |      9864 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        58 |      9864 |

<p>
</details>

