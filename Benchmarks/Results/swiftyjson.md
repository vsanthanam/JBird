# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9503 |      9822 |      9945 |     10043 |     10117 |     11248 |     13246 |       100 |
|                  jbird                   |      1904 |      2037 |      2054 |      2088 |      2105 |      2994 |      4168 |       471 |
|                    Δ                     |     -7599 |     -7785 |     -7891 |     -7955 |     -8012 |     -8254 |     -9078 |       371 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        73 |        69 |       371 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9498 |      9822 |      9945 |     10043 |     10117 |     11256 |     13261 |       100 |
|                  jbird                   |      1906 |      2039 |      2056 |      2090 |      2109 |      2998 |      4172 |       471 |
|                    Δ                     |     -7592 |     -7783 |     -7889 |     -7953 |     -8008 |     -8258 |     -9089 |       371 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        73 |        69 |       371 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       102 |       101 |       100 |        99 |        75 |        75 |       100 |
|                  jbird                   |       525 |       491 |       487 |       479 |       475 |       334 |       240 |       471 |
|                    Δ                     |       420 |       389 |       386 |       379 |       376 |       259 |       165 |       371 |
|              Improvement %               |       400 |       381 |       382 |       379 |       380 |       345 |       220 |       371 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        65 |       101 |       137 |       159 |       173 |       174 |       100 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       471 |
|                    Δ                     |        -1 |       -34 |       -70 |      -106 |      -128 |      -142 |      -143 |       371 |
|              Improvement %               |         3 |        52 |        69 |        77 |        81 |        82 |        82 |       371 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       471 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       371 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       371 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       235 |       236 |       236 |       236 |       236 |       239 |       241 |       100 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        48 |        49 |       471 |
|                    Δ                     |      -187 |      -188 |      -188 |      -188 |      -188 |      -191 |      -192 |       371 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       371 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9438 |      9880 |      9953 |     10060 |     10158 |     10314 |     10405 |       100 |
|                  jbird                   |      1906 |      2080 |      2096 |      2122 |      2140 |      2208 |      2264 |       468 |
|                    Δ                     |     -7532 |     -7800 |     -7857 |     -7938 |     -8018 |     -8106 |     -8141 |       368 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        79 |        78 |       368 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9443 |      9880 |      9961 |     10076 |     10158 |     10322 |     10406 |       100 |
|                  jbird                   |      1908 |      2083 |      2099 |      2124 |      2142 |      2210 |      2270 |       468 |
|                    Δ                     |     -7535 |     -7797 |     -7862 |     -7952 |     -8016 |     -8112 |     -8136 |       368 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        79 |        78 |       368 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       106 |       101 |       100 |        99 |        98 |        96 |        96 |       100 |
|                  jbird                   |       525 |       481 |       477 |       472 |       467 |       453 |       442 |       468 |
|                    Δ                     |       419 |       380 |       377 |       373 |       369 |       357 |       346 |       368 |
|              Improvement %               |       395 |       376 |       377 |       377 |       377 |       372 |       360 |       368 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |       100 |       137 |       158 |       171 |       173 |       100 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       468 |
|                    Δ                     |         2 |       -33 |       -69 |      -106 |      -127 |      -140 |      -142 |       368 |
|              Improvement %               |        -7 |        52 |        69 |        77 |        80 |        82 |        82 |       368 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       468 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       368 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       368 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       239 |       240 |       240 |       240 |       240 |       244 |       244 |       100 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       468 |
|                    Δ                     |      -190 |      -191 |      -191 |      -191 |      -191 |      -194 |      -194 |       368 |
|              Improvement %               |        79 |        80 |        80 |        80 |        80 |        80 |        80 |       368 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2372 |      2544 |      2566 |      2601 |      2636 |      2789 |      2806 |       383 |
|                  jbird                   |       459 |       506 |       510 |       515 |       520 |       541 |       607 |      1821 |
|                    Δ                     |     -1913 |     -2038 |     -2056 |     -2086 |     -2116 |     -2248 |     -2199 |      1438 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        81 |        78 |      1438 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2373 |      2546 |      2568 |      2603 |      2638 |      2796 |      2807 |       383 |
|                  jbird                   |       460 |       507 |       512 |       517 |       523 |       543 |       609 |      1821 |
|                    Δ                     |     -1913 |     -2039 |     -2056 |     -2086 |     -2115 |     -2253 |     -2198 |      1438 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        81 |        78 |      1438 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       422 |       393 |       390 |       385 |       380 |       359 |       356 |       383 |
|                  jbird                   |      2181 |      1978 |      1960 |      1942 |      1922 |      1850 |      1647 |      1821 |
|                    Δ                     |      1759 |      1585 |      1570 |      1557 |      1542 |      1491 |      1291 |      1438 |
|              Improvement %               |       417 |       403 |       403 |       404 |       406 |       415 |       363 |      1438 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |        96 |       132 |       154 |       166 |       168 |       383 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1821 |
|                    Δ                     |         0 |       -35 |       -69 |      -105 |      -127 |      -139 |      -141 |      1438 |
|              Improvement %               |         0 |        56 |        72 |        80 |        82 |        84 |        84 |      1438 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       383 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1821 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1438 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1438 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        61 |        61 |        61 |        61 |        64 |        64 |       383 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1821 |
|                    Δ                     |       -48 |       -49 |       -49 |       -49 |       -49 |       -52 |       -52 |      1438 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1438 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2191 |      2417 |      2443 |      2480 |      2505 |      2634 |      2767 |       402 |
|                  jbird                   |       469 |       517 |       523 |       539 |       554 |       570 |       630 |      1769 |
|                    Δ                     |     -1722 |     -1900 |     -1920 |     -1941 |     -1951 |     -2064 |     -2137 |      1367 |
|              Improvement %               |        79 |        79 |        79 |        78 |        78 |        78 |        77 |      1367 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2192 |      2419 |      2445 |      2480 |      2507 |      2636 |      2774 |       402 |
|                  jbird                   |       470 |       518 |       525 |       540 |       556 |       571 |       615 |      1769 |
|                    Δ                     |     -1722 |     -1901 |     -1920 |     -1940 |     -1951 |     -2065 |     -2159 |      1367 |
|              Improvement %               |        79 |        79 |        79 |        78 |        78 |        78 |        78 |      1367 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       414 |       409 |       403 |       400 |       380 |       361 |       402 |
|                  jbird                   |      2132 |      1935 |      1913 |      1858 |      1805 |      1754 |      1588 |      1769 |
|                    Δ                     |      1676 |      1521 |      1504 |      1455 |      1405 |      1374 |      1227 |      1367 |
|              Improvement %               |       368 |       367 |       368 |       361 |       351 |       362 |       340 |      1367 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |       100 |       137 |       160 |       173 |       174 |       402 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1769 |
|                    Δ                     |         0 |       -35 |       -73 |      -110 |      -133 |      -146 |      -147 |      1367 |
|              Improvement %               |         0 |        56 |        73 |        80 |        83 |        84 |        84 |      1367 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       402 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1769 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1367 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1367 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       402 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1769 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -49 |      1367 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1367 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4527 |      4874 |      4899 |      4932 |      4977 |      5173 |      5459 |       203 |
|                  jbird                   |       926 |      1012 |      1019 |      1026 |      1035 |      1064 |      1131 |       945 |
|                    Δ                     |     -3601 |     -3862 |     -3880 |     -3906 |     -3942 |     -4109 |     -4328 |       742 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        79 |        79 |       742 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4532 |      4874 |      4903 |      4936 |      4981 |      5173 |      5461 |       203 |
|                  jbird                   |       927 |      1013 |      1021 |      1028 |      1037 |      1064 |      1133 |       945 |
|                    Δ                     |     -3605 |     -3861 |     -3882 |     -3908 |     -3944 |     -4109 |     -4328 |       742 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        79 |        79 |       742 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       221 |       205 |       204 |       203 |       201 |       193 |       183 |       203 |
|                  jbird                   |      1080 |       989 |       981 |       975 |       967 |       940 |       884 |       945 |
|                    Δ                     |       859 |       784 |       777 |       772 |       766 |       747 |       701 |       742 |
|              Improvement %               |       389 |       382 |       381 |       380 |       381 |       387 |       383 |       742 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       102 |       138 |       160 |       173 |       175 |       203 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       945 |
|                    Δ                     |         0 |       -36 |       -74 |      -110 |      -132 |      -145 |      -147 |       742 |
|              Improvement %               |         0 |        56 |        73 |        80 |        82 |        84 |        84 |       742 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       203 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       945 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       742 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       742 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       119 |       119 |       119 |       119 |       119 |       123 |       125 |       203 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       945 |
|                    Δ                     |       -95 |       -95 |       -95 |       -95 |       -95 |       -99 |      -100 |       742 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       742 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4528 |      4911 |      4944 |      4977 |      5009 |      5145 |      5272 |       201 |
|                  jbird                   |       932 |      1022 |      1027 |      1033 |      1041 |      1087 |      1163 |       937 |
|                    Δ                     |     -3596 |     -3889 |     -3917 |     -3944 |     -3968 |     -4058 |     -4109 |       736 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        78 |       736 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4531 |      4911 |      4948 |      4981 |      5018 |      5149 |      5274 |       201 |
|                  jbird                   |       933 |      1024 |      1029 |      1035 |      1044 |      1092 |      1164 |       937 |
|                    Δ                     |     -3598 |     -3887 |     -3919 |     -3946 |     -3974 |     -4057 |     -4110 |       736 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        78 |       736 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       221 |       204 |       202 |       201 |       200 |       195 |       190 |       201 |
|                  jbird                   |      1073 |       978 |       974 |       968 |       961 |       920 |       860 |       937 |
|                    Δ                     |       852 |       774 |       772 |       767 |       761 |       725 |       670 |       736 |
|              Improvement %               |       386 |       379 |       382 |       382 |       380 |       372 |       353 |       736 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       100 |       137 |       159 |       172 |       174 |       201 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       937 |
|                    Δ                     |         0 |       -36 |       -72 |      -109 |      -131 |      -144 |      -146 |       736 |
|              Improvement %               |         0 |        56 |        72 |        80 |        82 |        84 |        84 |       736 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       201 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       937 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       736 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       736 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       119 |       119 |       119 |       120 |       120 |       125 |       126 |       201 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       937 |
|                    Δ                     |       -95 |       -95 |       -95 |       -96 |       -96 |      -100 |      -101 |       736 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       736 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        55 |        55 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |       -37 |       -38 |       -38 |       -39 |       -39 |       -43 |       -43 |        67 |
|              Improvement %               |        77 |        78 |        78 |        78 |        78 |        78 |        78 |        67 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        49 |        50 |        50 |        50 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |       -37 |       -38 |       -38 |       -38 |       -39 |       -38 |       -38 |        67 |
|              Improvement %               |        77 |        78 |        78 |        78 |        78 |        76 |        76 |        67 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        20 |        20 |        20 |        18 |        18 |        21 |
|                  jbird                   |        92 |        90 |        89 |        88 |        87 |        87 |        87 |        88 |
|                    Δ                     |        71 |        69 |        69 |        68 |        67 |        69 |        69 |        67 |
|              Improvement %               |       338 |       329 |       345 |       340 |       335 |       383 |       383 |        67 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        84 |       121 |       157 |       180 |       192 |       192 |        21 |
|                  jbird                   |        28 |        51 |        51 |        51 |        51 |        51 |        51 |        88 |
|                    Δ                     |       -18 |       -33 |       -70 |      -106 |      -129 |      -141 |      -141 |        67 |
|              Improvement %               |        39 |        39 |        58 |        68 |        72 |        73 |        73 |        67 |

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
|                swiftyjson                |      1183 |      1184 |      1185 |      1186 |      1188 |      1192 |      1192 |        21 |
|                  jbird                   |       244 |       248 |       248 |       248 |       248 |       252 |       252 |        88 |
|                    Δ                     |      -939 |      -936 |      -937 |      -938 |      -940 |      -940 |      -940 |        67 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        79 |        67 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        49 |        49 |        50 |        50 |        21 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        87 |
|                    Δ                     |       -37 |       -38 |       -38 |       -38 |       -37 |       -38 |       -38 |        66 |
|              Improvement %               |        77 |        78 |        78 |        78 |        76 |        76 |        76 |        66 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        49 |        50 |        50 |        50 |        21 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |       -37 |       -38 |       -38 |       -37 |       -38 |       -38 |       -38 |        66 |
|              Improvement %               |        77 |        78 |        78 |        76 |        76 |        76 |        76 |        66 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        20 |        20 |        20 |        20 |        20 |        21 |
|                  jbird                   |        91 |        88 |        88 |        87 |        83 |        82 |        82 |        87 |
|                    Δ                     |        70 |        67 |        68 |        67 |        63 |        62 |        62 |        66 |
|              Improvement %               |       333 |       319 |       340 |       335 |       315 |       310 |       310 |        66 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        84 |       123 |       160 |       183 |       193 |       193 |        21 |
|                  jbird                   |        28 |        50 |        50 |        50 |        51 |        51 |        51 |        87 |
|                    Δ                     |       -21 |       -34 |       -73 |      -110 |      -132 |      -142 |      -142 |        66 |
|              Improvement %               |        43 |        40 |        59 |        69 |        72 |        74 |        74 |        66 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        66 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        66 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1168 |      1170 |      1171 |      1172 |      1173 |      1178 |      1178 |        21 |
|                  jbird                   |       251 |       251 |       252 |       252 |       252 |       260 |       260 |        87 |
|                    Δ                     |      -917 |      -919 |      -919 |      -920 |      -921 |      -918 |      -918 |        66 |
|              Improvement %               |        79 |        79 |        78 |        78 |        79 |        78 |        78 |        66 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       551 |       605 |       611 |       620 |       650 |       680 |       732 |      1530 |
|                  jbird                   |       116 |       126 |       130 |       132 |       134 |       144 |       172 |      6042 |
|                    Δ                     |      -435 |      -479 |      -481 |      -488 |      -516 |      -536 |      -560 |      4512 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        77 |      4512 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       553 |       606 |       612 |       622 |       651 |       680 |       733 |      1530 |
|                  jbird                   |       117 |       128 |       131 |       133 |       135 |       146 |       165 |      6042 |
|                    Δ                     |      -436 |      -478 |      -481 |      -489 |      -516 |      -534 |      -568 |      4512 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        77 |      4512 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1814 |      1655 |      1638 |      1615 |      1539 |      1470 |      1367 |      1530 |
|                  jbird                   |      8618 |      7919 |      7699 |      7603 |      7487 |      6935 |      5821 |      6042 |
|                    Δ                     |      6804 |      6264 |      6061 |      5988 |      5948 |      5465 |      4454 |      4512 |
|              Improvement %               |       375 |       378 |       370 |       371 |       386 |       372 |       326 |      4512 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       136 |       159 |       172 |       174 |      1530 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6042 |
|                    Δ                     |         0 |       -36 |       -73 |      -110 |      -133 |      -146 |      -148 |      4512 |
|              Improvement %               |         0 |        58 |        74 |        81 |        84 |        85 |        85 |      4512 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1530 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6042 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4512 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4512 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        15 |        16 |      1530 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6042 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |      4512 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        81 |      4512 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       562 |       618 |       625 |       632 |       643 |       682 |       858 |      1504 |
|                  jbird                   |       116 |       127 |       131 |       132 |       135 |       143 |       194 |      6010 |
|                    Δ                     |      -446 |      -491 |      -494 |      -500 |      -508 |      -539 |      -664 |      4506 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        77 |      4506 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       564 |       620 |       626 |       633 |       646 |       684 |       828 |      1504 |
|                  jbird                   |       118 |       129 |       133 |       134 |       136 |       146 |       201 |      6010 |
|                    Δ                     |      -446 |      -491 |      -493 |      -499 |      -510 |      -538 |      -627 |      4506 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        76 |      4506 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1778 |      1618 |      1601 |      1584 |      1557 |      1466 |      1166 |      1504 |
|                  jbird                   |      8605 |      7863 |      7631 |      7567 |      7439 |      6971 |      5162 |      6010 |
|                    Δ                     |      6827 |      6245 |      6030 |      5983 |      5882 |      5505 |      3996 |      4506 |
|              Improvement %               |       384 |       386 |       377 |       378 |       378 |       376 |       343 |      4506 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       136 |       156 |       169 |       171 |      1504 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6010 |
|                    Δ                     |         0 |       -37 |       -73 |      -110 |      -130 |      -143 |      -145 |      4506 |
|              Improvement %               |         0 |        60 |        74 |        81 |        83 |        85 |        85 |      4506 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1504 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6010 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4506 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4506 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1504 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6010 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4506 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4506 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       152 |       162 |       166 |       171 |       186 |       699 |      5184 |
|                  jbird                   |        56 |        58 |        63 |        63 |        64 |        72 |        95 |     10765 |
|                    Δ                     |       -87 |       -94 |       -99 |      -103 |      -107 |      -114 |      -604 |      5581 |
|              Improvement %               |        61 |        62 |        61 |        62 |        63 |        61 |        86 |      5581 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       154 |       163 |       168 |       172 |       187 |       233 |      5184 |
|                  jbird                   |        57 |        59 |        65 |        65 |        65 |        73 |        89 |     10765 |
|                    Δ                     |       -88 |       -95 |       -98 |      -103 |      -107 |      -114 |      -144 |      5581 |
|              Improvement %               |        61 |        62 |        60 |        61 |        62 |        61 |        62 |      5581 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6977 |      6563 |      6191 |      6023 |      5863 |      5387 |      1431 |      5184 |
|                  jbird                   |     17857 |     17279 |     15847 |     15759 |     15679 |     13991 |     10522 |     10765 |
|                    Δ                     |     10880 |     10716 |      9656 |      9736 |      9816 |      8604 |      9091 |      5581 |
|              Improvement %               |       156 |       163 |       156 |       162 |       167 |       160 |       635 |      5581 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        31 |        38 |        44 |        48 |        51 |        51 |      5184 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10765 |
|                    Δ                     |         0 |        -6 |       -13 |       -19 |       -23 |       -26 |       -26 |      5581 |
|              Improvement %               |         0 |        19 |        34 |        43 |        48 |        51 |        51 |      5581 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5184 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10765 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      5581 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      5581 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2951 |      2951 |      2953 |      2961 |      2963 |      3080 |      3161 |      5184 |
|                  jbird                   |      1513 |      1513 |      1513 |      1513 |      1513 |      1542 |      1616 |     10765 |
|                    Δ                     |     -1438 |     -1438 |     -1440 |     -1448 |     -1450 |     -1538 |     -1545 |      5581 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        50 |        49 |      5581 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1593 |      1759 |      1790 |      1843 |      1890 |      2251 |      4932 |       540 |
|                  jbird                   |        87 |        96 |        99 |       100 |       101 |       110 |       134 |      7744 |
|                    Δ                     |     -1506 |     -1663 |     -1691 |     -1743 |     -1789 |     -2141 |     -4798 |      7204 |
|              Improvement %               |        95 |        95 |        94 |        95 |        95 |        95 |        97 |      7204 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1595 |      1762 |      1792 |      1844 |      1891 |      2062 |      2455 |       540 |
|                  jbird                   |        89 |        98 |       100 |       101 |       102 |       112 |       137 |      7744 |
|                    Δ                     |     -1506 |     -1664 |     -1692 |     -1743 |     -1789 |     -1950 |     -2318 |      7204 |
|              Improvement %               |        94 |        94 |        94 |        95 |        95 |        95 |        94 |      7204 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       628 |       568 |       559 |       543 |       529 |       445 |       203 |       540 |
|                  jbird                   |     11434 |     10399 |     10151 |     10023 |      9935 |      9087 |      7472 |      7744 |
|                    Δ                     |     10806 |      9831 |      9592 |      9480 |      9406 |      8642 |      7269 |      7204 |
|              Improvement %               |      1721 |      1731 |      1716 |      1746 |      1778 |      1942 |      3581 |      7204 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        36 |        46 |        57 |        63 |        67 |        67 |       540 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7744 |
|                    Δ                     |         0 |       -10 |       -20 |       -31 |       -37 |       -41 |       -41 |      7204 |
|              Improvement %               |         0 |        28 |        43 |        54 |        59 |        61 |        61 |      7204 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       540 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7744 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7204 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7204 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        45 |        45 |        45 |        45 |        45 |        48 |        48 |       540 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7744 |
|                    Δ                     |       -42 |       -42 |       -42 |       -42 |       -42 |       -45 |       -45 |      7204 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7204 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1137 |      1249 |      1275 |      1304 |      1368 |      1611 |      8900 |       747 |
|                  jbird                   |        56 |        62 |        64 |        64 |        65 |        73 |       138 |     10581 |
|                    Δ                     |     -1081 |     -1187 |     -1211 |     -1240 |     -1303 |     -1538 |     -8762 |      9834 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        98 |      9834 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1142 |      1251 |      1277 |      1306 |      1362 |      1599 |      1835 |       747 |
|                  jbird                   |        58 |        64 |        65 |        66 |        66 |        76 |       141 |     10581 |
|                    Δ                     |     -1084 |     -1187 |     -1212 |     -1240 |     -1296 |     -1523 |     -1694 |      9834 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        92 |      9834 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       879 |       801 |       785 |       767 |       732 |       621 |       112 |       747 |
|                  jbird                   |     17725 |     16015 |     15663 |     15575 |     15415 |     13663 |      7266 |     10581 |
|                    Δ                     |     16846 |     15214 |     14878 |     14808 |     14683 |     13042 |      7154 |      9834 |
|              Improvement %               |      1916 |      1899 |      1895 |      1931 |      2006 |      2100 |      6388 |      9834 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        44 |        60 |        78 |        89 |        95 |        96 |       747 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10581 |
|                    Δ                     |         0 |       -18 |       -34 |       -52 |       -63 |       -69 |       -70 |      9834 |
|              Improvement %               |         0 |        41 |        57 |        67 |        71 |        73 |        73 |      9834 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       747 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10581 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      9834 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9834 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        29 |        29 |        30 |        30 |        31 |        31 |       747 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10581 |
|                    Δ                     |       -27 |       -27 |       -27 |       -28 |       -28 |       -29 |       -29 |      9834 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      9834 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        95 |       106 |       111 |       116 |       122 |       141 |       199 |      6779 |
|                  jbird                   |        28 |        31 |        31 |        31 |        31 |        37 |        76 |     15397 |
|                    Δ                     |       -67 |       -75 |       -80 |       -85 |       -91 |      -104 |      -123 |      8618 |
|              Improvement %               |        71 |        71 |        72 |        73 |        75 |        74 |        62 |      8618 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       107 |       113 |       118 |       124 |       141 |       181 |      6779 |
|                  jbird                   |        29 |        32 |        33 |        33 |        33 |        39 |        78 |     15397 |
|                    Δ                     |       -67 |       -75 |       -80 |       -85 |       -91 |      -102 |      -103 |      8618 |
|              Improvement %               |        70 |        70 |        71 |        72 |        73 |        72 |        57 |      8618 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10545 |      9447 |      8975 |      8631 |      8179 |      7111 |      5014 |      6779 |
|                  jbird                   |     36308 |     32447 |     32271 |     32143 |     32015 |     27247 |     13136 |     15397 |
|                    Δ                     |     25763 |     23000 |     23296 |     23512 |     23836 |     20136 |      8122 |      8618 |
|              Improvement %               |       244 |       243 |       260 |       272 |       291 |       283 |       162 |      8618 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |       130 |       235 |       340 |       406 |       444 |       448 |      6779 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15397 |
|                    Δ                     |         0 |      -105 |      -209 |      -314 |      -380 |      -418 |      -422 |      8618 |
|              Improvement %               |         0 |        81 |        89 |        92 |        94 |        94 |        94 |      8618 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6779 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15397 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8618 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8618 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2486 |      2503 |      2509 |      2515 |      2523 |      2560 |      2675 |      6779 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       945 |     15397 |
|                    Δ                     |     -1609 |     -1625 |     -1631 |     -1637 |     -1645 |     -1677 |     -1730 |      8618 |
|              Improvement %               |        65 |        65 |        65 |        65 |        65 |        66 |        65 |      8618 |

<p>
</details>

