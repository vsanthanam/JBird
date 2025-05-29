# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        10 |        15 |        15 |       100 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         3 |       475 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -8 |       -13 |       -12 |       375 |
|              Improvement %               |        78 |        80 |        80 |        80 |        80 |        87 |        80 |       375 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9218 |      9658 |      9888 |      9994 |     10060 |     12182 |     15377 |       100 |
|                  jbird                   |      1867 |      2043 |      2059 |      2080 |      2103 |      2443 |      2638 |       475 |
|                    Δ                     |     -7351 |     -7615 |     -7829 |     -7914 |     -7957 |     -9739 |    -12739 |       375 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        80 |        83 |       375 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       109 |       103 |       101 |       100 |        99 |        65 |        65 |       100 |
|                  jbird                   |       536 |       490 |       486 |       481 |       476 |       410 |       379 |       475 |
|                    Δ                     |       427 |       387 |       385 |       381 |       377 |       345 |       314 |       375 |
|              Improvement %               |       392 |       376 |       381 |       381 |       381 |       531 |       483 |       375 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        64 |       100 |       137 |       160 |       172 |       174 |       100 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       475 |
|                    Δ                     |         0 |       -33 |       -69 |      -106 |      -129 |      -141 |      -143 |       375 |
|              Improvement %               |         0 |        52 |        69 |        77 |        81 |        82 |        82 |       375 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       475 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       375 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       375 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       240 |       241 |       241 |       241 |       241 |       242 |       245 |       100 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        51 |       475 |
|                    Δ                     |      -192 |      -193 |      -193 |      -193 |      -193 |      -192 |      -194 |       375 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |       375 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8899 |      9331 |      9413 |      9486 |      9560 |      9904 |     10370 |       106 |
|                  jbird                   |      1916 |      2075 |      2090 |      2105 |      2118 |      2177 |      2218 |       470 |
|                    Δ                     |     -6983 |     -7256 |     -7323 |     -7381 |     -7442 |     -7727 |     -8152 |       364 |
|              Improvement %               |        78 |        78 |        78 |        78 |        78 |        78 |        79 |       364 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8905 |      9339 |      9421 |      9495 |      9568 |      9904 |     10378 |       106 |
|                  jbird                   |      1918 |      2077 |      2093 |      2107 |      2118 |      2185 |      2223 |       470 |
|                    Δ                     |     -6987 |     -7262 |     -7328 |     -7388 |     -7450 |     -7719 |     -8155 |       364 |
|              Improvement %               |        78 |        78 |        78 |        78 |        78 |        78 |        79 |       364 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       112 |       107 |       106 |       105 |       105 |       101 |        96 |       106 |
|                  jbird                   |       522 |       482 |       478 |       475 |       473 |       459 |       451 |       470 |
|                    Δ                     |       410 |       375 |       372 |       370 |       368 |       358 |       355 |       364 |
|              Improvement %               |       366 |       350 |       351 |       352 |       350 |       354 |       370 |       364 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        68 |       106 |       144 |       167 |       180 |       182 |       106 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       470 |
|                    Δ                     |         2 |       -37 |       -75 |      -113 |      -136 |      -149 |      -151 |       364 |
|              Improvement %               |        -7 |        54 |        71 |        78 |        81 |        83 |        83 |       364 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       106 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       470 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       364 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       364 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       236 |       236 |       236 |       237 |       237 |       242 |       249 |       106 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       470 |
|                    Δ                     |      -187 |      -187 |      -187 |      -188 |      -188 |      -192 |      -198 |       364 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        80 |       364 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2275 |      2441 |      2468 |      2488 |      2523 |      2742 |      2875 |       399 |
|                  jbird                   |       467 |       507 |       509 |       513 |       519 |       536 |       584 |      1825 |
|                    Δ                     |     -1808 |     -1934 |     -1959 |     -1975 |     -2004 |     -2206 |     -2291 |      1426 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |      1426 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2277 |      2443 |      2470 |      2492 |      2523 |      2734 |      2884 |       399 |
|                  jbird                   |       469 |       509 |       511 |       515 |       521 |       536 |       574 |      1825 |
|                    Δ                     |     -1808 |     -1934 |     -1959 |     -1977 |     -2002 |     -2198 |     -2310 |      1426 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |      1426 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       440 |       410 |       405 |       402 |       397 |       365 |       348 |       399 |
|                  jbird                   |      2142 |      1974 |      1964 |      1950 |      1929 |      1867 |      1712 |      1825 |
|                    Δ                     |      1702 |      1564 |      1559 |      1548 |      1532 |      1502 |      1364 |      1426 |
|              Improvement %               |       387 |       381 |       385 |       385 |       386 |       412 |       392 |      1426 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       100 |       136 |       158 |       171 |       173 |       399 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1825 |
|                    Δ                     |         0 |       -37 |       -73 |      -109 |      -131 |      -144 |      -146 |      1426 |
|              Improvement %               |         0 |        58 |        73 |        80 |        83 |        84 |        84 |      1426 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       399 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1825 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1426 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1426 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        60 |        60 |        60 |        61 |        64 |        64 |       399 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1825 |
|                    Δ                     |       -48 |       -48 |       -48 |       -48 |       -49 |       -52 |       -51 |      1426 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        80 |      1426 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2180 |      2378 |      2410 |      2431 |      2447 |      2558 |      2632 |       410 |
|                  jbird                   |       469 |       514 |       518 |       524 |       530 |       549 |       581 |      1794 |
|                    Δ                     |     -1711 |     -1864 |     -1892 |     -1907 |     -1917 |     -2009 |     -2051 |      1384 |
|              Improvement %               |        78 |        78 |        79 |        78 |        78 |        79 |        78 |      1384 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2186 |      2380 |      2413 |      2433 |      2449 |      2564 |      2641 |       410 |
|                  jbird                   |       471 |       516 |       520 |       526 |       532 |       551 |       585 |      1794 |
|                    Δ                     |     -1715 |     -1864 |     -1893 |     -1907 |     -1917 |     -2013 |     -2056 |      1384 |
|              Improvement %               |        78 |        78 |        78 |        78 |        78 |        79 |        78 |      1384 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       459 |       421 |       415 |       412 |       409 |       391 |       380 |       410 |
|                  jbird                   |      2134 |      1944 |      1931 |      1909 |      1887 |      1822 |      1722 |      1794 |
|                    Δ                     |      1675 |      1523 |      1516 |      1497 |      1478 |      1431 |      1342 |      1384 |
|              Improvement %               |       365 |       362 |       365 |       363 |       361 |       366 |       353 |      1384 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       103 |       141 |       161 |       176 |       178 |       410 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1794 |
|                    Δ                     |         0 |       -37 |       -76 |      -114 |      -134 |      -149 |      -151 |      1384 |
|              Improvement %               |         0 |        58 |        74 |        81 |        83 |        85 |        85 |      1384 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       410 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1794 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1384 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1384 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       410 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        13 |        13 |      1794 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -49 |       -49 |      1384 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |      1384 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4428 |      4731 |      4817 |      4882 |      4932 |      5210 |      5703 |       206 |
|                  jbird                   |       929 |      1009 |      1014 |      1020 |      1029 |      1053 |      1111 |       950 |
|                    Δ                     |     -3499 |     -3722 |     -3803 |     -3862 |     -3903 |     -4157 |     -4592 |       744 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        81 |       744 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4434 |      4735 |      4821 |      4882 |      4936 |      5214 |      5712 |       206 |
|                  jbird                   |       931 |      1011 |      1016 |      1022 |      1031 |      1060 |      1116 |       950 |
|                    Δ                     |     -3503 |     -3724 |     -3805 |     -3860 |     -3905 |     -4154 |     -4596 |       744 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        80 |        80 |       744 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       226 |       211 |       208 |       205 |       203 |       192 |       175 |       206 |
|                  jbird                   |      1076 |       991 |       986 |       981 |       972 |       950 |       900 |       950 |
|                    Δ                     |       850 |       780 |       778 |       776 |       769 |       758 |       725 |       744 |
|              Improvement %               |       376 |       370 |       374 |       379 |       379 |       395 |       414 |       744 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       102 |       140 |       163 |       176 |       177 |       206 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       950 |
|                    Δ                     |         0 |       -36 |       -74 |      -112 |      -135 |      -148 |      -149 |       744 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |       744 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       206 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       950 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       744 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       744 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       122 |       124 |       206 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       950 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -97 |       -99 |       744 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       744 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4450 |      4743 |      4809 |      4874 |      4919 |      5059 |      5227 |       207 |
|                  jbird                   |       937 |      1021 |      1026 |      1031 |      1040 |      1066 |      1132 |       938 |
|                    Δ                     |     -3513 |     -3722 |     -3783 |     -3843 |     -3879 |     -3993 |     -4095 |       731 |
|              Improvement %               |        79 |        78 |        79 |        79 |        79 |        79 |        78 |       731 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4457 |      4743 |      4813 |      4874 |      4919 |      5063 |      5229 |       207 |
|                  jbird                   |       939 |      1023 |      1028 |      1034 |      1042 |      1068 |      1136 |       938 |
|                    Δ                     |     -3518 |     -3720 |     -3785 |     -3840 |     -3877 |     -3995 |     -4093 |       731 |
|              Improvement %               |        79 |        78 |        79 |        79 |        79 |        79 |        78 |       731 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       225 |       211 |       208 |       205 |       203 |       198 |       191 |       207 |
|                  jbird                   |      1067 |       980 |       975 |       970 |       962 |       938 |       884 |       938 |
|                    Δ                     |       842 |       769 |       767 |       765 |       759 |       740 |       693 |       731 |
|              Improvement %               |       374 |       364 |       369 |       373 |       374 |       374 |       363 |       731 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        65 |       103 |       141 |       162 |       176 |       178 |       207 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       938 |
|                    Δ                     |         0 |       -37 |       -75 |      -113 |      -134 |      -148 |      -150 |       731 |
|              Improvement %               |         0 |        57 |        73 |        80 |        83 |        84 |        84 |       731 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       207 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       938 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       731 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       731 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       118 |       118 |       123 |       124 |       207 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       938 |
|                    Δ                     |       -94 |       -94 |       -94 |       -94 |       -94 |       -98 |       -98 |       731 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       731 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        49 |        49 |        50 |        53 |        53 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        92 |
|                    Δ                     |       -37 |       -37 |       -38 |       -38 |       -39 |       -41 |       -41 |        71 |
|              Improvement %               |        79 |        77 |        78 |        78 |        78 |        77 |        77 |        71 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        49 |        49 |        50 |        53 |        53 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        92 |
|                    Δ                     |       -37 |       -37 |       -38 |       -38 |       -39 |       -41 |       -41 |        71 |
|              Improvement %               |        79 |        77 |        78 |        78 |        78 |        77 |        77 |        71 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        20 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |        99 |        94 |        93 |        91 |        89 |        87 |        87 |        92 |
|                    Δ                     |        78 |        73 |        73 |        71 |        69 |        68 |        68 |        71 |
|              Improvement %               |       371 |       348 |       365 |       355 |       345 |       358 |       358 |        71 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        84 |       119 |       158 |       184 |       192 |       192 |        21 |
|                  jbird                   |        28 |        54 |        54 |        54 |        54 |        54 |        54 |        92 |
|                    Δ                     |       -18 |       -30 |       -65 |      -104 |      -130 |      -138 |      -138 |        71 |
|              Improvement %               |        39 |        36 |        55 |        66 |        71 |        72 |        72 |        71 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        92 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        71 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        71 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1188 |      1190 |      1191 |      1191 |      1193 |      1197 |      1197 |        21 |
|                  jbird                   |       243 |       246 |       246 |       249 |       251 |       260 |       260 |        92 |
|                    Δ                     |      -945 |      -944 |      -945 |      -942 |      -942 |      -937 |      -937 |        71 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        78 |        78 |        71 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        49 |        49 |        50 |        51 |        51 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |       -36 |       -37 |       -38 |       -38 |       -39 |       -39 |       -39 |        67 |
|              Improvement %               |        77 |        77 |        78 |        78 |        78 |        76 |        76 |        67 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        49 |        49 |        50 |        51 |        51 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |       -36 |       -37 |       -38 |       -38 |       -39 |       -39 |       -39 |        67 |
|              Improvement %               |        77 |        77 |        78 |        78 |        78 |        76 |        76 |        67 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        20 |        20 |        20 |        20 |        21 |
|                  jbird                   |        93 |        89 |        88 |        88 |        87 |        86 |        86 |        88 |
|                    Δ                     |        72 |        68 |        67 |        68 |        67 |        66 |        66 |        67 |
|              Improvement %               |       343 |       324 |       319 |       340 |       335 |       330 |       330 |        67 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        84 |       121 |       160 |       183 |       193 |       193 |        21 |
|                  jbird                   |        34 |        51 |        51 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |       -12 |       -33 |       -70 |      -108 |      -131 |      -141 |      -141 |        67 |
|              Improvement %               |        26 |        39 |        58 |        68 |        72 |        73 |        73 |        67 |

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
|                swiftyjson                |      1186 |      1188 |      1189 |      1191 |      1191 |      1194 |      1194 |        21 |
|                  jbird                   |       250 |       254 |       254 |       254 |       255 |       263 |       263 |        88 |
|                    Δ                     |      -936 |      -934 |      -935 |      -937 |      -936 |      -931 |      -931 |        67 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        67 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       550 |       598 |       611 |       622 |       630 |       660 |       715 |      1543 |
|                  jbird                   |       115 |       123 |       129 |       131 |       132 |       141 |       190 |      6089 |
|                    Δ                     |      -435 |      -475 |      -482 |      -491 |      -498 |      -519 |      -525 |      4546 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        73 |      4546 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       552 |       600 |       613 |       624 |       632 |       663 |       716 |      1543 |
|                  jbird                   |       116 |       125 |       131 |       133 |       134 |       143 |       185 |      6089 |
|                    Δ                     |      -436 |      -475 |      -482 |      -491 |      -498 |      -520 |      -531 |      4546 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        74 |      4546 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1817 |      1674 |      1638 |      1609 |      1589 |      1515 |      1399 |      1543 |
|                  jbird                   |      8727 |      8127 |      7755 |      7619 |      7571 |      7123 |      5270 |      6089 |
|                    Δ                     |      6910 |      6453 |      6117 |      6010 |      5982 |      5608 |      3871 |      4546 |
|              Improvement %               |       380 |       385 |       373 |       374 |       376 |       370 |       277 |      4546 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |       100 |       137 |       160 |       173 |       175 |      1543 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6089 |
|                    Δ                     |         0 |       -36 |       -74 |      -111 |      -134 |      -147 |      -149 |      4546 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |      4546 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1543 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6089 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4546 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4546 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1543 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6089 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4546 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4546 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       551 |       601 |       611 |       622 |       630 |       680 |       764 |      1539 |
|                  jbird                   |       117 |       125 |       131 |       132 |       136 |       147 |       183 |      6019 |
|                    Δ                     |      -434 |      -476 |      -480 |      -490 |      -494 |      -533 |      -581 |      4480 |
|              Improvement %               |        79 |        79 |        79 |        79 |        78 |        78 |        76 |      4480 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       553 |       603 |       613 |       624 |       632 |       682 |       767 |      1539 |
|                  jbird                   |       118 |       127 |       133 |       134 |       138 |       149 |       186 |      6019 |
|                    Δ                     |      -435 |      -476 |      -480 |      -490 |      -494 |      -533 |      -581 |      4480 |
|              Improvement %               |        79 |        79 |        78 |        79 |        78 |        78 |        76 |      4480 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1815 |      1665 |      1638 |      1608 |      1588 |      1470 |      1310 |      1539 |
|                  jbird                   |      8556 |      8007 |      7651 |      7603 |      7351 |      6799 |      5455 |      6019 |
|                    Δ                     |      6741 |      6342 |      6013 |      5995 |      5763 |      5329 |      4145 |      4480 |
|              Improvement %               |       371 |       381 |       367 |       373 |       363 |       363 |       316 |      4480 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |       100 |       137 |       160 |       173 |       175 |      1539 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6019 |
|                    Δ                     |         0 |       -36 |       -74 |      -111 |      -134 |      -147 |      -149 |      4480 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |      4480 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1539 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6019 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4480 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4480 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1539 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6019 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4480 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4480 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       148 |       152 |       163 |       167 |       184 |       333 |      5336 |
|                  jbird                   |        48 |        49 |        53 |        54 |        54 |        61 |        80 |     11945 |
|                    Δ                     |       -95 |       -99 |       -99 |      -109 |      -113 |      -123 |      -253 |      6609 |
|              Improvement %               |        66 |        67 |        65 |        67 |        68 |        67 |        76 |      6609 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       149 |       154 |       165 |       169 |       186 |       242 |      5336 |
|                  jbird                   |        49 |        50 |        55 |        56 |        56 |        64 |        80 |     11945 |
|                    Δ                     |       -96 |       -99 |       -99 |      -109 |      -113 |      -122 |      -162 |      6609 |
|              Improvement %               |        66 |        66 |        64 |        66 |        67 |        66 |        67 |      6609 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6981 |      6783 |      6575 |      6135 |      5995 |      5427 |      3003 |      5336 |
|                  jbird                   |     20869 |     20591 |     18911 |     18527 |     18447 |     16383 |     12435 |     11945 |
|                    Δ                     |     13888 |     13808 |     12336 |     12392 |     12452 |     10956 |      9432 |      6609 |
|              Improvement %               |       199 |       204 |       188 |       202 |       208 |       202 |       314 |      6609 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        31 |        38 |        45 |        49 |        51 |        52 |      5336 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11945 |
|                    Δ                     |         0 |        -6 |       -13 |       -20 |       -24 |       -26 |       -27 |      6609 |
|              Improvement %               |         0 |        19 |        34 |        44 |        49 |        51 |        52 |      6609 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5336 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11945 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6609 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6609 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2932 |      2933 |      2935 |      2941 |      2945 |      3058 |      3099 |      5336 |
|                  jbird                   |      1316 |      1317 |      1317 |      1317 |      1317 |      1346 |      1364 |     11945 |
|                    Δ                     |     -1616 |     -1616 |     -1618 |     -1624 |     -1628 |     -1712 |     -1735 |      6609 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        56 |        56 |      6609 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1585 |      1754 |      1832 |      1855 |      1874 |      1947 |      1990 |       543 |
|                  jbird                   |        87 |        93 |        97 |        98 |        98 |       107 |       159 |      7833 |
|                    Δ                     |     -1498 |     -1661 |     -1735 |     -1757 |     -1776 |     -1840 |     -1831 |      7290 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        92 |      7290 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1588 |      1755 |      1834 |      1858 |      1878 |      1949 |      1993 |       543 |
|                  jbird                   |        89 |        95 |        99 |       100 |       100 |       109 |       163 |      7833 |
|                    Δ                     |     -1499 |     -1660 |     -1735 |     -1758 |     -1778 |     -1840 |     -1830 |      7290 |
|              Improvement %               |        94 |        95 |        95 |        95 |        95 |        94 |        92 |      7290 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       631 |       570 |       546 |       539 |       534 |       514 |       502 |       543 |
|                  jbird                   |     11483 |     10719 |     10279 |     10223 |     10159 |      9383 |      6294 |      7833 |
|                    Δ                     |     10852 |     10149 |      9733 |      9684 |      9625 |      8869 |      5792 |      7290 |
|              Improvement %               |      1720 |      1781 |      1783 |      1797 |      1802 |      1725 |      1154 |      7290 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        36 |        47 |        57 |        63 |        67 |        67 |       543 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7833 |
|                    Δ                     |         0 |       -10 |       -21 |       -31 |       -37 |       -41 |       -41 |      7290 |
|              Improvement %               |         0 |        28 |        45 |        54 |        59 |        61 |        61 |      7290 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       543 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7833 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7290 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7290 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        45 |        45 |        45 |        46 |        46 |        48 |        48 |       543 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7833 |
|                    Δ                     |       -42 |       -42 |       -42 |       -43 |       -43 |       -45 |       -45 |      7290 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7290 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1057 |      1158 |      1196 |      1217 |      1236 |      1335 |      1475 |       814 |
|                  jbird                   |        52 |        58 |        60 |        61 |        63 |        69 |       141 |     10962 |
|                    Δ                     |     -1005 |     -1100 |     -1136 |     -1156 |     -1173 |     -1266 |     -1334 |     10148 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        90 |     10148 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1059 |      1160 |      1198 |      1219 |      1238 |      1337 |      1464 |       814 |
|                  jbird                   |        54 |        60 |        62 |        63 |        65 |        72 |       145 |     10962 |
|                    Δ                     |     -1005 |     -1100 |     -1136 |     -1156 |     -1173 |     -1265 |     -1319 |     10148 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        90 |     10148 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       946 |       864 |       837 |       822 |       809 |       749 |       678 |       814 |
|                  jbird                   |     19200 |     17215 |     16783 |     16367 |     15879 |     14567 |      7107 |     10962 |
|                    Δ                     |     18254 |     16351 |     15946 |     15545 |     15070 |     13818 |      6429 |     10148 |
|              Improvement %               |      1930 |      1892 |      1905 |      1891 |      1863 |      1845 |       948 |     10148 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        64 |        83 |        94 |       101 |       102 |       814 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10962 |
|                    Δ                     |         0 |       -19 |       -38 |       -57 |       -68 |       -75 |       -76 |     10148 |
|              Improvement %               |         0 |        42 |        59 |        69 |        72 |        74 |        75 |     10148 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       814 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10962 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10148 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10148 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        29 |        29 |        29 |        29 |        30 |        30 |       814 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10962 |
|                    Δ                     |       -26 |       -27 |       -27 |       -27 |       -27 |       -28 |       -28 |     10148 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        93 |     10148 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        95 |       101 |       106 |       111 |       114 |       129 |       215 |      7096 |
|                  jbird                   |        28 |        31 |        31 |        32 |        34 |        38 |       469 |     15171 |
|                    Δ                     |       -67 |       -70 |       -75 |       -79 |       -80 |       -91 |       254 |      8075 |
|              Improvement %               |        71 |        69 |        71 |        71 |        70 |        71 |      -118 |      8075 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       102 |       108 |       113 |       116 |       130 |       210 |      7096 |
|                  jbird                   |        29 |        32 |        33 |        34 |        36 |        41 |       212 |     15171 |
|                    Δ                     |       -67 |       -70 |       -75 |       -79 |       -80 |       -89 |         2 |      8075 |
|              Improvement %               |        70 |        69 |        69 |        70 |        69 |        68 |        -1 |      8075 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10577 |      9943 |      9463 |      9031 |      8791 |      7755 |      4642 |      7096 |
|                  jbird                   |     36310 |     32751 |     31919 |     31631 |     29311 |     26127 |      2134 |     15171 |
|                    Δ                     |     25733 |     22808 |     22456 |     22600 |     20520 |     18372 |     -2508 |      8075 |
|              Improvement %               |       243 |       229 |       237 |       250 |       233 |       237 |       -54 |      8075 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       134 |       244 |       354 |       420 |       465 |       470 |      7096 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15171 |
|                    Δ                     |         0 |      -109 |      -219 |      -329 |      -395 |      -440 |      -445 |      8075 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |      8075 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      7096 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15171 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8075 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8075 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2496 |      2515 |      2521 |      2527 |      2533 |      2662 |      2721 |      7096 |
|                  jbird                   |       878 |       879 |       879 |       879 |       879 |       885 |      1169 |     15171 |
|                    Δ                     |     -1618 |     -1636 |     -1642 |     -1648 |     -1654 |     -1777 |     -1552 |      8075 |
|              Improvement %               |        65 |        65 |        65 |        65 |        65 |        67 |        57 |      8075 |

<p>
</details>

