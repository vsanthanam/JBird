# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        14 |        14 |        98 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       477 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -11 |       -11 |       379 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |       379 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        14 |        14 |        98 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       477 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -11 |       -11 |       379 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |       379 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       103 |       100 |        99 |        98 |        97 |        72 |        72 |        98 |
|                  jbird                   |       543 |       497 |       491 |       485 |       477 |       372 |       292 |       477 |
|                    Δ                     |       440 |       397 |       392 |       387 |       380 |       300 |       220 |       379 |
|              Improvement %               |       427 |       397 |       396 |       395 |       392 |       417 |       306 |       379 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        64 |       100 |       135 |       158 |       171 |       171 |        98 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       477 |
|                    Δ                     |        -1 |       -33 |       -69 |      -104 |      -127 |      -140 |      -140 |       379 |
|              Improvement %               |         3 |        52 |        69 |        77 |        80 |        82 |        82 |       379 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        98 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       477 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       379 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       379 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       244 |       244 |       244 |       244 |       245 |       249 |       249 |        98 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       477 |
|                    Δ                     |      -196 |      -196 |      -196 |      -196 |      -197 |      -200 |      -199 |       379 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       379 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        11 |        11 |        11 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       476 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |       377 |
|              Improvement %               |        78 |        80 |        80 |        80 |        82 |        82 |        82 |       377 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        11 |        11 |        11 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       476 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |       377 |
|              Improvement %               |        78 |        80 |        80 |        80 |        82 |        82 |        82 |       377 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       106 |       102 |       100 |        99 |        90 |        89 |        89 |        99 |
|                  jbird                   |       528 |       489 |       485 |       482 |       478 |       463 |       424 |       476 |
|                    Δ                     |       422 |       387 |       385 |       383 |       388 |       374 |       335 |       377 |
|              Improvement %               |       398 |       379 |       385 |       387 |       431 |       420 |       376 |       377 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        65 |       100 |       137 |       159 |       172 |       172 |        99 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       476 |
|                    Δ                     |        -1 |       -34 |       -69 |      -106 |      -128 |      -141 |      -141 |       377 |
|              Improvement %               |         3 |        52 |        69 |        77 |        81 |        82 |        82 |       377 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        99 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       476 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       377 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       377 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       238 |       238 |       239 |       239 |       239 |       251 |       251 |        99 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       476 |
|                    Δ                     |      -190 |      -190 |      -191 |      -191 |      -191 |      -202 |      -201 |       377 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       377 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2238 |      2388 |      2410 |      2437 |      2568 |      2613 |      2664 |       407 |
|                  jbird                   |       460 |       500 |       504 |       509 |       516 |       545 |       566 |      1841 |
|                    Δ                     |     -1778 |     -1888 |     -1906 |     -1928 |     -2052 |     -2068 |     -2098 |      1434 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        79 |        79 |      1434 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2234 |      2386 |      2410 |      2439 |      2566 |      2617 |      2667 |       407 |
|                  jbird                   |       461 |       502 |       506 |       510 |       518 |       546 |       568 |      1841 |
|                    Δ                     |     -1773 |     -1884 |     -1904 |     -1929 |     -2048 |     -2071 |     -2099 |      1434 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        79 |        79 |      1434 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       447 |       419 |       415 |       410 |       390 |       383 |       375 |       407 |
|                  jbird                   |      2174 |      1998 |      1984 |      1967 |      1938 |      1837 |      1766 |      1841 |
|                    Δ                     |      1727 |      1579 |      1569 |      1557 |      1548 |      1454 |      1391 |      1434 |
|              Improvement %               |       386 |       377 |       378 |       380 |       397 |       380 |       371 |      1434 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        65 |       102 |       139 |       161 |       176 |       176 |       407 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1841 |
|                    Δ                     |         0 |       -38 |       -75 |      -112 |      -134 |      -149 |      -149 |      1434 |
|              Improvement %               |         0 |        58 |        74 |        81 |        83 |        85 |        85 |      1434 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       407 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1841 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1434 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1434 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       407 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1841 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -50 |      1434 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1434 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2394 |      2503 |      2535 |      2572 |      2753 |      2806 |      2861 |       386 |
|                  jbird                   |       474 |       514 |       519 |       528 |       537 |       557 |       608 |      1797 |
|                    Δ                     |     -1920 |     -1989 |     -2016 |     -2044 |     -2216 |     -2249 |     -2253 |      1411 |
|              Improvement %               |        80 |        79 |        80 |        79 |        80 |        80 |        79 |      1411 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2395 |      2503 |      2537 |      2574 |      2755 |      2806 |      2862 |       386 |
|                  jbird                   |       475 |       515 |       521 |       529 |       538 |       558 |       610 |      1797 |
|                    Δ                     |     -1920 |     -1988 |     -2016 |     -2045 |     -2217 |     -2248 |     -2252 |      1411 |
|              Improvement %               |        80 |        79 |        79 |        79 |        80 |        80 |        79 |      1411 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       418 |       400 |       394 |       389 |       363 |       357 |       350 |       386 |
|                  jbird                   |      2111 |      1947 |      1926 |      1896 |      1862 |      1797 |      1644 |      1797 |
|                    Δ                     |      1693 |      1547 |      1532 |      1507 |      1499 |      1440 |      1294 |      1411 |
|              Improvement %               |       405 |       387 |       389 |       387 |       413 |       403 |       370 |      1411 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |        98 |       133 |       154 |       168 |       168 |       386 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1797 |
|                    Δ                     |         0 |       -35 |       -71 |      -106 |      -127 |      -141 |      -141 |      1411 |
|              Improvement %               |         0 |        56 |        72 |        80 |        82 |        84 |        84 |      1411 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       386 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1797 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1411 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1411 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        60 |        61 |        61 |        61 |        64 |        64 |       386 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1797 |
|                    Δ                     |       -48 |       -48 |       -49 |       -49 |       -49 |       -52 |       -51 |      1411 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        80 |      1411 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4421 |      4719 |      4813 |      4878 |      4932 |      5087 |      5258 |       207 |
|                  jbird                   |       925 |      1002 |      1014 |      1031 |      1047 |      1076 |      1109 |       950 |
|                    Δ                     |     -3496 |     -3717 |     -3799 |     -3847 |     -3885 |     -4011 |     -4149 |       743 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       743 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4422 |      4719 |      4817 |      4878 |      4936 |      5091 |      5253 |       207 |
|                  jbird                   |       926 |      1002 |      1015 |      1031 |      1048 |      1078 |      1111 |       950 |
|                    Δ                     |     -3496 |     -3717 |     -3802 |     -3847 |     -3888 |     -4013 |     -4142 |       743 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       743 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       226 |       212 |       208 |       205 |       203 |       197 |       190 |       207 |
|                  jbird                   |      1082 |       998 |       987 |       971 |       956 |       930 |       902 |       950 |
|                    Δ                     |       856 |       786 |       779 |       766 |       753 |       733 |       712 |       743 |
|              Improvement %               |       379 |       371 |       375 |       374 |       371 |       372 |       375 |       743 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       104 |       141 |       164 |       176 |       178 |       207 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       950 |
|                    Δ                     |         0 |       -36 |       -76 |      -113 |      -136 |      -148 |      -150 |       743 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |       743 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       207 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       950 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       743 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       743 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       117 |       117 |       117 |       118 |       118 |       119 |       124 |       207 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       950 |
|                    Δ                     |       -93 |       -93 |       -93 |       -94 |       -94 |       -95 |       -99 |       743 |
|              Improvement %               |        79 |        79 |        79 |        80 |        80 |        80 |        80 |       743 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4545 |      4768 |      4837 |      4964 |      5059 |      5337 |      5388 |       204 |
|                  jbird                   |       944 |      1027 |      1034 |      1046 |      1057 |      1087 |      1185 |       931 |
|                    Δ                     |     -3601 |     -3741 |     -3803 |     -3918 |     -4002 |     -4250 |     -4203 |       727 |
|              Improvement %               |        79 |        78 |        79 |        79 |        79 |        80 |        78 |       727 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4546 |      4760 |      4841 |      4964 |      5063 |      5333 |      5386 |       204 |
|                  jbird                   |       946 |      1028 |      1036 |      1047 |      1060 |      1090 |      1189 |       931 |
|                    Δ                     |     -3600 |     -3732 |     -3805 |     -3917 |     -4003 |     -4243 |     -4197 |       727 |
|              Improvement %               |        79 |        78 |        79 |        79 |        79 |        80 |        78 |       727 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       220 |       210 |       207 |       202 |       198 |       187 |       186 |       204 |
|                  jbird                   |      1059 |       974 |       967 |       957 |       946 |       920 |       844 |       931 |
|                    Δ                     |       839 |       764 |       760 |       755 |       748 |       733 |       658 |       727 |
|              Improvement %               |       381 |       364 |       367 |       374 |       378 |       392 |       354 |       727 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        63 |       101 |       139 |       161 |       174 |       175 |       204 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       931 |
|                    Δ                     |         0 |       -35 |       -72 |      -110 |      -132 |      -145 |      -146 |       727 |
|              Improvement %               |         0 |        56 |        71 |        79 |        82 |        83 |        83 |       727 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       204 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       931 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       727 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       727 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       124 |       124 |       204 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       931 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -99 |       -98 |       727 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       727 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        48 |        48 |        49 |        50 |        52 |        52 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        88 |
|                    Δ                     |       -37 |       -37 |       -37 |       -38 |       -38 |       -40 |       -40 |        67 |
|              Improvement %               |        77 |        77 |        77 |        78 |        76 |        77 |        77 |        67 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        48 |        48 |        49 |        50 |        52 |        52 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        88 |
|                    Δ                     |       -37 |       -37 |       -37 |       -38 |       -38 |       -40 |       -40 |        67 |
|              Improvement %               |        77 |        77 |        77 |        78 |        76 |        77 |        77 |        67 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |        93 |        90 |        89 |        88 |        87 |        85 |        85 |        88 |
|                    Δ                     |        72 |        69 |        68 |        68 |        67 |        66 |        66 |        67 |
|              Improvement %               |       343 |       329 |       324 |       340 |       335 |       347 |       347 |        67 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        85 |       119 |       160 |       183 |       193 |       193 |        21 |
|                  jbird                   |        28 |        51 |        52 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |       -18 |       -34 |       -67 |      -108 |      -131 |      -141 |      -141 |        67 |
|              Improvement %               |        39 |        40 |        56 |        68 |        72 |        73 |        73 |        67 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        67 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        67 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1181 |      1183 |      1184 |      1186 |      1186 |      1189 |      1189 |        21 |
|                  jbird                   |       247 |       248 |       248 |       248 |       248 |       257 |       257 |        88 |
|                    Δ                     |      -934 |      -935 |      -936 |      -938 |      -938 |      -932 |      -932 |        67 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        67 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        51 |        52 |        52 |        21 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |       -37 |       -38 |       -38 |       -38 |       -39 |       -40 |       -40 |        65 |
|              Improvement %               |        77 |        78 |        78 |        76 |        76 |        77 |        77 |        65 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        51 |        52 |        52 |        21 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |       -37 |       -38 |       -38 |       -38 |       -39 |       -40 |       -40 |        65 |
|              Improvement %               |        77 |        78 |        78 |        76 |        76 |        77 |        77 |        65 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        20 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |        91 |        88 |        87 |        87 |        86 |        84 |        84 |        86 |
|                    Δ                     |        70 |        67 |        67 |        67 |        66 |        65 |        65 |        65 |
|              Improvement %               |       333 |       319 |       335 |       335 |       330 |       342 |       342 |        65 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        84 |       119 |       157 |       179 |       194 |       194 |        21 |
|                  jbird                   |        34 |        50 |        50 |        51 |        51 |        52 |        52 |        86 |
|                    Δ                     |       -14 |       -34 |       -69 |      -106 |      -128 |      -142 |      -142 |        65 |
|              Improvement %               |        29 |        40 |        58 |        68 |        72 |        73 |        73 |        65 |

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
|                swiftyjson                |      1189 |      1190 |      1191 |      1193 |      1194 |      1197 |      1197 |        21 |
|                  jbird                   |       252 |       252 |       252 |       252 |       252 |       261 |       261 |        86 |
|                    Δ                     |      -937 |      -938 |      -939 |      -941 |      -942 |      -936 |      -936 |        65 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        65 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       550 |       597 |       609 |       620 |       630 |       661 |       725 |      1550 |
|                  jbird                   |       115 |       124 |       130 |       132 |       135 |       147 |       204 |      6055 |
|                    Δ                     |      -435 |      -473 |      -479 |      -488 |      -495 |      -514 |      -521 |      4505 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        72 |      4505 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       552 |       599 |       610 |       621 |       631 |       662 |       721 |      1550 |
|                  jbird                   |       116 |       126 |       131 |       134 |       136 |       149 |       203 |      6055 |
|                    Δ                     |      -436 |      -473 |      -479 |      -487 |      -495 |      -513 |      -518 |      4505 |
|              Improvement %               |        79 |        79 |        79 |        78 |        78 |        77 |        72 |      4505 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1817 |      1676 |      1643 |      1614 |      1588 |      1514 |      1380 |      1550 |
|                  jbird                   |      8696 |      8043 |      7703 |      7559 |      7415 |      6787 |      4893 |      6055 |
|                    Δ                     |      6879 |      6367 |      6060 |      5945 |      5827 |      5273 |      3513 |      4505 |
|              Improvement %               |       379 |       380 |       369 |       368 |       367 |       348 |       255 |      4505 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        63 |       101 |       139 |       161 |       174 |       176 |      1550 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6055 |
|                    Δ                     |         0 |       -37 |       -75 |      -113 |      -135 |      -148 |      -150 |      4505 |
|              Improvement %               |         0 |        59 |        74 |        81 |        84 |        85 |        85 |      4505 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1550 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6055 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4505 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4505 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        16 |      1550 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6055 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |      4505 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        81 |      4505 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       583 |       629 |       641 |       653 |       690 |       724 |       754 |      1466 |
|                  jbird                   |       117 |       125 |       131 |       133 |       136 |       147 |       202 |      6031 |
|                    Δ                     |      -466 |      -504 |      -510 |      -520 |      -554 |      -577 |      -552 |      4565 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        73 |      4565 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       585 |       630 |       642 |       654 |       691 |       726 |       755 |      1466 |
|                  jbird                   |       118 |       127 |       132 |       134 |       137 |       149 |       204 |      6031 |
|                    Δ                     |      -467 |      -503 |      -510 |      -520 |      -554 |      -577 |      -551 |      4565 |
|              Improvement %               |        80 |        80 |        79 |        80 |        80 |        79 |        73 |      4565 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1715 |      1591 |      1562 |      1532 |      1450 |      1381 |      1327 |      1466 |
|                  jbird                   |      8568 |      7995 |      7643 |      7531 |      7383 |      6795 |      4950 |      6031 |
|                    Δ                     |      6853 |      6404 |      6081 |      5999 |      5933 |      5414 |      3623 |      4565 |
|              Improvement %               |       400 |       403 |       389 |       392 |       409 |       392 |       273 |      4565 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        60 |        97 |       132 |       154 |       166 |       168 |      1466 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6031 |
|                    Δ                     |         0 |       -34 |       -71 |      -106 |      -128 |      -140 |      -142 |      4565 |
|              Improvement %               |         0 |        57 |        73 |        80 |        83 |        84 |        85 |      4565 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1466 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6031 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4565 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4565 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1466 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6031 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4565 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4565 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       142 |       146 |       150 |       159 |       166 |       179 |       210 |      5426 |
|                  jbird                   |        57 |        58 |        62 |        64 |        65 |        75 |        94 |     10773 |
|                    Δ                     |       -85 |       -88 |       -88 |       -95 |      -101 |      -104 |      -116 |      5347 |
|              Improvement %               |        60 |        60 |        59 |        60 |        61 |        58 |        55 |      5347 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       144 |       148 |       152 |       161 |       167 |       181 |       208 |      5426 |
|                  jbird                   |        58 |        59 |        64 |        65 |        66 |        77 |        98 |     10773 |
|                    Δ                     |       -86 |       -89 |       -88 |       -96 |      -101 |      -104 |      -110 |      5347 |
|              Improvement %               |        60 |        60 |        58 |        60 |        60 |        57 |        53 |      5347 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7020 |      6843 |      6663 |      6275 |      6039 |      5579 |      4772 |      5426 |
|                  jbird                   |     17608 |     17343 |     16103 |     15639 |     15471 |     13311 |     10638 |     10773 |
|                    Δ                     |     10588 |     10500 |      9440 |      9364 |      9432 |      7732 |      5866 |      5347 |
|              Improvement %               |       151 |       153 |       142 |       149 |       156 |       139 |       123 |      5347 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        32 |        38 |        45 |        49 |        52 |        52 |      5426 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10773 |
|                    Δ                     |         0 |        -7 |       -13 |       -20 |       -24 |       -27 |       -27 |      5347 |
|              Improvement %               |         0 |        22 |        34 |        44 |        49 |        52 |        52 |      5347 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5426 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10773 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      5347 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      5347 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2918 |      2920 |      2920 |      2929 |      2931 |      3045 |      3064 |      5426 |
|                  jbird                   |      1513 |      1513 |      1513 |      1513 |      1513 |      1542 |      1567 |     10773 |
|                    Δ                     |     -1405 |     -1407 |     -1407 |     -1416 |     -1418 |     -1503 |     -1497 |      5347 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        49 |        49 |      5347 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1555 |      1668 |      1682 |      1698 |      1715 |      1860 |      1930 |       582 |
|                  jbird                   |        87 |        93 |        97 |        98 |       100 |       111 |       177 |      7841 |
|                    Δ                     |     -1468 |     -1575 |     -1585 |     -1600 |     -1615 |     -1749 |     -1753 |      7259 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        91 |      7259 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1557 |      1670 |      1684 |      1701 |      1717 |      1863 |      1932 |       582 |
|                  jbird                   |        88 |        95 |        99 |       100 |       102 |       113 |       178 |      7841 |
|                    Δ                     |     -1469 |     -1575 |     -1585 |     -1601 |     -1615 |     -1750 |     -1754 |      7259 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        91 |      7259 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       643 |       600 |       595 |       589 |       583 |       538 |       518 |       582 |
|                  jbird                   |     11527 |     10735 |     10271 |     10175 |      9967 |      9023 |      5660 |      7841 |
|                    Δ                     |     10884 |     10135 |      9676 |      9586 |      9384 |      8485 |      5142 |      7259 |
|              Improvement %               |      1693 |      1689 |      1626 |      1628 |      1610 |      1577 |       993 |      7259 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        37 |        48 |        60 |        66 |        70 |        70 |       582 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7841 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -40 |       -44 |       -44 |      7259 |
|              Improvement %               |         0 |        30 |        46 |        57 |        61 |        63 |        63 |      7259 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       582 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7841 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7259 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7259 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        44 |        44 |        44 |        44 |        44 |        47 |        47 |       582 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7841 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -44 |       -44 |      7259 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7259 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1120 |      1210 |      1230 |      1249 |      1263 |      1354 |      1414 |       792 |
|                  jbird                   |        56 |        60 |        63 |        64 |        65 |        73 |       133 |     10685 |
|                    Δ                     |     -1064 |     -1150 |     -1167 |     -1185 |     -1198 |     -1281 |     -1281 |      9893 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        91 |      9893 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1122 |      1211 |      1230 |      1250 |      1265 |      1356 |      1416 |       792 |
|                  jbird                   |        57 |        62 |        65 |        65 |        66 |        75 |       137 |     10685 |
|                    Δ                     |     -1065 |     -1149 |     -1165 |     -1185 |     -1199 |     -1281 |     -1279 |      9893 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        90 |      9893 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       893 |       827 |       814 |       801 |       792 |       739 |       707 |       792 |
|                  jbird                   |     17817 |     16575 |     15855 |     15671 |     15487 |     13639 |      7538 |     10685 |
|                    Δ                     |     16924 |     15748 |     15041 |     14870 |     14695 |     12900 |      6831 |      9893 |
|              Improvement %               |      1895 |      1904 |      1848 |      1856 |      1855 |      1746 |       966 |      9893 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        63 |        81 |        92 |        99 |       100 |       792 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10685 |
|                    Δ                     |         0 |       -19 |       -37 |       -55 |       -66 |       -73 |       -74 |      9893 |
|              Improvement %               |         0 |        42 |        59 |        68 |        72 |        74 |        74 |      9893 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       792 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10685 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      9893 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9893 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        31 |        32 |       792 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10685 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -29 |       -30 |      9893 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      9893 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        97 |       103 |       107 |       113 |       118 |       134 |       175 |      7014 |
|                  jbird                   |        28 |        29 |        31 |        31 |        32 |        38 |        75 |     15448 |
|                    Δ                     |       -69 |       -74 |       -76 |       -82 |       -86 |       -96 |      -100 |      8434 |
|              Improvement %               |        71 |        72 |        71 |        73 |        73 |        72 |        57 |      8434 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |       104 |       109 |       115 |       120 |       133 |       177 |      7014 |
|                  jbird                   |        29 |        30 |        33 |        33 |        33 |        41 |        67 |     15448 |
|                    Δ                     |       -70 |       -74 |       -76 |       -82 |       -87 |       -92 |      -110 |      8434 |
|              Improvement %               |        71 |        71 |        70 |        71 |        72 |        69 |        62 |      8434 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10292 |      9743 |      9335 |      8839 |      8471 |      7491 |      5718 |      7014 |
|                  jbird                   |     36036 |     34783 |     31967 |     31839 |     31503 |     26063 |     13393 |     15448 |
|                    Δ                     |     25744 |     25040 |     22632 |     23000 |     23032 |     18572 |      7675 |      8434 |
|              Improvement %               |       250 |       257 |       242 |       260 |       272 |       248 |       134 |      8434 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       130 |       241 |       354 |       420 |       460 |       465 |      7014 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15448 |
|                    Δ                     |         0 |      -105 |      -215 |      -328 |      -394 |      -434 |      -439 |      8434 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      8434 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      7014 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15448 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8434 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8434 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2487 |      2505 |      2511 |      2517 |      2525 |      2644 |      2677 |      7014 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       936 |     15448 |
|                    Δ                     |     -1610 |     -1627 |     -1633 |     -1639 |     -1647 |     -1761 |     -1741 |      8434 |
|              Improvement %               |        65 |        65 |        65 |        65 |        65 |        67 |        65 |      8434 |

<p>
</details>

