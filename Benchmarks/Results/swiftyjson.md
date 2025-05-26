# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        11 |        14 |        14 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       455 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -9 |       -11 |       -11 |       356 |
|              Improvement %               |        78 |        80 |        80 |        80 |        82 |        79 |        79 |       356 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        11 |        14 |        14 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       455 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -9 |       -11 |       -11 |       356 |
|              Improvement %               |        78 |        80 |        80 |        80 |        82 |        79 |        79 |       356 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       106 |       102 |       101 |        98 |        95 |        74 |        74 |        99 |
|                  jbird                   |       515 |       474 |       470 |       466 |       450 |       359 |       328 |       455 |
|                    Δ                     |       409 |       372 |       369 |       368 |       355 |       285 |       254 |       356 |
|              Improvement %               |       386 |       365 |       365 |       376 |       374 |       385 |       343 |       356 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        65 |       101 |       137 |       159 |       172 |       172 |        99 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       455 |
|                    Δ                     |        -1 |       -34 |       -70 |      -106 |      -128 |      -141 |      -141 |       356 |
|              Improvement %               |         3 |        52 |        69 |        77 |        81 |        82 |        82 |       356 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        99 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       455 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       356 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       356 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       237 |       237 |       238 |       238 |       238 |       242 |       242 |        99 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       455 |
|                    Δ                     |      -189 |      -189 |      -190 |      -190 |      -190 |      -193 |      -192 |       356 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       356 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        98 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       464 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |       366 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        82 |        82 |       366 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        11 |        11 |        98 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       464 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -9 |       366 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        82 |        82 |       366 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       103 |        99 |        98 |        97 |        95 |        93 |        93 |        98 |
|                  jbird                   |       514 |       476 |       472 |       469 |       462 |       451 |       439 |       464 |
|                    Δ                     |       411 |       377 |       374 |       372 |       367 |       358 |       346 |       366 |
|              Improvement %               |       399 |       381 |       382 |       384 |       386 |       385 |       372 |       366 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        64 |       100 |       135 |       158 |       170 |       170 |        98 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       464 |
|                    Δ                     |        -1 |       -33 |       -69 |      -104 |      -127 |      -139 |      -139 |       366 |
|              Improvement %               |         3 |        52 |        69 |        77 |        80 |        82 |        82 |       366 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        98 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       464 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       366 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       366 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       243 |       243 |       243 |       243 |       244 |       248 |       248 |        98 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       464 |
|                    Δ                     |      -194 |      -194 |      -194 |      -194 |      -195 |      -198 |      -197 |       366 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       366 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2227 |      2390 |      2417 |      2451 |      2574 |      2636 |      2671 |       406 |
|                  jbird                   |       463 |       512 |       520 |       533 |       557 |       579 |       613 |      1778 |
|                    Δ                     |     -1764 |     -1878 |     -1897 |     -1918 |     -2017 |     -2057 |     -2058 |      1372 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        78 |        77 |      1372 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2223 |      2390 |      2417 |      2451 |      2576 |      2638 |      2672 |       406 |
|                  jbird                   |       464 |       514 |       522 |       535 |       558 |       582 |       614 |      1778 |
|                    Δ                     |     -1759 |     -1876 |     -1895 |     -1916 |     -2018 |     -2056 |     -2058 |      1372 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        78 |        77 |      1372 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       449 |       419 |       414 |       408 |       389 |       380 |       374 |       406 |
|                  jbird                   |      2160 |      1953 |      1922 |      1877 |      1798 |      1729 |      1632 |      1778 |
|                    Δ                     |      1711 |      1534 |      1508 |      1469 |      1409 |      1349 |      1258 |      1372 |
|              Improvement %               |       381 |       366 |       364 |       360 |       362 |       355 |       336 |      1372 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        63 |       100 |       139 |       161 |       175 |       176 |       406 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1778 |
|                    Δ                     |         0 |       -36 |       -73 |      -112 |      -134 |      -148 |      -149 |      1372 |
|              Improvement %               |         0 |        57 |        73 |        81 |        83 |        85 |        85 |      1372 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       406 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1778 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1372 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1372 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       406 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1778 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -49 |      1372 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1372 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2329 |      2488 |      2519 |      2542 |      2570 |      2701 |      2800 |       392 |
|                  jbird                   |       470 |       518 |       526 |       536 |       545 |       568 |       658 |      1772 |
|                    Δ                     |     -1859 |     -1970 |     -1993 |     -2006 |     -2025 |     -2133 |     -2142 |      1380 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        79 |        76 |      1380 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2324 |      2488 |      2521 |      2544 |      2574 |      2699 |      2808 |       392 |
|                  jbird                   |       472 |       519 |       527 |       537 |       547 |       569 |       660 |      1772 |
|                    Δ                     |     -1852 |     -1969 |     -1994 |     -2007 |     -2027 |     -2130 |     -2148 |      1380 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        79 |        76 |      1380 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       429 |       402 |       397 |       394 |       389 |       370 |       357 |       392 |
|                  jbird                   |      2126 |      1931 |      1903 |      1868 |      1834 |      1761 |      1519 |      1772 |
|                    Δ                     |      1697 |      1529 |      1506 |      1474 |      1445 |      1391 |      1162 |      1380 |
|              Improvement %               |       396 |       380 |       379 |       374 |       371 |       376 |       325 |      1380 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        63 |        99 |       135 |       156 |       169 |       171 |       392 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1772 |
|                    Δ                     |         0 |       -36 |       -72 |      -108 |      -129 |      -142 |      -144 |      1380 |
|              Improvement %               |         0 |        57 |        73 |        80 |        83 |        84 |        84 |      1380 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       392 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1772 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1380 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1380 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        60 |        60 |        60 |        60 |        63 |        63 |       392 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1772 |
|                    Δ                     |       -48 |       -48 |       -48 |       -48 |       -48 |       -51 |       -50 |      1380 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1380 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4492 |      4891 |      4932 |      5059 |      5386 |      5513 |      5581 |       199 |
|                  jbird                   |       948 |      1040 |      1052 |      1076 |      1094 |      1127 |      1271 |       913 |
|                    Δ                     |     -3544 |     -3851 |     -3880 |     -3983 |     -4292 |     -4386 |     -4310 |       714 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        80 |        77 |       714 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4493 |      4887 |      4932 |      5059 |      5386 |      5513 |      5588 |       199 |
|                  jbird                   |       950 |      1042 |      1053 |      1076 |      1096 |      1133 |      1275 |       913 |
|                    Δ                     |     -3543 |     -3845 |     -3879 |     -3983 |     -4290 |     -4380 |     -4313 |       714 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        79 |        77 |       714 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       223 |       205 |       203 |       198 |       186 |       181 |       179 |       199 |
|                  jbird                   |      1055 |       961 |       952 |       930 |       915 |       887 |       787 |       913 |
|                    Δ                     |       832 |       756 |       749 |       732 |       729 |       706 |       608 |       714 |
|              Improvement %               |       373 |       369 |       369 |       370 |       392 |       390 |       340 |       714 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |       100 |       136 |       159 |       171 |       173 |       199 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       913 |
|                    Δ                     |         0 |       -34 |       -71 |      -107 |      -130 |      -142 |      -144 |       714 |
|              Improvement %               |         0 |        55 |        71 |        79 |        82 |        83 |        83 |       714 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       199 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       913 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       714 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       714 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       119 |       119 |       119 |       119 |       121 |       125 |       199 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       913 |
|                    Δ                     |       -94 |       -95 |       -95 |       -95 |       -95 |       -96 |      -100 |       714 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        80 |       714 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4622 |      4927 |      4973 |      5173 |      5435 |      5714 |      5730 |       196 |
|                  jbird                   |       949 |      1038 |      1048 |      1064 |      1091 |      1146 |      1172 |       916 |
|                    Δ                     |     -3673 |     -3889 |     -3925 |     -4109 |     -4344 |     -4568 |     -4558 |       720 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        80 |        80 |       720 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4618 |      4923 |      4973 |      5177 |      5439 |      5718 |      5736 |       196 |
|                  jbird                   |       951 |      1040 |      1050 |      1065 |      1091 |      1148 |      1175 |       916 |
|                    Δ                     |     -3667 |     -3883 |     -3923 |     -4112 |     -4348 |     -4570 |     -4561 |       720 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        80 |        80 |       720 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       216 |       203 |       201 |       193 |       184 |       175 |       175 |       196 |
|                  jbird                   |      1054 |       963 |       954 |       940 |       918 |       873 |       853 |       916 |
|                    Δ                     |       838 |       760 |       753 |       747 |       734 |       698 |       678 |       720 |
|              Improvement %               |       388 |       374 |       375 |       387 |       399 |       399 |       387 |       720 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |        98 |       134 |       156 |       170 |       170 |       196 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       916 |
|                    Δ                     |         0 |       -34 |       -69 |      -105 |      -127 |      -141 |      -141 |       720 |
|              Improvement %               |         0 |        55 |        70 |        78 |        81 |        83 |        83 |       720 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       196 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       916 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       720 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       720 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       119 |       119 |       119 |       119 |       119 |       126 |       126 |       196 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       916 |
|                    Δ                     |       -95 |       -95 |       -95 |       -95 |       -95 |      -101 |      -100 |       720 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       720 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        51 |        52 |        53 |        55 |        57 |        57 |        20 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |       -39 |       -40 |       -41 |       -41 |       -43 |       -45 |       -45 |        67 |
|              Improvement %               |        78 |        78 |        79 |        77 |        78 |        79 |        79 |        67 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        51 |        52 |        53 |        55 |        57 |        57 |        20 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |       -39 |       -40 |       -41 |       -41 |       -43 |       -45 |       -45 |        67 |
|              Improvement %               |        78 |        78 |        79 |        77 |        78 |        79 |        79 |        67 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        19 |        18 |        18 |        17 |        17 |        20 |
|                  jbird                   |        91 |        88 |        88 |        87 |        86 |        82 |        82 |        87 |
|                    Δ                     |        71 |        68 |        69 |        69 |        68 |        65 |        65 |        67 |
|              Improvement %               |       355 |       340 |       363 |       383 |       378 |       382 |       382 |        67 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        78 |       115 |       149 |       174 |       185 |       185 |        20 |
|                  jbird                   |        43 |        51 |        51 |        52 |        52 |        52 |        52 |        87 |
|                    Δ                     |        -5 |       -27 |       -64 |       -97 |      -122 |      -133 |      -133 |        67 |
|              Improvement %               |        10 |        35 |        56 |        65 |        70 |        72 |        72 |        67 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        67 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        67 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1220 |      1222 |      1223 |      1224 |      1226 |      1229 |      1229 |        20 |
|                  jbird                   |       250 |       250 |       250 |       250 |       251 |       255 |       255 |        87 |
|                    Δ                     |      -970 |      -972 |      -973 |      -974 |      -975 |      -974 |      -974 |        67 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |        67 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        50 |        51 |        51 |        52 |        58 |        58 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |       -39 |       -39 |       -40 |       -40 |       -40 |       -46 |       -46 |        69 |
|              Improvement %               |        78 |        78 |        78 |        78 |        77 |        79 |        79 |        69 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        50 |        51 |        51 |        52 |        58 |        58 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |       -39 |       -39 |       -40 |       -40 |       -40 |       -46 |       -46 |        69 |
|              Improvement %               |        78 |        78 |        78 |        78 |        77 |        79 |        79 |        69 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        20 |        19 |        18 |        17 |        17 |        20 |
|                  jbird                   |        93 |        91 |        90 |        89 |        84 |        80 |        80 |        89 |
|                    Δ                     |        73 |        71 |        70 |        70 |        66 |        63 |        63 |        69 |
|              Improvement %               |       365 |       355 |       350 |       368 |       367 |       371 |       371 |        69 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        76 |       114 |       150 |       174 |       185 |       185 |        20 |
|                  jbird                   |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |        -5 |       -24 |       -62 |       -98 |      -122 |      -133 |      -133 |        69 |
|              Improvement %               |        10 |        32 |        54 |        65 |        70 |        72 |        72 |        69 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        69 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        69 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1198 |      1200 |      1201 |      1202 |      1204 |      1207 |      1207 |        20 |
|                  jbird                   |       250 |       250 |       250 |       251 |       251 |       258 |       258 |        89 |
|                    Δ                     |      -948 |      -950 |      -951 |      -951 |      -953 |      -949 |      -949 |        69 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |        69 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       554 |       609 |       617 |       628 |       672 |       703 |       752 |      1514 |
|                  jbird                   |       116 |       128 |       131 |       133 |       136 |       151 |       175 |      5976 |
|                    Δ                     |      -438 |      -481 |      -486 |      -495 |      -536 |      -552 |      -577 |      4462 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        79 |        77 |      4462 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       555 |       610 |       618 |       629 |       673 |       707 |       753 |      1514 |
|                  jbird                   |       117 |       129 |       132 |       135 |       137 |       150 |       168 |      5976 |
|                    Δ                     |      -438 |      -481 |      -486 |      -494 |      -536 |      -557 |      -585 |      4462 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        79 |        78 |      4462 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1805 |      1642 |      1621 |      1593 |      1489 |      1422 |      1330 |      1514 |
|                  jbird                   |      8618 |      7835 |      7639 |      7507 |      7363 |      6607 |      5722 |      5976 |
|                    Δ                     |      6813 |      6193 |      6018 |      5914 |      5874 |      5185 |      4392 |      4462 |
|              Improvement %               |       377 |       377 |       371 |       371 |       394 |       365 |       330 |      4462 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        98 |       137 |       158 |       171 |       172 |      1514 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5976 |
|                    Δ                     |         0 |       -36 |       -72 |      -111 |      -132 |      -145 |      -146 |      4462 |
|              Improvement %               |         0 |        58 |        73 |        81 |        84 |        85 |        85 |      4462 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1514 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5976 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4462 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4462 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1514 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5976 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4462 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4462 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       567 |       623 |       631 |       643 |       679 |       701 |       733 |      1485 |
|                  jbird                   |       118 |       129 |       133 |       134 |       138 |       152 |       182 |      5914 |
|                    Δ                     |      -449 |      -494 |      -498 |      -509 |      -541 |      -549 |      -551 |      4429 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        78 |        75 |      4429 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       568 |       624 |       632 |       644 |       680 |       702 |       735 |      1485 |
|                  jbird                   |       120 |       131 |       135 |       136 |       139 |       151 |       179 |      5914 |
|                    Δ                     |      -448 |      -493 |      -497 |      -508 |      -541 |      -551 |      -556 |      4429 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        78 |        76 |      4429 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1764 |      1606 |      1586 |      1557 |      1474 |      1427 |      1364 |      1485 |
|                  jbird                   |      8451 |      7731 |      7519 |      7447 |      7275 |      6563 |      5498 |      5914 |
|                    Δ                     |      6687 |      6125 |      5933 |      5890 |      5801 |      5136 |      4134 |      4429 |
|              Improvement %               |       379 |       381 |       374 |       378 |       394 |       360 |       303 |      4429 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        61 |        97 |       134 |       155 |       168 |       169 |      1485 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5914 |
|                    Δ                     |         0 |       -36 |       -71 |      -108 |      -129 |      -142 |      -143 |      4429 |
|              Improvement %               |         0 |        59 |        73 |        81 |        83 |        85 |        85 |      4429 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1485 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5914 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4429 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4429 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1485 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5914 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4429 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4429 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       142 |       149 |       158 |       163 |       169 |       184 |       205 |      5296 |
|                  jbird                   |        48 |        49 |        54 |        54 |        55 |        65 |        87 |     11839 |
|                    Δ                     |       -94 |      -100 |      -104 |      -109 |      -114 |      -119 |      -118 |      6543 |
|              Improvement %               |        66 |        67 |        66 |        67 |        67 |        65 |        58 |      6543 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       150 |       159 |       165 |       170 |       185 |       207 |      5296 |
|                  jbird                   |        49 |        51 |        55 |        56 |        56 |        66 |        81 |     11839 |
|                    Δ                     |       -94 |       -99 |      -104 |      -109 |      -114 |      -119 |      -126 |      6543 |
|              Improvement %               |        66 |        66 |        65 |        66 |        67 |        64 |        61 |      6543 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7051 |      6727 |      6347 |      6131 |      5923 |      5427 |      4875 |      5296 |
|                  jbird                   |     20888 |     20223 |     18623 |     18463 |     18191 |     15455 |     11439 |     11839 |
|                    Δ                     |     13837 |     13496 |     12276 |     12332 |     12268 |     10028 |      6564 |      6543 |
|              Improvement %               |       196 |       201 |       193 |       201 |       207 |       185 |       135 |      6543 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        32 |        38 |        45 |        49 |        51 |        51 |      5296 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11839 |
|                    Δ                     |         0 |        -7 |       -13 |       -20 |       -24 |       -26 |       -26 |      6543 |
|              Improvement %               |         0 |        22 |        34 |        44 |        49 |        51 |        51 |      6543 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5296 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11839 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6543 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6543 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2933 |      2935 |      2935 |      2943 |      2945 |      3060 |      3080 |      5296 |
|                  jbird                   |      1318 |      1319 |      1319 |      1319 |      1319 |      1348 |      1373 |     11839 |
|                    Δ                     |     -1615 |     -1616 |     -1616 |     -1624 |     -1626 |     -1712 |     -1707 |      6543 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        56 |        55 |      6543 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1541 |      1669 |      1690 |      1713 |      1788 |      1932 |      1994 |       577 |
|                  jbird                   |        87 |        97 |        99 |       100 |       103 |       116 |       159 |      7688 |
|                    Δ                     |     -1454 |     -1572 |     -1591 |     -1613 |     -1685 |     -1816 |     -1835 |      7111 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        92 |      7111 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1536 |      1668 |      1691 |      1714 |      1790 |      1933 |      2001 |       577 |
|                  jbird                   |        89 |        98 |       100 |       102 |       105 |       116 |       163 |      7688 |
|                    Δ                     |     -1447 |     -1570 |     -1591 |     -1612 |     -1685 |     -1817 |     -1838 |      7111 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        92 |      7111 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       649 |       599 |       592 |       584 |       559 |       518 |       502 |       577 |
|                  jbird                   |     11450 |     10367 |     10135 |      9999 |      9679 |      8631 |      6288 |      7688 |
|                    Δ                     |     10801 |      9768 |      9543 |      9415 |      9120 |      8113 |      5786 |      7111 |
|              Improvement %               |      1664 |      1631 |      1612 |      1612 |      1631 |      1566 |      1153 |      7111 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        37 |        48 |        59 |        65 |        69 |        70 |       577 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7688 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -39 |       -43 |       -44 |      7111 |
|              Improvement %               |         0 |        30 |        46 |        56 |        60 |        62 |        63 |      7111 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       577 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7688 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7111 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7111 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        44 |        44 |        44 |        44 |        44 |        47 |        47 |       577 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7688 |
|                    Δ                     |       -41 |       -41 |       -41 |       -41 |       -41 |       -44 |       -44 |      7111 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7111 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1036 |      1143 |      1157 |      1175 |      1206 |      1267 |      1334 |       837 |
|                  jbird                   |        51 |        57 |        58 |        59 |        61 |        70 |       130 |     11185 |
|                    Δ                     |      -985 |     -1086 |     -1099 |     -1116 |     -1145 |     -1197 |     -1204 |     10348 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        90 |     10348 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1038 |      1144 |      1158 |      1176 |      1207 |      1269 |      1335 |       837 |
|                  jbird                   |        52 |        59 |        59 |        60 |        62 |        72 |       133 |     11185 |
|                    Δ                     |      -986 |     -1085 |     -1099 |     -1116 |     -1145 |     -1197 |     -1202 |     10348 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        90 |     10348 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       965 |       876 |       865 |       852 |       829 |       789 |       750 |       837 |
|                  jbird                   |     19544 |     17471 |     17343 |     17055 |     16479 |     14295 |      7722 |     11185 |
|                    Δ                     |     18579 |     16595 |     16478 |     16203 |     15650 |     13506 |      6972 |     10348 |
|              Improvement %               |      1925 |      1894 |      1905 |      1902 |      1888 |      1712 |       930 |     10348 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        65 |        84 |        96 |       103 |       104 |       837 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11185 |
|                    Δ                     |         0 |       -19 |       -39 |       -58 |       -70 |       -77 |       -78 |     10348 |
|              Improvement %               |         0 |        42 |        60 |        69 |        73 |        75 |        75 |     10348 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       837 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11185 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10348 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10348 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        28 |        28 |        28 |        28 |        30 |        30 |       837 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11185 |
|                    Δ                     |       -26 |       -26 |       -26 |       -26 |       -26 |       -28 |       -28 |     10348 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        93 |     10348 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        97 |       105 |       112 |       115 |       119 |       132 |       171 |      6869 |
|                  jbird                   |        28 |        30 |        31 |        31 |        32 |        39 |        67 |     15357 |
|                    Δ                     |       -69 |       -75 |       -81 |       -84 |       -87 |       -93 |      -104 |      8488 |
|              Improvement %               |        71 |        71 |        72 |        73 |        73 |        70 |        61 |      8488 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |       107 |       113 |       117 |       120 |       132 |       172 |      6869 |
|                  jbird                   |        29 |        32 |        32 |        33 |        33 |        41 |        65 |     15357 |
|                    Δ                     |       -70 |       -75 |       -81 |       -84 |       -87 |       -91 |      -107 |      8488 |
|              Improvement %               |        71 |        70 |        72 |        72 |        72 |        69 |        62 |      8488 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10274 |      9503 |      8975 |      8687 |      8439 |      7555 |      5859 |      6869 |
|                  jbird                   |     36308 |     33151 |     32223 |     32015 |     31631 |     25487 |     14833 |     15357 |
|                    Δ                     |     26034 |     23648 |     23248 |     23328 |     23192 |     17932 |      8974 |      8488 |
|              Improvement %               |       253 |       249 |       259 |       269 |       275 |       237 |       153 |      8488 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       132 |       235 |       347 |       412 |       451 |       451 |      6869 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15357 |
|                    Δ                     |         0 |      -107 |      -210 |      -322 |      -387 |      -426 |      -426 |      8488 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      8488 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6869 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15357 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8488 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8488 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2521 |      2537 |      2544 |      2550 |      2558 |      2671 |      2709 |      6869 |
|                  jbird                   |       878 |       879 |       879 |       880 |       880 |       885 |       937 |     15357 |
|                    Δ                     |     -1643 |     -1658 |     -1665 |     -1670 |     -1678 |     -1786 |     -1772 |      8488 |
|              Improvement %               |        65 |        65 |        65 |        65 |        66 |        67 |        65 |      8488 |

<p>
</details>

