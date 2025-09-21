
# JBird vs. SwiftyJSON

```
Host 'Varuns-MacBook-Pro.local' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 25.0.0: Mon Aug 25 21:17:54 PDT 2025; root:xnu-12377.1.9~3/RELEASE_ARM64_T6041
```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9295 |      9732 |      9855 |      9961 |     10011 |     11370 |     13107 |       101 |
|                  jbird                   |      1817 |      1920 |      1933 |      1947 |      1974 |      2114 |     20013 |       498 |
|                    Δ                     |     -7478 |     -7812 |     -7922 |     -8014 |     -8037 |     -9256 |      6906 |       397 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |       -53 |       397 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9301 |      9740 |      9863 |      9970 |     10019 |     11379 |     13119 |       101 |
|                  jbird                   |      1818 |      1922 |      1934 |      1949 |      1974 |      2116 |      2220 |       498 |
|                    Δ                     |     -7483 |     -7818 |     -7929 |     -8021 |     -8045 |     -9263 |    -10899 |       397 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        83 |       397 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       108 |       103 |       101 |       100 |       100 |        88 |        76 |       101 |
|                  jbird                   |       550 |       521 |       518 |       514 |       507 |       473 |        50 |       498 |
|                    Δ                     |       442 |       418 |       417 |       414 |       407 |       385 |       -26 |       397 |
|              Improvement %               |       409 |       406 |       413 |       414 |       407 |       438 |       -34 |       397 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        68 |       105 |       141 |       163 |       176 |       178 |       101 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       498 |
|                    Δ                     |        -1 |       -33 |       -70 |      -106 |      -128 |      -141 |      -143 |       397 |
|              Improvement %               |         3 |        49 |        67 |        75 |        79 |        80 |        80 |       397 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       101 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       397 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       397 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       242 |       242 |       242 |       242 |       243 |       246 |       254 |       101 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       498 |
|                    Δ                     |      -196 |      -196 |      -196 |      -196 |      -197 |      -200 |      -207 |       397 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        81 |        81 |       397 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        11 |        13 |        13 |        98 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |        20 |       492 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -9 |       -11 |         7 |       394 |
|              Improvement %               |        78 |        80 |        80 |        80 |        82 |        85 |       -54 |       394 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |         9 |        10 |        10 |        10 |        11 |        13 |        13 |        98 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       492 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -9 |       -11 |       -11 |       394 |
|              Improvement %               |        78 |        80 |        80 |        80 |        82 |        85 |        85 |       394 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       106 |       101 |       100 |        99 |        91 |        78 |        78 |        98 |
|                  jbird                   |       545 |       514 |       510 |       506 |       500 |       469 |        51 |       492 |
|                    Δ                     |       439 |       413 |       410 |       407 |       409 |       391 |       -27 |       394 |
|              Improvement %               |       414 |       409 |       410 |       411 |       449 |       501 |       -35 |       394 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        68 |       102 |       139 |       160 |       173 |       173 |        98 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       492 |
|                    Δ                     |         1 |       -33 |       -67 |      -104 |      -125 |      -138 |      -138 |       394 |
|              Improvement %               |        -3 |        49 |        66 |        75 |        78 |        80 |        80 |       394 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        98 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       492 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       394 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       394 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       247 |       247 |       247 |       248 |       248 |       259 |       259 |        98 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       492 |
|                    Δ                     |      -200 |      -200 |      -200 |      -201 |      -201 |      -212 |      -211 |       394 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        81 |       394 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2382 |      2564 |      2589 |      2615 |      2697 |      3009 |      3254 |       377 |
|                  jbird                   |       445 |       478 |       484 |       489 |       496 |       525 |     16396 |      1887 |
|                    Δ                     |     -1937 |     -2086 |     -2105 |     -2126 |     -2201 |     -2484 |     13142 |      1510 |
|              Improvement %               |        81 |        81 |        81 |        81 |        82 |        83 |      -404 |      1510 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2384 |      2566 |      2591 |      2619 |      2703 |      3015 |      3255 |       377 |
|                  jbird                   |       446 |       480 |       486 |       491 |       497 |       526 |       679 |      1887 |
|                    Δ                     |     -1938 |     -2086 |     -2105 |     -2128 |     -2206 |     -2489 |     -2576 |      1510 |
|              Improvement %               |        81 |        81 |        81 |        81 |        82 |        83 |        79 |      1510 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       420 |       390 |       386 |       383 |       371 |       332 |       307 |       377 |
|                  jbird                   |      2249 |      2091 |      2067 |      2043 |      2019 |      1907 |        61 |      1887 |
|                    Δ                     |      1829 |      1701 |      1681 |      1660 |      1648 |      1575 |      -246 |      1510 |
|              Improvement %               |       435 |       436 |       435 |       433 |       444 |       474 |       -80 |      1510 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        64 |        99 |       133 |       154 |       167 |       168 |       377 |
|                  jbird                   |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1887 |
|                    Δ                     |         0 |       -34 |       -69 |      -103 |      -124 |      -137 |      -138 |      1510 |
|              Improvement %               |         0 |        53 |        70 |        77 |        81 |        82 |        82 |      1510 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       377 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1887 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1510 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1510 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        62 |        62 |        62 |        62 |        62 |        65 |        65 |       377 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1887 |
|                    Δ                     |       -50 |       -50 |       -50 |       -50 |       -50 |       -53 |       -53 |      1510 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        82 |      1510 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2248 |      2378 |      2460 |      2494 |      2552 |      2628 |      2645 |       403 |
|                  jbird                   |       447 |       484 |       490 |       498 |       505 |       520 |       557 |      1895 |
|                    Δ                     |     -1801 |     -1894 |     -1970 |     -1996 |     -2047 |     -2108 |     -2088 |      1492 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |      1492 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2250 |      2380 |      2460 |      2497 |      2554 |      2630 |      2648 |       403 |
|                  jbird                   |       448 |       485 |       492 |       500 |       507 |       523 |       559 |      1895 |
|                    Δ                     |     -1802 |     -1895 |     -1968 |     -1997 |     -2047 |     -2107 |     -2089 |      1492 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |      1492 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       445 |       421 |       407 |       401 |       392 |       381 |       378 |       403 |
|                  jbird                   |      2238 |      2069 |      2041 |      2008 |      1979 |      1922 |      1796 |      1895 |
|                    Δ                     |      1793 |      1648 |      1634 |      1607 |      1587 |      1541 |      1418 |      1492 |
|              Improvement %               |       403 |       391 |       401 |       401 |       405 |       404 |       375 |      1492 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        66 |       104 |       140 |       163 |       177 |       179 |       403 |
|                  jbird                   |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1895 |
|                    Δ                     |         0 |       -36 |       -74 |      -110 |      -133 |      -147 |      -149 |      1492 |
|              Improvement %               |         0 |        55 |        71 |        79 |        82 |        83 |        83 |      1492 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       403 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1895 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1492 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1492 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        60 |        60 |        60 |        60 |        63 |        63 |       403 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1895 |
|                    Δ                     |       -48 |       -48 |       -48 |       -48 |       -48 |       -51 |       -51 |      1492 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1492 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4529 |      4870 |      4944 |      5026 |      5071 |      5153 |      5279 |       201 |
|                  jbird                   |       893 |       962 |       969 |       978 |       987 |      1016 |      1043 |       993 |
|                    Δ                     |     -3636 |     -3908 |     -3975 |     -4048 |     -4084 |     -4137 |     -4236 |       792 |
|              Improvement %               |        80 |        80 |        80 |        81 |        81 |        80 |        80 |       792 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4537 |      4874 |      4944 |      5026 |      5075 |      5153 |      5281 |       201 |
|                  jbird                   |       894 |       963 |       971 |       979 |       989 |      1018 |      1046 |       993 |
|                    Δ                     |     -3643 |     -3911 |     -3973 |     -4047 |     -4086 |     -4135 |     -4235 |       792 |
|              Improvement %               |        80 |        80 |        80 |        81 |        81 |        80 |        80 |       792 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       221 |       205 |       202 |       199 |       197 |       194 |       189 |       201 |
|                  jbird                   |      1120 |      1040 |      1032 |      1023 |      1014 |       984 |       959 |       993 |
|                    Δ                     |       899 |       835 |       830 |       824 |       817 |       790 |       770 |       792 |
|              Improvement %               |       407 |       407 |       411 |       414 |       415 |       407 |       407 |       792 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        68 |       104 |       140 |       162 |       175 |       177 |       201 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       993 |
|                    Δ                     |         1 |       -36 |       -72 |      -108 |      -130 |      -143 |      -145 |       792 |
|              Improvement %               |        -3 |        53 |        69 |        77 |        80 |        82 |        82 |       792 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       201 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       993 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       792 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       792 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       120 |       121 |       121 |       121 |       121 |       125 |       127 |       201 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       993 |
|                    Δ                     |       -97 |       -98 |       -98 |       -98 |       -98 |      -102 |      -103 |       792 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        81 |       792 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4568 |      4891 |      4944 |      5005 |      5063 |      5313 |      5429 |       201 |
|                  jbird                   |       901 |       971 |       980 |       988 |       997 |      1021 |      1054 |       984 |
|                    Δ                     |     -3667 |     -3920 |     -3964 |     -4017 |     -4066 |     -4292 |     -4375 |       783 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |       783 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4574 |      4895 |      4944 |      5009 |      5067 |      5317 |      5430 |       201 |
|                  jbird                   |       902 |       972 |       982 |       990 |       998 |      1024 |      1057 |       984 |
|                    Δ                     |     -3672 |     -3923 |     -3962 |     -4019 |     -4069 |     -4293 |     -4373 |       783 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |       783 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       219 |       205 |       202 |       200 |       198 |       188 |       184 |       201 |
|                  jbird                   |      1110 |      1030 |      1020 |      1012 |      1003 |       979 |       949 |       984 |
|                    Δ                     |       891 |       825 |       818 |       812 |       805 |       791 |       765 |       783 |
|              Improvement %               |       407 |       402 |       405 |       406 |       407 |       421 |       416 |       783 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        29 |        68 |       103 |       140 |       163 |       175 |       177 |       201 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       984 |
|                    Δ                     |         1 |       -36 |       -71 |      -108 |      -131 |      -143 |      -145 |       783 |
|              Improvement %               |        -3 |        53 |        69 |        77 |        80 |        82 |        82 |       783 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       201 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       984 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       783 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       783 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       121 |       121 |       122 |       122 |       122 |       128 |       128 |       201 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        24 |        24 |       984 |
|                    Δ                     |       -98 |       -98 |       -99 |       -99 |       -99 |      -104 |      -104 |       783 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        81 |        81 |       783 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        51 |        52 |        52 |        52 |        53 |        53 |        20 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                    Δ                     |       -40 |       -41 |       -42 |       -42 |       -42 |       -42 |       -42 |        77 |
|              Improvement %               |        80 |        80 |        81 |        81 |        81 |        79 |        79 |        77 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        51 |        52 |        52 |        52 |        53 |        53 |        20 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                    Δ                     |       -40 |       -41 |       -42 |       -42 |       -42 |       -42 |       -42 |        77 |
|              Improvement %               |        80 |        80 |        81 |        81 |        81 |        79 |        79 |        77 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        19 |        19 |        19 |        19 |        19 |        20 |
|                  jbird                   |       102 |        98 |        98 |        97 |        97 |        92 |        92 |        97 |
|                    Δ                     |        82 |        78 |        79 |        78 |        78 |        73 |        73 |        77 |
|              Improvement %               |       410 |       390 |       416 |       411 |       411 |       384 |       384 |        77 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        52 |        79 |       117 |       153 |       176 |       190 |       190 |        20 |
|                  jbird                   |        31 |        55 |        55 |        55 |        55 |        55 |        55 |        97 |
|                    Δ                     |       -21 |       -24 |       -62 |       -98 |      -121 |      -135 |      -135 |        77 |
|              Improvement %               |        40 |        30 |        53 |        64 |        69 |        71 |        71 |        77 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        97 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        77 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        77 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1227 |      1228 |      1229 |      1230 |      1232 |      1234 |      1234 |        20 |
|                  jbird                   |       236 |       236 |       236 |       237 |       237 |       245 |       245 |        97 |
|                    Δ                     |      -991 |      -992 |      -993 |      -993 |      -995 |      -989 |      -989 |        77 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        80 |        80 |        77 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        50 |        50 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |       -38 |       -38 |       -38 |       -39 |       -39 |       -39 |       -39 |        73 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        78 |        78 |        73 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        50 |        50 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |       -38 |       -38 |       -38 |       -39 |       -39 |       -39 |       -39 |        73 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        78 |        78 |        73 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        20 |        20 |        20 |        20 |        20 |        20 |        21 |
|                  jbird                   |        98 |        95 |        94 |        94 |        93 |        92 |        92 |        94 |
|                    Δ                     |        77 |        75 |        74 |        74 |        73 |        72 |        72 |        73 |
|              Improvement %               |       367 |       375 |       370 |       370 |       365 |       360 |       360 |        73 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        90 |       124 |       160 |       183 |       201 |       201 |        21 |
|                  jbird                   |        31 |        55 |        55 |        55 |        55 |        55 |        55 |        94 |
|                    Δ                     |       -19 |       -35 |       -69 |      -105 |      -128 |      -146 |      -146 |        73 |
|              Improvement %               |        38 |        39 |        56 |        66 |        70 |        73 |        73 |        73 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        94 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        73 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        73 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1205 |      1206 |      1207 |      1209 |      1210 |      1212 |      1212 |        21 |
|                  jbird                   |       240 |       244 |       244 |       244 |       244 |       249 |       249 |        94 |
|                    Δ                     |      -965 |      -962 |      -963 |      -965 |      -966 |      -963 |      -963 |        73 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |        73 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       565 |       626 |       635 |       643 |       651 |       681 |       794 |      1491 |
|                  jbird                   |       112 |       114 |       121 |       126 |       127 |       135 |       186 |      6404 |
|                    Δ                     |      -453 |      -512 |      -514 |      -517 |      -524 |      -546 |      -608 |      4913 |
|              Improvement %               |        80 |        82 |        81 |        80 |        80 |        80 |        77 |      4913 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       566 |       627 |       636 |       644 |       653 |       682 |       798 |      1491 |
|                  jbird                   |       113 |       116 |       123 |       127 |       128 |       137 |       178 |      6404 |
|                    Δ                     |      -453 |      -511 |      -513 |      -517 |      -525 |      -545 |      -620 |      4913 |
|              Improvement %               |        80 |        81 |        81 |        80 |        80 |        80 |        78 |      4913 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1771 |      1599 |      1576 |      1556 |      1536 |      1469 |      1259 |      1491 |
|                  jbird                   |      8959 |      8743 |      8255 |      7955 |      7879 |      7419 |      5386 |      6404 |
|                    Δ                     |      7188 |      7144 |      6679 |      6399 |      6343 |      5950 |      4127 |      4913 |
|              Improvement %               |       406 |       447 |       424 |       411 |       413 |       405 |       328 |      4913 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        65 |       101 |       137 |       159 |       172 |       173 |      1491 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      6404 |
|                    Δ                     |         0 |       -36 |       -72 |      -108 |      -130 |      -143 |      -144 |      4913 |
|              Improvement %               |         0 |        55 |        71 |        79 |        82 |        83 |        83 |      4913 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1491 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6404 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4913 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4913 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1491 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6404 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4913 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4913 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       562 |       617 |       631 |       643 |       653 |       678 |       712 |      1499 |
|                  jbird                   |       112 |       116 |       123 |       127 |       129 |       137 |       158 |      6347 |
|                    Δ                     |      -450 |      -501 |      -508 |      -516 |      -524 |      -541 |      -554 |      4848 |
|              Improvement %               |        80 |        81 |        81 |        80 |        80 |        80 |        78 |      4848 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       564 |       618 |       633 |       644 |       655 |       679 |       716 |      1499 |
|                  jbird                   |       113 |       118 |       124 |       128 |       130 |       140 |       160 |      6347 |
|                    Δ                     |      -451 |      -500 |      -509 |      -516 |      -525 |      -539 |      -556 |      4848 |
|              Improvement %               |        80 |        81 |        80 |        80 |        80 |        79 |        78 |      4848 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1778 |      1622 |      1586 |      1557 |      1533 |      1476 |      1405 |      1499 |
|                  jbird                   |      8929 |      8615 |      8131 |      7895 |      7783 |      7275 |      6329 |      6347 |
|                    Δ                     |      7151 |      6993 |      6545 |      6338 |      6250 |      5799 |      4924 |      4848 |
|              Improvement %               |       402 |       431 |       413 |       407 |       408 |       393 |       350 |      4848 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        66 |       102 |       138 |       160 |       173 |       173 |      1499 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      6347 |
|                    Δ                     |         0 |       -37 |       -73 |      -109 |      -131 |      -144 |      -144 |      4848 |
|              Improvement %               |         0 |        56 |        72 |        79 |        82 |        83 |        83 |      4848 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1499 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6347 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4848 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4848 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1499 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6347 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4848 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4848 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       144 |       148 |       152 |       163 |       166 |       176 |       194 |      5375 |
|                  jbird                   |        47 |        48 |        48 |        53 |        53 |        60 |        74 |     12402 |
|                    Δ                     |       -97 |      -100 |      -104 |      -110 |      -113 |      -116 |      -120 |      7027 |
|              Improvement %               |        67 |        68 |        68 |        67 |        68 |        66 |        62 |      7027 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       145 |       150 |       153 |       164 |       167 |       178 |       200 |      5375 |
|                  jbird                   |        48 |        49 |        50 |        54 |        55 |        61 |        78 |     12402 |
|                    Δ                     |       -97 |      -101 |      -103 |      -110 |      -112 |      -117 |      -122 |      7027 |
|              Improvement %               |        67 |        67 |        67 |        67 |        67 |        66 |        61 |      7027 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      6940 |      6751 |      6591 |      6151 |      6043 |      5695 |      5154 |      5375 |
|                  jbird                   |     21296 |     21023 |     20735 |     18911 |     18767 |     16815 |     13445 |     12402 |
|                    Δ                     |     14356 |     14272 |     14144 |     12760 |     12724 |     11120 |      8291 |      7027 |
|              Improvement %               |       207 |       211 |       215 |       207 |       211 |       195 |       161 |      7027 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        35 |        42 |        48 |        52 |        55 |        55 |      5375 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     12402 |
|                    Δ                     |         0 |        -6 |       -13 |       -19 |       -23 |       -26 |       -26 |      7027 |
|              Improvement %               |         0 |        17 |        31 |        40 |        44 |        47 |        47 |      7027 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5375 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12402 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      7027 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      7027 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2963 |      2963 |      2966 |      2972 |      2976 |      3066 |      3084 |      5375 |
|                  jbird                   |      1307 |      1308 |      1308 |      1308 |      1308 |      1325 |      1351 |     12402 |
|                    Δ                     |     -1656 |     -1655 |     -1658 |     -1664 |     -1668 |     -1741 |     -1733 |      7027 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        57 |        56 |      7027 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1861 |      2015 |      2029 |      2050 |      2085 |      2189 |      2238 |       484 |
|                  jbird                   |        86 |        90 |        96 |        98 |        99 |       107 |       155 |      7964 |
|                    Δ                     |     -1775 |     -1925 |     -1933 |     -1952 |     -1986 |     -2082 |     -2083 |      7480 |
|              Improvement %               |        95 |        96 |        95 |        95 |        95 |        95 |        93 |      7480 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1862 |      2017 |      2031 |      2054 |      2087 |      2198 |      2239 |       484 |
|                  jbird                   |        87 |        91 |        98 |       100 |       100 |       109 |       159 |      7964 |
|                    Δ                     |     -1775 |     -1926 |     -1933 |     -1954 |     -1987 |     -2089 |     -2080 |      7480 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        93 |      7480 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       537 |       496 |       493 |       488 |       480 |       457 |       447 |       484 |
|                  jbird                   |     11656 |     11127 |     10399 |     10183 |     10151 |      9391 |      6433 |      7964 |
|                    Δ                     |     11119 |     10631 |      9906 |      9695 |      9671 |      8934 |      5986 |      7480 |
|              Improvement %               |      2071 |      2143 |      2009 |      1987 |      2015 |      1955 |      1339 |      7480 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        39 |        48 |        57 |        63 |        66 |        66 |       484 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      7964 |
|                    Δ                     |         0 |       -10 |       -19 |       -28 |       -34 |       -37 |       -37 |      7480 |
|              Improvement %               |         0 |        26 |        40 |        49 |        54 |        56 |        56 |      7480 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       484 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7964 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7480 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7480 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        50 |        50 |        50 |        50 |        52 |        53 |       484 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7964 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -49 |       -50 |      7480 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      7480 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1129 |      1214 |      1226 |      1241 |      1329 |      1441 |      1545 |       786 |
|                  jbird                   |        51 |        54 |        58 |        59 |        59 |        66 |       134 |     11397 |
|                    Δ                     |     -1078 |     -1160 |     -1168 |     -1182 |     -1270 |     -1375 |     -1411 |     10611 |
|              Improvement %               |        95 |        96 |        95 |        95 |        96 |        95 |        91 |     10611 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1130 |      1217 |      1228 |      1243 |      1330 |      1443 |      1548 |       786 |
|                  jbird                   |        52 |        55 |        60 |        60 |        61 |        69 |       137 |     11397 |
|                    Δ                     |     -1078 |     -1162 |     -1168 |     -1183 |     -1269 |     -1374 |     -1411 |     10611 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        91 |     10611 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       886 |       824 |       816 |       806 |       753 |       694 |       647 |       786 |
|                  jbird                   |     19560 |     18703 |     17247 |     17071 |     16943 |     15119 |      7481 |     11397 |
|                    Δ                     |     18674 |     17879 |     16431 |     16265 |     16190 |     14425 |      6834 |     10611 |
|              Improvement %               |      2108 |      2170 |      2014 |      2018 |      2150 |      2079 |      1056 |     10611 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |        48 |        66 |        84 |        95 |       102 |       102 |       786 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     11397 |
|                    Δ                     |         0 |       -19 |       -37 |       -55 |       -66 |       -73 |       -73 |     10611 |
|              Improvement %               |         0 |        40 |        56 |        65 |        69 |        72 |        72 |     10611 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       786 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11397 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10611 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10611 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        31 |        31 |       786 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11397 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -29 |       -29 |     10611 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |     10611 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        96 |       100 |       106 |       110 |       112 |       120 |       143 |      7159 |
|                  jbird                   |        27 |        27 |        30 |        30 |        33 |        36 |        59 |     15886 |
|                    Δ                     |       -69 |       -73 |       -76 |       -80 |       -79 |       -84 |       -84 |      8727 |
|              Improvement %               |        72 |        73 |        72 |        73 |        71 |        70 |        59 |      8727 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        97 |       101 |       108 |       112 |       114 |       122 |       146 |      7159 |
|                  jbird                   |        28 |        29 |        31 |        32 |        34 |        37 |        59 |     15886 |
|                    Δ                     |       -69 |       -72 |       -77 |       -80 |       -80 |       -85 |       -87 |      8727 |
|              Improvement %               |        71 |        71 |        71 |        71 |        70 |        70 |        60 |      8727 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10439 |     10015 |      9439 |      9087 |      8935 |      8351 |      6983 |      7159 |
|                  jbird                   |     37500 |     36767 |     33343 |     33119 |     30543 |     28143 |     16985 |     15886 |
|                    Δ                     |     27061 |     26752 |     23904 |     24032 |     21608 |     19792 |     10002 |      8727 |
|              Improvement %               |       259 |       267 |       253 |       264 |       242 |       237 |       143 |      8727 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        28 |       140 |       252 |       364 |       432 |       472 |       478 |      7159 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     15886 |
|                    Δ                     |         0 |      -111 |      -223 |      -335 |      -403 |      -443 |      -449 |      8727 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |      8727 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      7159 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15886 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8727 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8727 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2547 |      2564 |      2570 |      2576 |      2587 |      2634 |      2747 |      7159 |
|                  jbird                   |       859 |       859 |       859 |       859 |       859 |       860 |       914 |     15886 |
|                    Δ                     |     -1688 |     -1705 |     -1711 |     -1717 |     -1728 |     -1774 |     -1833 |      8727 |
|              Improvement %               |        66 |        66 |        67 |        67 |        67 |        67 |        67 |      8727 |

<p>
</details>

