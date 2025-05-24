# JBird vs. SwiftyJSON

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        12 |        12 |        97 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       513 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |       -10 |       -10 |       416 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        83 |        83 |       416 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        12 |        12 |        97 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       513 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |       -10 |       -10 |       416 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        83 |        83 |       416 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       103 |        99 |        98 |        96 |        92 |        85 |        85 |        97 |
|                  jbird                   |       544 |       529 |       524 |       519 |       512 |       490 |       466 |       513 |
|                    Δ                     |       441 |       430 |       426 |       423 |       420 |       405 |       381 |       416 |
|              Improvement %               |       428 |       434 |       435 |       441 |       457 |       476 |       448 |       416 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |        99 |       135 |       156 |       169 |       169 |        97 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       513 |
|                    Δ                     |         2 |       -33 |       -68 |      -104 |      -125 |      -138 |      -138 |       416 |
|              Improvement %               |        -7 |        52 |        69 |        77 |        80 |        82 |        82 |       416 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        97 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       513 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       416 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       416 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       239 |       239 |       240 |       240 |       240 |       252 |       252 |        97 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       513 |
|                    Δ                     |      -191 |      -191 |      -192 |      -192 |      -192 |      -203 |      -202 |       416 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        80 |       416 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        12 |        12 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       507 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       -10 |       408 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        83 |        83 |       408 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       507 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |       408 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        82 |        82 |       408 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       103 |       101 |       100 |        99 |        97 |        87 |        87 |        99 |
|                  jbird                   |       536 |       522 |       518 |       513 |       507 |       488 |       474 |       507 |
|                    Δ                     |       433 |       421 |       418 |       414 |       410 |       401 |       387 |       408 |
|              Improvement %               |       420 |       417 |       418 |       418 |       423 |       461 |       445 |       408 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |       101 |       137 |       160 |       172 |       172 |        99 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       507 |
|                    Δ                     |         2 |       -33 |       -70 |      -106 |      -129 |      -141 |      -141 |       408 |
|              Improvement %               |        -7 |        52 |        69 |        77 |        81 |        82 |        82 |       408 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        99 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       507 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       408 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       408 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       236 |       237 |       237 |       237 |       237 |       250 |       250 |        99 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        50 |       507 |
|                    Δ                     |      -188 |      -189 |      -189 |      -189 |      -189 |      -200 |      -200 |       408 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       408 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2380 |      2595 |      2626 |      2652 |      2687 |      2804 |      2850 |       376 |
|                  jbird                   |       457 |       467 |       474 |       487 |       499 |       523 |       584 |      1944 |
|                    Δ                     |     -1923 |     -2128 |     -2152 |     -2165 |     -2188 |     -2281 |     -2266 |      1568 |
|              Improvement %               |        81 |        82 |        82 |        82 |        81 |        81 |        80 |      1568 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2381 |      2597 |      2628 |      2656 |      2689 |      2812 |      2851 |       376 |
|                  jbird                   |       458 |       468 |       476 |       489 |       501 |       524 |       587 |      1944 |
|                    Δ                     |     -1923 |     -2129 |     -2152 |     -2167 |     -2188 |     -2288 |     -2264 |      1568 |
|              Improvement %               |        81 |        82 |        82 |        82 |        81 |        81 |        79 |      1568 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       420 |       385 |       381 |       377 |       372 |       357 |       351 |       376 |
|                  jbird                   |      2188 |      2143 |      2109 |      2051 |      2002 |      1914 |      1713 |      1944 |
|                    Δ                     |      1768 |      1758 |      1728 |      1674 |      1630 |      1557 |      1362 |      1568 |
|              Improvement %               |       421 |       457 |       454 |       444 |       438 |       436 |       388 |      1568 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        60 |        95 |       129 |       151 |       163 |       165 |       376 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1944 |
|                    Δ                     |         0 |       -33 |       -68 |      -102 |      -124 |      -136 |      -138 |      1568 |
|              Improvement %               |         0 |        55 |        72 |        79 |        82 |        83 |        84 |      1568 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       376 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1944 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1568 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1568 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        61 |        61 |        61 |        61 |        61 |        64 |        64 |       376 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1944 |
|                    Δ                     |       -49 |       -49 |       -49 |       -49 |       -49 |       -52 |       -52 |      1568 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1568 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2216 |      2390 |      2415 |      2445 |      2486 |      2617 |      2734 |       407 |
|                  jbird                   |       463 |       473 |       481 |       494 |       504 |       525 |       601 |      1922 |
|                    Δ                     |     -1753 |     -1917 |     -1934 |     -1951 |     -1982 |     -2092 |     -2133 |      1515 |
|              Improvement %               |        79 |        80 |        80 |        80 |        80 |        80 |        78 |      1515 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2218 |      2392 |      2417 |      2447 |      2488 |      2619 |      2742 |       407 |
|                  jbird                   |       464 |       474 |       482 |       496 |       506 |       527 |       605 |      1922 |
|                    Δ                     |     -1754 |     -1918 |     -1935 |     -1951 |     -1982 |     -2092 |     -2137 |      1515 |
|              Improvement %               |        79 |        80 |        80 |        80 |        80 |        80 |        78 |      1515 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       451 |       419 |       414 |       409 |       402 |       382 |       366 |       407 |
|                  jbird                   |      2161 |      2117 |      2081 |      2025 |      1984 |      1904 |      1664 |      1922 |
|                    Δ                     |      1710 |      1698 |      1667 |      1616 |      1582 |      1522 |      1298 |      1515 |
|              Improvement %               |       379 |       405 |       403 |       395 |       394 |       398 |       355 |      1515 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        65 |       101 |       139 |       161 |       174 |       176 |       407 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1922 |
|                    Δ                     |         0 |       -38 |       -74 |      -112 |      -134 |      -147 |      -149 |      1515 |
|              Improvement %               |         0 |        58 |        73 |        81 |        83 |        84 |        85 |      1515 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       407 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1922 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1515 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1515 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       407 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1922 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -49 |      1515 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1515 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4535 |      4792 |      4821 |      4854 |      4887 |      5059 |      5212 |       206 |
|                  jbird                   |       918 |       946 |       958 |       969 |       980 |      1018 |      1124 |      1004 |
|                    Δ                     |     -3617 |     -3846 |     -3863 |     -3885 |     -3907 |     -4041 |     -4088 |       798 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        78 |       798 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4542 |      4796 |      4825 |      4858 |      4887 |      5063 |      5216 |       206 |
|                  jbird                   |       919 |       947 |       959 |       971 |       982 |      1019 |      1127 |      1004 |
|                    Δ                     |     -3623 |     -3849 |     -3866 |     -3887 |     -3905 |     -4044 |     -4089 |       798 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        78 |       798 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       220 |       209 |       208 |       206 |       205 |       198 |       192 |       206 |
|                  jbird                   |      1090 |      1058 |      1044 |      1032 |      1021 |       983 |       890 |      1004 |
|                    Δ                     |       870 |       849 |       836 |       826 |       816 |       785 |       698 |       798 |
|              Improvement %               |       395 |       406 |       402 |       401 |       398 |       396 |       364 |       798 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       102 |       139 |       163 |       176 |       178 |       206 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |      1004 |
|                    Δ                     |         0 |       -36 |       -74 |      -111 |      -135 |      -148 |      -150 |       798 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |       798 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       206 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |      1004 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       798 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       798 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       117 |       117 |       117 |       117 |       117 |       122 |       124 |       206 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |      1004 |
|                    Δ                     |       -93 |       -93 |       -93 |       -93 |       -93 |       -98 |       -99 |       798 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |       798 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4588 |      4874 |      4903 |      4936 |      4977 |      5091 |      5307 |       203 |
|                  jbird                   |       923 |       950 |       960 |       973 |       992 |      1044 |      1172 |       999 |
|                    Δ                     |     -3665 |     -3924 |     -3943 |     -3963 |     -3985 |     -4047 |     -4135 |       796 |
|              Improvement %               |        80 |        81 |        80 |        80 |        80 |        79 |        78 |       796 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4589 |      4878 |      4903 |      4936 |      4981 |      5100 |      5300 |       203 |
|                  jbird                   |       925 |       951 |       962 |       975 |       994 |      1046 |      1175 |       999 |
|                    Δ                     |     -3664 |     -3927 |     -3941 |     -3961 |     -3987 |     -4054 |     -4125 |       796 |
|              Improvement %               |        80 |        81 |        80 |        80 |        80 |        79 |        78 |       796 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       218 |       205 |       204 |       203 |       201 |       196 |       188 |       203 |
|                  jbird                   |      1083 |      1053 |      1042 |      1028 |      1009 |       958 |       853 |       999 |
|                    Δ                     |       865 |       848 |       838 |       825 |       808 |       762 |       665 |       796 |
|              Improvement %               |       397 |       414 |       411 |       406 |       402 |       389 |       354 |       796 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       100 |       139 |       161 |       174 |       174 |       203 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       999 |
|                    Δ                     |         0 |       -36 |       -72 |      -111 |      -133 |      -146 |      -146 |       796 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |       796 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       203 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       999 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       796 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       796 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       123 |       125 |       203 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       999 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |       -99 |       796 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       796 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        50 |        50 |        50 |        54 |        54 |        21 |
|                  jbird                   |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        95 |
|                    Δ                     |       -38 |       -39 |       -40 |       -39 |       -39 |       -43 |       -43 |        74 |
|              Improvement %               |        79 |        80 |        80 |        78 |        78 |        80 |        80 |        74 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        50 |        50 |        50 |        52 |        52 |        21 |
|                  jbird                   |        10 |        10 |        10 |        11 |        11 |        11 |        11 |        95 |
|                    Δ                     |       -38 |       -39 |       -40 |       -39 |       -39 |       -41 |       -41 |        74 |
|              Improvement %               |        79 |        80 |        80 |        78 |        78 |        79 |        79 |        74 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        20 |        20 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |        98 |        96 |        96 |        95 |        94 |        91 |        91 |        95 |
|                    Δ                     |        77 |        76 |        76 |        75 |        74 |        72 |        72 |        74 |
|              Improvement %               |       367 |       380 |       380 |       375 |       370 |       379 |       379 |        74 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        84 |       120 |       155 |       177 |       197 |       197 |        21 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        95 |
|                    Δ                     |       -20 |       -32 |       -68 |      -103 |      -125 |      -145 |      -145 |        74 |
|              Improvement %               |        42 |        38 |        57 |        66 |        71 |        74 |        74 |        74 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        95 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        74 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        74 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1170 |      1172 |      1173 |      1174 |      1177 |      1179 |      1179 |        21 |
|                  jbird                   |       247 |       247 |       247 |       248 |       248 |       256 |       256 |        95 |
|                    Δ                     |      -923 |      -925 |      -926 |      -926 |      -929 |      -923 |      -923 |        74 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        74 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        55 |        56 |        56 |        57 |        57 |        57 |        18 |
|                  jbird                   |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        96 |
|                    Δ                     |       -45 |       -45 |       -46 |       -46 |       -46 |       -46 |       -46 |        78 |
|              Improvement %               |        82 |        82 |        82 |        82 |        81 |        81 |        81 |        78 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        55 |        56 |        56 |        57 |        57 |        57 |        18 |
|                  jbird                   |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        96 |
|                    Δ                     |       -45 |       -45 |       -46 |       -46 |       -46 |       -46 |       -46 |        78 |
|              Improvement %               |        82 |        82 |        82 |        82 |        81 |        81 |        81 |        78 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        18 |        18 |        18 |        18 |        18 |        18 |        18 |        18 |
|                  jbird                   |       100 |        98 |        98 |        97 |        95 |        89 |        89 |        96 |
|                    Δ                     |        82 |        80 |        80 |        79 |        77 |        71 |        71 |        78 |
|              Improvement %               |       456 |       444 |       444 |       439 |       428 |       394 |       394 |        78 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        77 |       111 |       145 |       168 |       175 |       175 |        18 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        96 |
|                    Δ                     |       -20 |       -25 |       -59 |       -93 |      -116 |      -123 |      -123 |        78 |
|              Improvement %               |        42 |        32 |        53 |        64 |        69 |        70 |        70 |        78 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        18 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        96 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        78 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        78 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1277 |      1279 |      1279 |      1282 |      1285 |      1286 |      1286 |        18 |
|                  jbird                   |       247 |       247 |       247 |       247 |       251 |       259 |       259 |        96 |
|                    Δ                     |     -1030 |     -1032 |     -1032 |     -1035 |     -1034 |     -1027 |     -1027 |        78 |
|              Improvement %               |        81 |        81 |        81 |        81 |        80 |        80 |        80 |        78 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       552 |       599 |       613 |       629 |       638 |       672 |       775 |      1532 |
|                  jbird                   |       115 |       117 |       118 |       122 |       130 |       140 |       187 |      6471 |
|                    Δ                     |      -437 |      -482 |      -495 |      -507 |      -508 |      -532 |      -588 |      4939 |
|              Improvement %               |        79 |        80 |        81 |        81 |        80 |        79 |        76 |      4939 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       554 |       600 |       615 |       631 |       639 |       675 |       761 |      1532 |
|                  jbird                   |       116 |       118 |       119 |       123 |       131 |       142 |       191 |      6471 |
|                    Δ                     |      -438 |      -482 |      -496 |      -508 |      -508 |      -533 |      -570 |      4939 |
|              Improvement %               |        79 |        80 |        81 |        81 |        79 |        79 |        75 |      4939 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1810 |      1671 |      1632 |      1590 |      1569 |      1488 |      1290 |      1532 |
|                  jbird                   |      8727 |      8583 |      8471 |      8223 |      7723 |      7159 |      5344 |      6471 |
|                    Δ                     |      6917 |      6912 |      6839 |      6633 |      6154 |      5671 |      4054 |      4939 |
|              Improvement %               |       382 |       414 |       419 |       417 |       392 |       381 |       314 |      4939 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       138 |       160 |       173 |       175 |      1532 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6471 |
|                    Δ                     |         0 |       -37 |       -73 |      -112 |      -134 |      -147 |      -149 |      4939 |
|              Improvement %               |         0 |        60 |        74 |        81 |        84 |        85 |        85 |      4939 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1532 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6471 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4939 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4939 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1532 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6471 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4939 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4939 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       551 |       604 |       611 |       618 |       628 |       664 |       686 |      1539 |
|                  jbird                   |       116 |       117 |       119 |       123 |       131 |       140 |       180 |      6429 |
|                    Δ                     |      -435 |      -487 |      -492 |      -495 |      -497 |      -524 |      -506 |      4890 |
|              Improvement %               |        79 |        81 |        81 |        80 |        79 |        79 |        74 |      4890 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       552 |       606 |       613 |       620 |       631 |       665 |       688 |      1539 |
|                  jbird                   |       117 |       119 |       120 |       124 |       132 |       142 |       183 |      6429 |
|                    Δ                     |      -435 |      -487 |      -493 |      -496 |      -499 |      -523 |      -505 |      4890 |
|              Improvement %               |        79 |        80 |        80 |        80 |        79 |        79 |        73 |      4890 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1815 |      1656 |      1637 |      1619 |      1592 |      1507 |      1457 |      1539 |
|                  jbird                   |      8618 |      8519 |      8431 |      8163 |      7659 |      7131 |      5559 |      6429 |
|                    Δ                     |      6803 |      6863 |      6794 |      6544 |      6067 |      5624 |      4102 |      4890 |
|              Improvement %               |       375 |       414 |       415 |       404 |       381 |       373 |       282 |      4890 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       137 |       161 |       174 |       176 |      1539 |
|                  jbird                   |        25 |        25 |        25 |        25 |        26 |        26 |        26 |      6429 |
|                    Δ                     |         0 |       -37 |       -74 |      -112 |      -135 |      -148 |      -150 |      4890 |
|              Improvement %               |         0 |        60 |        75 |        82 |        84 |        85 |        85 |      4890 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1539 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6429 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4890 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4890 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1539 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6429 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4890 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4890 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       144 |       150 |       158 |       164 |       168 |       181 |       203 |      5276 |
|                  jbird                   |        56 |        57 |        57 |        57 |        58 |        73 |       110 |     11472 |
|                    Δ                     |       -88 |       -93 |      -101 |      -107 |      -110 |      -108 |       -93 |      6196 |
|              Improvement %               |        61 |        62 |        64 |        65 |        65 |        60 |        46 |      6196 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       151 |       160 |       165 |       169 |       182 |       207 |      5276 |
|                  jbird                   |        58 |        58 |        58 |        59 |        60 |        75 |       103 |     11472 |
|                    Δ                     |       -87 |       -93 |      -102 |      -106 |      -109 |      -107 |      -104 |      6196 |
|              Improvement %               |        60 |        62 |        64 |        64 |        64 |        59 |        50 |      6196 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6936 |      6671 |      6319 |      6111 |      5975 |      5539 |      4920 |      5276 |
|                  jbird                   |     17778 |     17647 |     17583 |     17487 |     17215 |     13751 |      9060 |     11472 |
|                    Δ                     |     10842 |     10976 |     11264 |     11376 |     11240 |      8212 |      4140 |      6196 |
|              Improvement %               |       156 |       165 |       178 |       186 |       188 |       148 |        84 |      6196 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        32 |        38 |        45 |        49 |        51 |        51 |      5276 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11472 |
|                    Δ                     |         0 |        -7 |       -13 |       -20 |       -24 |       -26 |       -26 |      6196 |
|              Improvement %               |         0 |        22 |        34 |        44 |        49 |        51 |        51 |      6196 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5276 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11472 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6196 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6196 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2997 |      2998 |      3000 |      3006 |      3011 |      3125 |      3236 |      5276 |
|                  jbird                   |      1519 |      1520 |      1520 |      1520 |      1520 |      1548 |      1621 |     11472 |
|                    Δ                     |     -1478 |     -1478 |     -1480 |     -1486 |     -1491 |     -1577 |     -1615 |      6196 |
|              Improvement %               |        49 |        49 |        49 |        49 |        50 |        50 |        50 |      6196 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1549 |      1689 |      1705 |      1722 |      1740 |      1925 |      1951 |       574 |
|                  jbird                   |        86 |        88 |        90 |        94 |        98 |       108 |       156 |      8267 |
|                    Δ                     |     -1463 |     -1601 |     -1615 |     -1628 |     -1642 |     -1817 |     -1795 |      7693 |
|              Improvement %               |        94 |        95 |        95 |        95 |        94 |        94 |        92 |      7693 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1551 |      1691 |      1707 |      1724 |      1743 |      1930 |      1953 |       574 |
|                  jbird                   |        88 |        89 |        91 |        96 |       100 |       110 |       160 |      8267 |
|                    Δ                     |     -1463 |     -1602 |     -1616 |     -1628 |     -1643 |     -1820 |     -1793 |      7693 |
|              Improvement %               |        94 |        95 |        95 |        94 |        94 |        94 |        92 |      7693 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       646 |       592 |       587 |       581 |       575 |       520 |       512 |       574 |
|                  jbird                   |     11566 |     11375 |     11175 |     10623 |     10175 |      9263 |      6429 |      8267 |
|                    Δ                     |     10920 |     10783 |     10588 |     10042 |      9600 |      8743 |      5917 |      7693 |
|              Improvement %               |      1690 |      1821 |      1804 |      1728 |      1670 |      1681 |      1156 |      7693 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        37 |        48 |        59 |        66 |        69 |        70 |       574 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      8267 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -40 |       -43 |       -44 |      7693 |
|              Improvement %               |         0 |        30 |        46 |        56 |        61 |        62 |        63 |      7693 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       574 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8267 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7693 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7693 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        44 |        44 |        44 |        44 |        44 |        47 |        47 |       574 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      8267 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -44 |       -44 |      7693 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7693 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1095 |      1195 |      1205 |      1223 |      1241 |      1277 |      6808 |       800 |
|                  jbird                   |        52 |        53 |        54 |        58 |        59 |        69 |       137 |     11725 |
|                    Δ                     |     -1043 |     -1142 |     -1151 |     -1165 |     -1182 |     -1208 |     -6671 |     10925 |
|              Improvement %               |        95 |        96 |        96 |        95 |        95 |        95 |        98 |     10925 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1096 |      1197 |      1207 |      1225 |      1243 |      1278 |      1342 |       800 |
|                  jbird                   |        53 |        54 |        55 |        60 |        61 |        70 |       140 |     11725 |
|                    Δ                     |     -1043 |     -1143 |     -1152 |     -1165 |     -1182 |     -1208 |     -1202 |     10925 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        90 |     10925 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       913 |       837 |       830 |       819 |       806 |       782 |       147 |       800 |
|                  jbird                   |     19324 |     18927 |     18671 |     17167 |     16831 |     14551 |      7317 |     11725 |
|                    Δ                     |     18411 |     18090 |     17841 |     16348 |     16025 |     13769 |      7170 |     10925 |
|              Improvement %               |      2017 |      2161 |      2150 |      1996 |      1988 |      1761 |      4878 |     10925 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        64 |        82 |        93 |       100 |       101 |       800 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11725 |
|                    Δ                     |         0 |       -19 |       -38 |       -56 |       -67 |       -74 |       -75 |     10925 |
|              Improvement %               |         0 |        42 |        59 |        68 |        72 |        74 |        74 |     10925 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       800 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11725 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10925 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10925 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        29 |        29 |        29 |        29 |        30 |        31 |       800 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11725 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -27 |       -28 |       -29 |     10925 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        94 |     10925 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       104 |       110 |       114 |       117 |       128 |      5161 |      6910 |
|                  jbird                   |        28 |        28 |        28 |        31 |        31 |        38 |        71 |     16287 |
|                    Δ                     |       -68 |       -76 |       -82 |       -83 |       -86 |       -90 |     -5090 |      9377 |
|              Improvement %               |        71 |        73 |        75 |        73 |        74 |        70 |        99 |      9377 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        97 |       106 |       112 |       115 |       118 |       130 |       177 |      6910 |
|                  jbird                   |        29 |        29 |        29 |        32 |        33 |        40 |        67 |     16287 |
|                    Δ                     |       -68 |       -77 |       -83 |       -83 |       -85 |       -90 |      -110 |      9377 |
|              Improvement %               |        70 |        73 |        74 |        72 |        72 |        69 |        62 |      9377 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10448 |      9599 |      9095 |      8799 |      8583 |      7807 |       194 |      6910 |
|                  jbird                   |     36364 |     35999 |     35839 |     32527 |     32175 |     26591 |     14068 |     16287 |
|                    Δ                     |     25916 |     26400 |     26744 |     23728 |     23592 |     18784 |     13874 |      9377 |
|              Improvement %               |       248 |       275 |       294 |       270 |       275 |       241 |      7152 |      9377 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       132 |       241 |       345 |       414 |       452 |       458 |      6910 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     16287 |
|                    Δ                     |         0 |      -107 |      -216 |      -320 |      -389 |      -427 |      -433 |      9377 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        94 |        95 |      9377 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6910 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     16287 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      9377 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      9377 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2515 |      2531 |      2537 |      2544 |      2552 |      2679 |      2708 |      6910 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       961 |     16287 |
|                    Δ                     |     -1638 |     -1653 |     -1659 |     -1666 |     -1674 |     -1796 |     -1747 |      9377 |
|              Improvement %               |        65 |        65 |        65 |        65 |        66 |        67 |        65 |      9377 |

<p>
</details>

