# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        12 |        12 |        97 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       466 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |       369 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        75 |        75 |       369 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        12 |        12 |        97 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       466 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |       369 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        75 |        75 |       369 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       103 |        99 |        98 |        96 |        92 |        85 |        85 |        97 |
|                  jbird                   |       534 |       486 |       481 |       473 |       461 |       385 |       309 |       466 |
|                    Δ                     |       431 |       387 |       383 |       377 |       369 |       300 |       224 |       369 |
|              Improvement %               |       418 |       391 |       391 |       393 |       401 |       353 |       264 |       369 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |        99 |       135 |       156 |       169 |       169 |        97 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       466 |
|                    Δ                     |         2 |       -33 |       -68 |      -104 |      -125 |      -138 |      -138 |       369 |
|              Improvement %               |        -7 |        52 |        69 |        77 |        80 |        82 |        82 |       369 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        97 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       466 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       369 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       369 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       239 |       239 |       240 |       240 |       240 |       252 |       252 |        97 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       466 |
|                    Δ                     |      -192 |      -192 |      -193 |      -193 |      -193 |      -204 |      -203 |       369 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |       369 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        12 |        12 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       458 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       -10 |       359 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        83 |        83 |       359 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       458 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |       359 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        82 |        82 |       359 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       103 |       101 |       100 |        99 |        97 |        87 |        87 |        99 |
|                  jbird                   |       520 |       476 |       468 |       458 |       452 |       433 |       427 |       458 |
|                    Δ                     |       417 |       375 |       368 |       359 |       355 |       346 |       340 |       359 |
|              Improvement %               |       405 |       371 |       368 |       363 |       366 |       398 |       391 |       359 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |       101 |       137 |       160 |       172 |       172 |        99 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       458 |
|                    Δ                     |         2 |       -33 |       -70 |      -106 |      -129 |      -141 |      -141 |       359 |
|              Improvement %               |        -7 |        52 |        69 |        77 |        81 |        82 |        82 |       359 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        99 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       458 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       359 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       359 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       236 |       237 |       237 |       237 |       237 |       250 |       250 |        99 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        50 |       458 |
|                    Δ                     |      -188 |      -189 |      -189 |      -189 |      -189 |      -200 |      -200 |       359 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       359 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2380 |      2595 |      2626 |      2652 |      2687 |      2804 |      2850 |       376 |
|                  jbird                   |       464 |       511 |       518 |       528 |       537 |       566 |       589 |      1792 |
|                    Δ                     |     -1916 |     -2084 |     -2108 |     -2124 |     -2150 |     -2238 |     -2261 |      1416 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        79 |      1416 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2381 |      2597 |      2628 |      2656 |      2689 |      2812 |      2851 |       376 |
|                  jbird                   |       466 |       513 |       520 |       530 |       539 |       567 |       594 |      1792 |
|                    Δ                     |     -1915 |     -2084 |     -2108 |     -2126 |     -2150 |     -2245 |     -2257 |      1416 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |      1416 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       420 |       385 |       381 |       377 |       372 |       357 |       351 |       376 |
|                  jbird                   |      2154 |      1958 |      1929 |      1895 |      1863 |      1768 |      1697 |      1792 |
|                    Δ                     |      1734 |      1573 |      1548 |      1518 |      1491 |      1411 |      1346 |      1416 |
|              Improvement %               |       413 |       409 |       406 |       403 |       401 |       395 |       383 |      1416 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        60 |        95 |       129 |       151 |       163 |       165 |       376 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1792 |
|                    Δ                     |         0 |       -33 |       -68 |      -102 |      -124 |      -136 |      -138 |      1416 |
|              Improvement %               |         0 |        55 |        72 |        79 |        82 |        83 |        84 |      1416 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       376 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1792 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1416 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1416 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        61 |        61 |        61 |        61 |        61 |        64 |        64 |       376 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1792 |
|                    Δ                     |       -49 |       -49 |       -49 |       -49 |       -49 |       -52 |       -52 |      1416 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1416 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2216 |      2390 |      2415 |      2445 |      2486 |      2617 |      2734 |       407 |
|                  jbird                   |       480 |       521 |       528 |       547 |       562 |       608 |      1099 |      1740 |
|                    Δ                     |     -1736 |     -1869 |     -1887 |     -1898 |     -1924 |     -2009 |     -1635 |      1333 |
|              Improvement %               |        78 |        78 |        78 |        78 |        77 |        77 |        60 |      1333 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2218 |      2392 |      2417 |      2447 |      2488 |      2619 |      2742 |       407 |
|                  jbird                   |       482 |       523 |       530 |       549 |       563 |       610 |       765 |      1740 |
|                    Δ                     |     -1736 |     -1869 |     -1887 |     -1898 |     -1925 |     -2009 |     -1977 |      1333 |
|              Improvement %               |        78 |        78 |        78 |        78 |        77 |        77 |        72 |      1333 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       451 |       419 |       414 |       409 |       402 |       382 |       366 |       407 |
|                  jbird                   |      2082 |      1919 |      1893 |      1827 |      1781 |      1645 |       910 |      1740 |
|                    Δ                     |      1631 |      1500 |      1479 |      1418 |      1379 |      1263 |       544 |      1333 |
|              Improvement %               |       362 |       358 |       357 |       347 |       343 |       331 |       149 |      1333 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        65 |       101 |       139 |       161 |       174 |       176 |       407 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1740 |
|                    Δ                     |         0 |       -38 |       -74 |      -112 |      -134 |      -147 |      -149 |      1333 |
|              Improvement %               |         0 |        58 |        73 |        81 |        83 |        84 |        85 |      1333 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       407 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1740 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1333 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1333 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       407 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1740 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -49 |      1333 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1333 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4535 |      4792 |      4821 |      4854 |      4887 |      5059 |      5212 |       206 |
|                  jbird                   |       946 |      1029 |      1036 |      1049 |      1078 |      1117 |      1162 |       926 |
|                    Δ                     |     -3589 |     -3763 |     -3785 |     -3805 |     -3809 |     -3942 |     -4050 |       720 |
|              Improvement %               |        79 |        79 |        79 |        78 |        78 |        78 |        78 |       720 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4542 |      4796 |      4825 |      4858 |      4887 |      5063 |      5216 |       206 |
|                  jbird                   |       947 |      1030 |      1038 |      1051 |      1080 |      1119 |      1166 |       926 |
|                    Δ                     |     -3595 |     -3766 |     -3787 |     -3807 |     -3807 |     -3944 |     -4050 |       720 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        78 |        78 |       720 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       220 |       209 |       208 |       206 |       205 |       198 |       192 |       206 |
|                  jbird                   |      1057 |       973 |       965 |       954 |       928 |       895 |       861 |       926 |
|                    Δ                     |       837 |       764 |       757 |       748 |       723 |       697 |       669 |       720 |
|              Improvement %               |       380 |       366 |       364 |       363 |       353 |       352 |       348 |       720 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       102 |       139 |       163 |       176 |       178 |       206 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       926 |
|                    Δ                     |         0 |       -36 |       -74 |      -111 |      -135 |      -148 |      -150 |       720 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |       720 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       206 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       926 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       720 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       720 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       117 |       117 |       117 |       117 |       117 |       122 |       124 |       206 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       926 |
|                    Δ                     |       -93 |       -93 |       -93 |       -93 |       -93 |       -98 |       -99 |       720 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |       720 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4588 |      4874 |      4903 |      4936 |      4977 |      5091 |      5307 |       203 |
|                  jbird                   |       966 |      1037 |      1056 |      1081 |      1102 |      1150 |      1310 |       909 |
|                    Δ                     |     -3622 |     -3837 |     -3847 |     -3855 |     -3875 |     -3941 |     -3997 |       706 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        77 |        75 |       706 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4589 |      4878 |      4903 |      4936 |      4981 |      5100 |      5300 |       203 |
|                  jbird                   |       967 |      1039 |      1058 |      1083 |      1104 |      1151 |      1263 |       909 |
|                    Δ                     |     -3622 |     -3839 |     -3845 |     -3853 |     -3877 |     -3949 |     -4037 |       706 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        77 |        76 |       706 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       218 |       205 |       204 |       203 |       201 |       196 |       188 |       203 |
|                  jbird                   |      1036 |       964 |       948 |       925 |       908 |       870 |       764 |       909 |
|                    Δ                     |       818 |       759 |       744 |       722 |       707 |       674 |       576 |       706 |
|              Improvement %               |       375 |       370 |       365 |       356 |       352 |       344 |       306 |       706 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       100 |       139 |       161 |       174 |       174 |       203 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       909 |
|                    Δ                     |         0 |       -36 |       -72 |      -111 |      -133 |      -146 |      -146 |       706 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |       706 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       203 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       909 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       706 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       706 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       123 |       125 |       203 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       909 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |      -100 |       706 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       706 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        50 |        50 |        50 |        54 |        54 |        21 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        13 |        13 |        86 |
|                    Δ                     |       -37 |       -38 |       -39 |       -38 |       -38 |       -41 |       -41 |        65 |
|              Improvement %               |        77 |        78 |        78 |        76 |        76 |        76 |        76 |        65 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        50 |        50 |        50 |        52 |        52 |        21 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |       -37 |       -38 |       -39 |       -38 |       -38 |       -40 |       -40 |        65 |
|              Improvement %               |        77 |        78 |        78 |        76 |        76 |        77 |        77 |        65 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        20 |        20 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |        93 |        88 |        87 |        87 |        85 |        78 |        78 |        86 |
|                    Δ                     |        72 |        68 |        67 |        67 |        65 |        59 |        59 |        65 |
|              Improvement %               |       343 |       340 |       335 |       335 |       325 |       311 |       311 |        65 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        84 |       120 |       155 |       177 |       197 |       197 |        21 |
|                  jbird                   |        28 |        50 |        50 |        50 |        50 |        50 |        50 |        86 |
|                    Δ                     |       -20 |       -34 |       -70 |      -105 |      -127 |      -147 |      -147 |        65 |
|              Improvement %               |        42 |        40 |        58 |        68 |        72 |        75 |        75 |        65 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        86 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        65 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        65 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1170 |      1172 |      1173 |      1174 |      1177 |      1179 |      1179 |        21 |
|                  jbird                   |       246 |       246 |       246 |       246 |       246 |       251 |       251 |        86 |
|                    Δ                     |      -924 |      -926 |      -927 |      -928 |      -931 |      -928 |      -928 |        65 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |        65 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        55 |        56 |        56 |        57 |        57 |        57 |        18 |
|                  jbird                   |        11 |        12 |        12 |        12 |        12 |        13 |        13 |        84 |
|                    Δ                     |       -44 |       -43 |       -44 |       -44 |       -45 |       -44 |       -44 |        66 |
|              Improvement %               |        80 |        78 |        79 |        79 |        79 |        77 |        77 |        66 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        55 |        56 |        56 |        57 |        57 |        57 |        18 |
|                  jbird                   |        11 |        12 |        12 |        12 |        12 |        13 |        13 |        84 |
|                    Δ                     |       -44 |       -43 |       -44 |       -44 |       -45 |       -44 |       -44 |        66 |
|              Improvement %               |        80 |        78 |        79 |        79 |        79 |        77 |        77 |        66 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        18 |        18 |        18 |        18 |        18 |        18 |        18 |        18 |
|                  jbird                   |        89 |        86 |        85 |        83 |        82 |        76 |        76 |        84 |
|                    Δ                     |        71 |        68 |        67 |        65 |        64 |        58 |        58 |        66 |
|              Improvement %               |       394 |       378 |       372 |       361 |       356 |       322 |       322 |        66 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        77 |       111 |       145 |       168 |       175 |       175 |        18 |
|                  jbird                   |        28 |        51 |        51 |        52 |        52 |        52 |        52 |        84 |
|                    Δ                     |       -20 |       -26 |       -60 |       -93 |      -116 |      -123 |      -123 |        66 |
|              Improvement %               |        42 |        34 |        54 |        64 |        69 |        70 |        70 |        66 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        18 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        84 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        66 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        66 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1277 |      1279 |      1279 |      1282 |      1285 |      1286 |      1286 |        18 |
|                  jbird                   |       252 |       252 |       252 |       252 |       252 |       261 |       261 |        84 |
|                    Δ                     |     -1025 |     -1027 |     -1027 |     -1030 |     -1033 |     -1025 |     -1025 |        66 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |        66 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       552 |       599 |       613 |       629 |       638 |       672 |       775 |      1532 |
|                  jbird                   |       116 |       127 |       131 |       133 |       136 |       145 |       178 |      5987 |
|                    Δ                     |      -436 |      -472 |      -482 |      -496 |      -502 |      -527 |      -597 |      4455 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        77 |      4455 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       554 |       600 |       615 |       631 |       639 |       675 |       761 |      1532 |
|                  jbird                   |       117 |       129 |       133 |       135 |       137 |       148 |       180 |      5987 |
|                    Δ                     |      -437 |      -471 |      -482 |      -496 |      -502 |      -527 |      -581 |      4455 |
|              Improvement %               |        79 |        78 |        78 |        79 |        79 |        78 |        76 |      4455 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1810 |      1671 |      1632 |      1590 |      1569 |      1488 |      1290 |      1532 |
|                  jbird                   |      8618 |      7871 |      7627 |      7507 |      7379 |      6903 |      5622 |      5987 |
|                    Δ                     |      6808 |      6200 |      5995 |      5917 |      5810 |      5415 |      4332 |      4455 |
|              Improvement %               |       376 |       371 |       367 |       372 |       370 |       364 |       336 |      4455 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       138 |       160 |       173 |       175 |      1532 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5987 |
|                    Δ                     |         0 |       -37 |       -73 |      -112 |      -134 |      -147 |      -149 |      4455 |
|              Improvement %               |         0 |        60 |        74 |        81 |        84 |        85 |        85 |      4455 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1532 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5987 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4455 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4455 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1532 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5987 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4455 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4455 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       551 |       604 |       611 |       618 |       628 |       664 |       686 |      1539 |
|                  jbird                   |       120 |       131 |       134 |       137 |       139 |       148 |       177 |      5870 |
|                    Δ                     |      -431 |      -473 |      -477 |      -481 |      -489 |      -516 |      -509 |      4331 |
|              Improvement %               |        78 |        78 |        78 |        78 |        78 |        78 |        74 |      4331 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       552 |       606 |       613 |       620 |       631 |       665 |       688 |      1539 |
|                  jbird                   |       122 |       132 |       136 |       138 |       140 |       150 |       176 |      5870 |
|                    Δ                     |      -430 |      -474 |      -477 |      -482 |      -491 |      -515 |      -512 |      4331 |
|              Improvement %               |        78 |        78 |        78 |        78 |        78 |        77 |        74 |      4331 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1815 |      1656 |      1637 |      1619 |      1592 |      1507 |      1457 |      1539 |
|                  jbird                   |      8328 |      7663 |      7443 |      7327 |      7219 |      6779 |      5652 |      5870 |
|                    Δ                     |      6513 |      6007 |      5806 |      5708 |      5627 |      5272 |      4195 |      4331 |
|              Improvement %               |       359 |       363 |       355 |       353 |       353 |       350 |       288 |      4331 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       137 |       161 |       174 |       176 |      1539 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5870 |
|                    Δ                     |         0 |       -37 |       -73 |      -111 |      -135 |      -148 |      -150 |      4331 |
|              Improvement %               |         0 |        60 |        74 |        81 |        84 |        85 |        85 |      4331 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1539 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5870 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4331 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4331 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1539 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5870 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4331 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4331 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       144 |       150 |       158 |       164 |       168 |       181 |       203 |      5276 |
|                  jbird                   |        58 |        62 |        65 |        66 |        66 |        74 |        94 |     10400 |
|                    Δ                     |       -86 |       -88 |       -93 |       -98 |      -102 |      -107 |      -109 |      5124 |
|              Improvement %               |        60 |        59 |        59 |        60 |        61 |        59 |        54 |      5124 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       151 |       160 |       165 |       169 |       182 |       207 |      5276 |
|                  jbird                   |        59 |        63 |        67 |        67 |        68 |        76 |        98 |     10400 |
|                    Δ                     |       -86 |       -88 |       -93 |       -98 |      -101 |      -106 |      -109 |      5124 |
|              Improvement %               |        59 |        58 |        58 |        59 |        60 |        58 |        53 |      5124 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6936 |      6671 |      6319 |      6111 |      5975 |      5539 |      4920 |      5276 |
|                  jbird                   |     17354 |     16231 |     15279 |     15191 |     15079 |     13479 |     10587 |     10400 |
|                    Δ                     |     10418 |      9560 |      8960 |      9080 |      9104 |      7940 |      5667 |      5124 |
|              Improvement %               |       150 |       143 |       142 |       149 |       152 |       143 |       115 |      5124 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        32 |        38 |        45 |        49 |        51 |        51 |      5276 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10400 |
|                    Δ                     |         0 |        -7 |       -13 |       -20 |       -24 |       -26 |       -26 |      5124 |
|              Improvement %               |         0 |        22 |        34 |        44 |        49 |        51 |        51 |      5124 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5276 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10400 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      5124 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      5124 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2997 |      2998 |      3000 |      3006 |      3011 |      3125 |      3236 |      5276 |
|                  jbird                   |      1612 |      1613 |      1613 |      1613 |      1613 |      1641 |      1666 |     10400 |
|                    Δ                     |     -1385 |     -1385 |     -1387 |     -1393 |     -1398 |     -1484 |     -1570 |      5124 |
|              Improvement %               |        46 |        46 |        46 |        46 |        46 |        47 |        49 |      5124 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1549 |      1689 |      1705 |      1722 |      1740 |      1925 |      1951 |       574 |
|                  jbird                   |        86 |        96 |        98 |        99 |       101 |       114 |       178 |      7739 |
|                    Δ                     |     -1463 |     -1593 |     -1607 |     -1623 |     -1639 |     -1811 |     -1773 |      7165 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        91 |      7165 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1551 |      1691 |      1707 |      1724 |      1743 |      1930 |      1953 |       574 |
|                  jbird                   |        87 |        97 |       100 |       101 |       103 |       116 |       182 |      7739 |
|                    Δ                     |     -1464 |     -1594 |     -1607 |     -1623 |     -1640 |     -1814 |     -1771 |      7165 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        91 |      7165 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       646 |       592 |       587 |       581 |       575 |       520 |       512 |       574 |
|                  jbird                   |     11645 |     10463 |     10191 |     10079 |      9887 |      8799 |      5604 |      7739 |
|                    Δ                     |     10999 |      9871 |      9604 |      9498 |      9312 |      8279 |      5092 |      7165 |
|              Improvement %               |      1703 |      1667 |      1636 |      1635 |      1619 |      1592 |       995 |      7165 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        37 |        48 |        59 |        66 |        69 |        70 |       574 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7739 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -40 |       -43 |       -44 |      7165 |
|              Improvement %               |         0 |        30 |        46 |        56 |        61 |        62 |        63 |      7165 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       574 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7739 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7165 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7165 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        44 |        44 |        44 |        44 |        44 |        47 |        47 |       574 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7739 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -44 |       -44 |      7165 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7165 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1095 |      1195 |      1205 |      1223 |      1241 |      1277 |      6808 |       800 |
|                  jbird                   |        57 |        63 |        65 |        66 |        67 |        76 |       137 |     10423 |
|                    Δ                     |     -1038 |     -1132 |     -1140 |     -1157 |     -1174 |     -1201 |     -6671 |      9623 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        98 |      9623 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1096 |      1197 |      1207 |      1225 |      1243 |      1278 |      1342 |       800 |
|                  jbird                   |        58 |        65 |        67 |        68 |        69 |        78 |       141 |     10423 |
|                    Δ                     |     -1038 |     -1132 |     -1140 |     -1157 |     -1174 |     -1200 |     -1201 |      9623 |
|              Improvement %               |        95 |        95 |        94 |        94 |        94 |        94 |        89 |      9623 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       913 |       837 |       830 |       819 |       806 |       782 |       147 |       800 |
|                  jbird                   |     17634 |     15815 |     15359 |     15127 |     14903 |     13119 |      7290 |     10423 |
|                    Δ                     |     16721 |     14978 |     14529 |     14308 |     14097 |     12337 |      7143 |      9623 |
|              Improvement %               |      1831 |      1789 |      1750 |      1747 |      1749 |      1578 |      4859 |      9623 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        64 |        82 |        93 |       100 |       101 |       800 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10423 |
|                    Δ                     |         0 |       -19 |       -38 |       -56 |       -67 |       -74 |       -75 |      9623 |
|              Improvement %               |         0 |        42 |        59 |        68 |        72 |        74 |        74 |      9623 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       800 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10423 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      9623 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9623 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        29 |        29 |        29 |        29 |        30 |        31 |       800 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10423 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -28 |       -29 |      9623 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        94 |      9623 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       104 |       110 |       114 |       117 |       128 |      5161 |      6910 |
|                  jbird                   |        28 |        31 |        32 |        33 |        34 |        40 |        70 |     15018 |
|                    Δ                     |       -68 |       -73 |       -78 |       -81 |       -83 |       -88 |     -5091 |      8108 |
|              Improvement %               |        71 |        70 |        71 |        71 |        71 |        69 |        99 |      8108 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        97 |       106 |       112 |       115 |       118 |       130 |       177 |      6910 |
|                  jbird                   |        30 |        32 |        34 |        34 |        36 |        42 |        68 |     15018 |
|                    Δ                     |       -67 |       -74 |       -78 |       -81 |       -82 |       -88 |      -109 |      8108 |
|              Improvement %               |        69 |        70 |        70 |        70 |        69 |        68 |        62 |      8108 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10448 |      9599 |      9095 |      8799 |      8583 |      7807 |       194 |      6910 |
|                  jbird                   |     35140 |     32623 |     31135 |     30575 |     29247 |     24879 |     14328 |     15018 |
|                    Δ                     |     24692 |     23024 |     22040 |     21776 |     20664 |     17072 |     14134 |      8108 |
|              Improvement %               |       236 |       240 |       242 |       247 |       241 |       219 |      7286 |      8108 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       132 |       241 |       345 |       414 |       452 |       458 |      6910 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15018 |
|                    Δ                     |         0 |      -107 |      -216 |      -320 |      -389 |      -427 |      -433 |      8108 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        94 |        95 |      8108 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6910 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15018 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8108 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8108 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2515 |      2531 |      2537 |      2544 |      2552 |      2679 |      2708 |      6910 |
|                  jbird                   |       876 |       877 |       877 |       877 |       877 |       882 |       928 |     15018 |
|                    Δ                     |     -1639 |     -1654 |     -1660 |     -1667 |     -1675 |     -1797 |     -1780 |      8108 |
|              Improvement %               |        65 |        65 |        65 |        66 |        66 |        67 |        66 |      8108 |

<p>
</details>

