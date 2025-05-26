# SwiftyJSON vs. JBird

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        13 |       100 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       474 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       374 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        73 |        77 |       374 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        13 |       100 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         3 |         3 |       474 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       374 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        73 |        77 |       374 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       104 |       102 |       101 |       100 |        95 |        75 |        75 |       100 |
|                  jbird                   |       535 |       496 |       491 |       481 |       459 |       381 |       348 |       474 |
|                    Δ                     |       431 |       394 |       390 |       381 |       364 |       306 |       273 |       374 |
|              Improvement %               |       414 |       386 |       386 |       381 |       383 |       408 |       364 |       374 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        65 |       101 |       137 |       159 |       172 |       174 |       100 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       474 |
|                    Δ                     |        -1 |       -34 |       -70 |      -106 |      -128 |      -141 |      -143 |       374 |
|              Improvement %               |         3 |        52 |        69 |        77 |        81 |        82 |        82 |       374 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       474 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       374 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       374 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       235 |       235 |       235 |       236 |       236 |       239 |       245 |       100 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       474 |
|                    Δ                     |      -187 |      -187 |      -187 |      -188 |      -188 |      -190 |      -195 |       374 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        80 |       374 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       472 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |       372 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        82 |        82 |       372 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        11 |        11 |       100 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       472 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |       372 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        82 |        82 |       372 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       101 |       100 |        98 |        97 |        94 |        94 |       100 |
|                  jbird                   |       528 |       492 |       482 |       473 |       462 |       440 |       433 |       472 |
|                    Δ                     |       423 |       391 |       382 |       375 |       365 |       346 |       339 |       372 |
|              Improvement %               |       403 |       387 |       382 |       383 |       376 |       368 |       361 |       372 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |       101 |       138 |       160 |       173 |       174 |       100 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       472 |
|                    Δ                     |         2 |       -33 |       -70 |      -107 |      -129 |      -142 |      -143 |       372 |
|              Improvement %               |        -7 |        52 |        69 |        78 |        81 |        82 |        82 |       372 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       472 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       372 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       372 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       236 |       236 |       236 |       237 |       237 |       240 |       246 |       100 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       472 |
|                    Δ                     |      -187 |      -187 |      -187 |      -188 |      -188 |      -190 |      -195 |       372 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       372 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2301 |      2462 |      2494 |      2523 |      2548 |      2753 |      2871 |       395 |
|                  jbird                   |       465 |       504 |       511 |       521 |       530 |       559 |       595 |      1823 |
|                    Δ                     |     -1836 |     -1958 |     -1983 |     -2002 |     -2018 |     -2194 |     -2276 |      1428 |
|              Improvement %               |        80 |        80 |        80 |        79 |        79 |        80 |        79 |      1428 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2296 |      2462 |      2492 |      2523 |      2550 |      2757 |      2879 |       395 |
|                  jbird                   |       466 |       506 |       513 |       522 |       531 |       560 |       592 |      1823 |
|                    Δ                     |     -1830 |     -1956 |     -1979 |     -2001 |     -2019 |     -2197 |     -2287 |      1428 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        80 |        79 |      1428 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       435 |       407 |       401 |       397 |       393 |       363 |       348 |       395 |
|                  jbird                   |      2150 |      1984 |      1957 |      1919 |      1886 |      1789 |      1679 |      1823 |
|                    Δ                     |      1715 |      1577 |      1556 |      1522 |      1493 |      1426 |      1331 |      1428 |
|              Improvement %               |       394 |       387 |       388 |       383 |       380 |       393 |       382 |      1428 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        63 |       100 |       135 |       157 |       171 |       171 |       395 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1823 |
|                    Δ                     |         0 |       -36 |       -73 |      -108 |      -130 |      -144 |      -144 |      1428 |
|              Improvement %               |         0 |        57 |        73 |        80 |        83 |        84 |        84 |      1428 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       395 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1823 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1428 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1428 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       395 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1823 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -49 |      1428 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1428 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2279 |      2470 |      2505 |      2535 |      2564 |      2720 |      2766 |       394 |
|                  jbird                   |       465 |       507 |       514 |       522 |       535 |       556 |       580 |      1815 |
|                    Δ                     |     -1814 |     -1963 |     -1991 |     -2013 |     -2029 |     -2164 |     -2186 |      1421 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        80 |        79 |      1421 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2279 |      2470 |      2505 |      2537 |      2566 |      2726 |      2768 |       394 |
|                  jbird                   |       466 |       508 |       515 |       524 |       536 |       557 |       581 |      1815 |
|                    Δ                     |     -1813 |     -1962 |     -1990 |     -2013 |     -2030 |     -2169 |     -2187 |      1421 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        80 |        79 |      1421 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       439 |       405 |       399 |       394 |       390 |       368 |       361 |       394 |
|                  jbird                   |      2151 |      1974 |      1947 |      1915 |      1871 |      1801 |      1726 |      1815 |
|                    Δ                     |      1712 |      1569 |      1548 |      1521 |      1481 |      1433 |      1365 |      1421 |
|              Improvement %               |       390 |       387 |       388 |       386 |       380 |       389 |       378 |      1421 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |        99 |       135 |       156 |       171 |       171 |       394 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1815 |
|                    Δ                     |         0 |       -35 |       -72 |      -108 |      -129 |      -144 |      -144 |      1421 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |      1421 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       394 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1815 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1421 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1421 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        60 |        62 |       394 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1815 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -48 |       -49 |      1421 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |      1421 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4548 |      4788 |      4850 |      4903 |      5071 |      5263 |      5388 |       204 |
|                  jbird                   |       939 |      1015 |      1026 |      1036 |      1050 |      1092 |      1138 |       942 |
|                    Δ                     |     -3609 |     -3773 |     -3824 |     -3867 |     -4021 |     -4171 |     -4250 |       738 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       738 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4557 |      4784 |      4846 |      4903 |      5075 |      5267 |      5391 |       204 |
|                  jbird                   |       940 |      1016 |      1028 |      1038 |      1051 |      1090 |      1141 |       942 |
|                    Δ                     |     -3617 |     -3768 |     -3818 |     -3865 |     -4024 |     -4177 |     -4250 |       738 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |       738 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       220 |       209 |       206 |       204 |       197 |       190 |       186 |       204 |
|                  jbird                   |      1065 |       985 |       975 |       965 |       953 |       917 |       879 |       942 |
|                    Δ                     |       845 |       776 |       769 |       761 |       756 |       727 |       693 |       738 |
|              Improvement %               |       384 |       371 |       373 |       373 |       384 |       383 |       373 |       738 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       102 |       139 |       161 |       174 |       176 |       204 |
|                  jbird                   |        26 |        28 |        28 |        29 |        29 |        29 |        29 |       942 |
|                    Δ                     |         0 |       -36 |       -74 |      -110 |      -132 |      -145 |      -147 |       738 |
|              Improvement %               |         0 |        56 |        73 |        79 |        82 |        83 |        84 |       738 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       204 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       942 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       738 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       738 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       117 |       117 |       117 |       117 |       117 |       122 |       123 |       204 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       942 |
|                    Δ                     |       -93 |       -93 |       -93 |       -93 |       -93 |       -97 |       -98 |       738 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |       738 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4915 |      5210 |      5255 |      5304 |      5349 |      5423 |      5471 |       190 |
|                  jbird                   |       943 |      1019 |      1033 |      1049 |      1065 |      1097 |      1154 |       934 |
|                    Δ                     |     -3972 |     -4191 |     -4222 |     -4255 |     -4284 |     -4326 |     -4317 |       744 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        79 |       744 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4908 |      5210 |      5255 |      5308 |      5358 |      5427 |      5468 |       190 |
|                  jbird                   |       944 |      1020 |      1034 |      1050 |      1065 |      1098 |      1155 |       934 |
|                    Δ                     |     -3964 |     -4190 |     -4221 |     -4258 |     -4293 |     -4329 |     -4313 |       744 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        79 |       744 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       203 |       192 |       190 |       189 |       187 |       184 |       183 |       190 |
|                  jbird                   |      1060 |       981 |       968 |       954 |       939 |       913 |       867 |       934 |
|                    Δ                     |       857 |       789 |       778 |       765 |       752 |       729 |       684 |       744 |
|              Improvement %               |       422 |       411 |       409 |       405 |       402 |       396 |       374 |       744 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |        96 |       131 |       151 |       165 |       165 |       190 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       934 |
|                    Δ                     |         0 |       -34 |       -68 |      -103 |      -123 |      -137 |      -137 |       744 |
|              Improvement %               |         0 |        55 |        71 |        79 |        81 |        83 |        83 |       744 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       190 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       934 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       744 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       744 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       122 |       122 |       122 |       122 |       122 |       124 |       128 |       190 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       934 |
|                    Δ                     |       -98 |       -98 |       -98 |       -98 |       -98 |       -99 |      -102 |       744 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       744 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        50 |        50 |        50 |        52 |        55 |        55 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |       -38 |       -39 |       -39 |       -39 |       -41 |       -43 |       -43 |        68 |
|              Improvement %               |        78 |        78 |        78 |        78 |        79 |        78 |        78 |        68 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        49 |        50 |        50 |        52 |        55 |        55 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |       -38 |       -38 |       -39 |       -39 |       -41 |       -43 |       -43 |        68 |
|              Improvement %               |        78 |        78 |        78 |        78 |        79 |        78 |        78 |        68 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        20 |        20 |        18 |        18 |        18 |        20 |
|                  jbird                   |        93 |        90 |        89 |        88 |        87 |        85 |        85 |        88 |
|                    Δ                     |        73 |        70 |        69 |        68 |        69 |        67 |        67 |        68 |
|              Improvement %               |       365 |       350 |       345 |       340 |       383 |       372 |       372 |        68 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        77 |       112 |       153 |       172 |       189 |       189 |        20 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |       -20 |       -25 |       -60 |      -101 |      -120 |      -137 |      -137 |        68 |
|              Improvement %               |        42 |        32 |        54 |        66 |        70 |        72 |        72 |        68 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        68 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        68 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1177 |      1179 |      1180 |      1181 |      1182 |      1185 |      1185 |        20 |
|                  jbird                   |       249 |       249 |       249 |       250 |       250 |       258 |       258 |        88 |
|                    Δ                     |      -928 |      -930 |      -931 |      -931 |      -932 |      -927 |      -927 |        68 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        68 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        49 |        50 |        50 |        52 |        53 |        53 |        20 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |       -39 |       -38 |       -39 |       -39 |       -41 |       -41 |       -41 |        71 |
|              Improvement %               |        80 |        78 |        78 |        78 |        79 |        77 |        77 |        71 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        49 |        50 |        50 |        52 |        53 |        53 |        20 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |       -39 |       -38 |       -39 |       -39 |       -41 |       -41 |       -41 |        71 |
|              Improvement %               |        80 |        78 |        78 |        78 |        79 |        77 |        77 |        71 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        20 |        20 |        20 |        19 |        19 |        19 |        20 |
|                  jbird                   |        97 |        93 |        92 |        91 |        88 |        85 |        85 |        91 |
|                    Δ                     |        76 |        73 |        72 |        71 |        69 |        66 |        66 |        71 |
|              Improvement %               |       362 |       365 |       360 |       355 |       363 |       347 |       347 |        71 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        76 |       113 |       155 |       172 |       187 |       187 |        20 |
|                  jbird                   |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        91 |
|                    Δ                     |        -5 |       -24 |       -61 |      -103 |      -120 |      -135 |      -135 |        71 |
|              Improvement %               |        10 |        32 |        54 |        66 |        70 |        72 |        72 |        71 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        91 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        71 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        71 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1173 |      1174 |      1175 |      1177 |      1179 |      1181 |      1181 |        20 |
|                  jbird                   |       249 |       249 |       249 |       249 |       253 |       257 |       257 |        91 |
|                    Δ                     |      -924 |      -925 |      -926 |      -928 |      -926 |      -924 |      -924 |        71 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        71 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       579 |       642 |       653 |       684 |       721 |       751 |       784 |      1428 |
|                  jbird                   |       115 |       121 |       129 |       131 |       138 |       151 |       179 |      6112 |
|                    Δ                     |      -464 |      -521 |      -524 |      -553 |      -583 |      -600 |      -605 |      4684 |
|              Improvement %               |        80 |        81 |        80 |        81 |        81 |        80 |        77 |      4684 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       581 |       644 |       655 |       684 |       722 |       752 |       786 |      1428 |
|                  jbird                   |       117 |       123 |       130 |       132 |       140 |       151 |       176 |      6112 |
|                    Δ                     |      -464 |      -521 |      -525 |      -552 |      -582 |      -601 |      -610 |      4684 |
|              Improvement %               |        80 |        81 |        80 |        81 |        81 |        80 |        78 |      4684 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1726 |      1558 |      1531 |      1462 |      1388 |      1333 |      1276 |      1428 |
|                  jbird                   |      8674 |      8263 |      7759 |      7639 |      7231 |      6635 |      5578 |      6112 |
|                    Δ                     |      6948 |      6705 |      6228 |      6177 |      5843 |      5302 |      4302 |      4684 |
|              Improvement %               |       403 |       430 |       407 |       423 |       421 |       398 |       337 |      4684 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        60 |        95 |       130 |       151 |       162 |       164 |      1428 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6112 |
|                    Δ                     |         0 |       -34 |       -69 |      -104 |      -125 |      -136 |      -138 |      4684 |
|              Improvement %               |         0 |        57 |        73 |        80 |        83 |        84 |        84 |      4684 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1428 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6112 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4684 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4684 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1428 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6112 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4684 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4684 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       569 |       631 |       641 |       654 |       726 |       757 |       793 |      1457 |
|                  jbird                   |       117 |       124 |       131 |       134 |       140 |       154 |       180 |      6017 |
|                    Δ                     |      -452 |      -507 |      -510 |      -520 |      -586 |      -603 |      -613 |      4560 |
|              Improvement %               |        79 |        80 |        80 |        80 |        81 |        80 |        77 |      4560 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       570 |       632 |       643 |       654 |       728 |       760 |       794 |      1457 |
|                  jbird                   |       118 |       125 |       133 |       136 |       141 |       153 |       184 |      6017 |
|                    Δ                     |      -452 |      -507 |      -510 |      -518 |      -587 |      -607 |      -610 |      4560 |
|              Improvement %               |        79 |        80 |        79 |        79 |        81 |        80 |        77 |      4560 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1758 |      1586 |      1560 |      1530 |      1378 |      1321 |      1261 |      1457 |
|                  jbird                   |      8544 |      8099 |      7619 |      7459 |      7175 |      6511 |      5550 |      6017 |
|                    Δ                     |      6786 |      6513 |      6059 |      5929 |      5797 |      5190 |      4289 |      4560 |
|              Improvement %               |       386 |       411 |       388 |       388 |       421 |       393 |       340 |      4560 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        61 |        96 |       131 |       153 |       166 |       168 |      1457 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6017 |
|                    Δ                     |         0 |       -36 |       -70 |      -105 |      -127 |      -140 |      -142 |      4560 |
|              Improvement %               |         0 |        59 |        73 |        80 |        83 |        84 |        85 |      4560 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1457 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6017 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4560 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4560 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1457 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6017 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4560 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4560 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       144 |       153 |       162 |       166 |       174 |       187 |       210 |      5185 |
|                  jbird                   |        48 |        49 |        51 |        54 |        56 |        65 |        89 |     12037 |
|                    Δ                     |       -96 |      -104 |      -111 |      -112 |      -118 |      -122 |      -121 |      6852 |
|              Improvement %               |        67 |        68 |        69 |        67 |        68 |        65 |        58 |      6852 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       154 |       163 |       168 |       175 |       188 |       211 |      5185 |
|                  jbird                   |        49 |        50 |        52 |        56 |        57 |        67 |        82 |     12037 |
|                    Δ                     |       -96 |      -104 |      -111 |      -112 |      -118 |      -121 |      -129 |      6852 |
|              Improvement %               |        66 |        68 |        68 |        67 |        67 |        64 |        61 |      6852 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6940 |      6559 |      6183 |      6023 |      5763 |      5339 |      4763 |      5185 |
|                  jbird                   |     20816 |     20431 |     19583 |     18463 |     17951 |     15359 |     11231 |     12037 |
|                    Δ                     |     13876 |     13872 |     13400 |     12440 |     12188 |     10020 |      6468 |      6852 |
|              Improvement %               |       200 |       211 |       217 |       207 |       211 |       188 |       136 |      6852 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        31 |        38 |        44 |        48 |        51 |        51 |      5185 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     12037 |
|                    Δ                     |         0 |        -6 |       -13 |       -19 |       -23 |       -26 |       -26 |      6852 |
|              Improvement %               |         0 |        19 |        34 |        43 |        48 |        51 |        51 |      6852 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5185 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12037 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6852 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6852 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2932 |      2933 |      2935 |      2941 |      2945 |      3058 |      3075 |      5185 |
|                  jbird                   |      1309 |      1310 |      1310 |      1310 |      1310 |      1338 |      1363 |     12037 |
|                    Δ                     |     -1623 |     -1623 |     -1625 |     -1631 |     -1635 |     -1720 |     -1712 |      6852 |
|              Improvement %               |        55 |        55 |        55 |        55 |        56 |        56 |        56 |      6852 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1614 |      1755 |      1774 |      1792 |      1810 |      2030 |      2070 |       552 |
|                  jbird                   |        85 |        90 |        96 |        98 |        99 |       112 |       154 |      7951 |
|                    Δ                     |     -1529 |     -1665 |     -1678 |     -1694 |     -1711 |     -1918 |     -1916 |      7399 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        93 |      7399 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1606 |      1756 |      1776 |      1793 |      1812 |      2032 |      2077 |       552 |
|                  jbird                   |        87 |        91 |        97 |       100 |       101 |       112 |       158 |      7951 |
|                    Δ                     |     -1519 |     -1665 |     -1679 |     -1693 |     -1711 |     -1920 |     -1919 |      7399 |
|              Improvement %               |        95 |        95 |        95 |        94 |        94 |        94 |        92 |      7399 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       620 |       570 |       564 |       558 |       553 |       493 |       483 |       552 |
|                  jbird                   |     11702 |     11111 |     10439 |     10167 |     10063 |      8935 |      6494 |      7951 |
|                    Δ                     |     11082 |     10541 |      9875 |      9609 |      9510 |      8442 |      6011 |      7399 |
|              Improvement %               |      1787 |      1849 |      1751 |      1722 |      1720 |      1712 |      1245 |      7399 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        37 |        47 |        57 |        64 |        68 |        68 |       552 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7951 |
|                    Δ                     |         0 |       -11 |       -21 |       -31 |       -38 |       -42 |       -42 |      7399 |
|              Improvement %               |         0 |        30 |        45 |        54 |        59 |        62 |        62 |      7399 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       552 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7951 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7399 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7399 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        45 |        45 |        45 |        45 |        45 |        48 |        48 |       552 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7951 |
|                    Δ                     |       -42 |       -42 |       -42 |       -42 |       -42 |       -45 |       -45 |      7399 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7399 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1446 |      1577 |      1590 |      1607 |      1628 |      1701 |      1731 |       615 |
|                  jbird                   |        55 |        58 |        62 |        63 |        64 |        75 |       139 |     10862 |
|                    Δ                     |     -1391 |     -1519 |     -1528 |     -1544 |     -1564 |     -1626 |     -1592 |     10247 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        92 |     10247 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1451 |      1578 |      1592 |      1608 |      1629 |      1700 |      1732 |       615 |
|                  jbird                   |        56 |        59 |        63 |        65 |        66 |        77 |       143 |     10862 |
|                    Δ                     |     -1395 |     -1519 |     -1529 |     -1543 |     -1563 |     -1623 |     -1589 |     10247 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        95 |        92 |     10247 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       691 |       634 |       629 |       623 |       614 |       588 |       578 |       615 |
|                  jbird                   |     18100 |     17391 |     16151 |     15791 |     15551 |     13263 |      7190 |     10862 |
|                    Δ                     |     17409 |     16757 |     15522 |     15168 |     14937 |     12675 |      6612 |     10247 |
|              Improvement %               |      2519 |      2643 |      2468 |      2435 |      2433 |      2156 |      1144 |     10247 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        41 |        55 |        70 |        78 |        83 |        84 |       615 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10862 |
|                    Δ                     |         0 |       -15 |       -29 |       -44 |       -52 |       -57 |       -58 |     10247 |
|              Improvement %               |         0 |        37 |        53 |        63 |        67 |        69 |        69 |     10247 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       615 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10862 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10247 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10247 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        34 |        34 |        34 |        34 |        36 |        36 |       615 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10862 |
|                    Δ                     |       -32 |       -32 |       -32 |       -32 |       -32 |       -34 |       -34 |     10247 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |     10247 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        98 |       107 |       112 |       114 |       118 |       129 |       154 |      6858 |
|                  jbird                   |        28 |        30 |        31 |        33 |        34 |        45 |        66 |     15201 |
|                    Δ                     |       -70 |       -77 |       -81 |       -81 |       -84 |       -84 |       -88 |      8343 |
|              Improvement %               |        71 |        72 |        72 |        71 |        71 |        65 |        57 |      8343 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |       108 |       113 |       116 |       119 |       131 |       155 |      6858 |
|                  jbird                   |        29 |        32 |        33 |        35 |        36 |        47 |        60 |     15201 |
|                    Δ                     |       -70 |       -76 |       -80 |       -81 |       -83 |       -84 |       -95 |      8343 |
|              Improvement %               |        71 |        70 |        71 |        70 |        70 |        64 |        61 |      8343 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10221 |      9343 |      8951 |      8743 |      8503 |      7759 |      6504 |      6858 |
|                  jbird                   |     36199 |     33087 |     32143 |     30351 |     29279 |     22223 |     15038 |     15201 |
|                    Δ                     |     25978 |     23744 |     23192 |     21608 |     20776 |     14464 |      8534 |      8343 |
|              Improvement %               |       254 |       254 |       259 |       247 |       244 |       186 |       131 |      8343 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       129 |       237 |       345 |       412 |       448 |       453 |      6858 |
|                  jbird                   |        25 |        25 |        25 |        26 |        26 |        26 |        26 |     15201 |
|                    Δ                     |         0 |      -104 |      -212 |      -319 |      -386 |      -422 |      -427 |      8343 |
|              Improvement %               |         0 |        81 |        89 |        92 |        94 |        94 |        94 |      8343 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6858 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15201 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8343 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8343 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2490 |      2507 |      2513 |      2519 |      2527 |      2574 |      2678 |      6858 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       941 |     15201 |
|                    Δ                     |     -1613 |     -1629 |     -1635 |     -1641 |     -1649 |     -1691 |     -1737 |      8343 |
|              Improvement %               |        65 |        65 |        65 |        65 |        65 |        66 |        65 |      8343 |

<p>
</details>

