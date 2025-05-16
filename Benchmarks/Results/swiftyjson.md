# JBird vs. SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9474 |      9912 |      9961 |     10076 |     10134 |     10297 |     10751 |       100 |
|                  jbird                   |      1894 |      2080 |      2107 |      2124 |      2150 |      2697 |      3532 |       465 |
|                    Δ                     |     -7580 |     -7832 |     -7854 |     -7952 |     -7984 |     -7600 |     -7219 |       365 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        74 |        67 |       365 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9475 |      9912 |      9961 |     10084 |     10142 |     10297 |     10757 |       100 |
|                  jbird                   |      1895 |      2083 |      2109 |      2128 |      2152 |      2699 |      3538 |       465 |
|                    Δ                     |     -7580 |     -7829 |     -7852 |     -7956 |     -7990 |     -7598 |     -7219 |       365 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        74 |        67 |       365 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       106 |       101 |       100 |        99 |        99 |        93 |        93 |       100 |
|                  jbird                   |       528 |       481 |       475 |       471 |       465 |       371 |       283 |       465 |
|                    Δ                     |       422 |       380 |       375 |       372 |       366 |       278 |       190 |       365 |
|              Improvement %               |       398 |       376 |       375 |       376 |       370 |       299 |       204 |       365 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        64 |       100 |       137 |       159 |       171 |       174 |       100 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       465 |
|                    Δ                     |         2 |       -33 |       -69 |      -106 |      -128 |      -140 |      -143 |       365 |
|              Improvement %               |        -7 |        52 |        69 |        77 |        81 |        82 |        82 |       365 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       100 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       465 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       365 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       365 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       242 |       242 |       242 |       242 |       242 |       247 |       251 |       100 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        48 |        49 |       465 |
|                    Δ                     |      -194 |      -194 |      -194 |      -194 |      -194 |      -199 |      -202 |       365 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        80 |       365 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9280 |      9708 |      9773 |      9847 |      9921 |     10207 |     10431 |       102 |
|                  jbird                   |      1910 |      2051 |      2068 |      2097 |      2152 |      2193 |      2223 |       473 |
|                    Δ                     |     -7370 |     -7657 |     -7705 |     -7750 |     -7769 |     -8014 |     -8208 |       371 |
|              Improvement %               |        79 |        79 |        79 |        79 |        78 |        79 |        79 |       371 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9270 |      9716 |      9781 |      9847 |      9921 |     10215 |     10434 |       102 |
|                  jbird                   |      1912 |      2053 |      2071 |      2099 |      2154 |      2195 |      2225 |       473 |
|                    Δ                     |     -7358 |     -7663 |     -7710 |     -7748 |     -7767 |     -8020 |     -8209 |       371 |
|              Improvement %               |        79 |        79 |        79 |        79 |        78 |        79 |        79 |       371 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       108 |       103 |       102 |       102 |       101 |        98 |        96 |       102 |
|                  jbird                   |       524 |       488 |       484 |       477 |       465 |       456 |       450 |       473 |
|                    Δ                     |       416 |       385 |       382 |       375 |       364 |       358 |       354 |       371 |
|              Improvement %               |       385 |       374 |       375 |       368 |       360 |       365 |       369 |       371 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        27 |        66 |       102 |       139 |       161 |       174 |       176 |       102 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       473 |
|                    Δ                     |         2 |       -35 |       -71 |      -108 |      -130 |      -143 |      -145 |       371 |
|              Improvement %               |        -7 |        53 |        70 |        78 |        81 |        82 |        82 |       371 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       102 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       473 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       371 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       371 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       237 |       238 |       238 |       238 |       238 |       243 |       250 |       102 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       473 |
|                    Δ                     |      -188 |      -189 |      -189 |      -189 |      -189 |      -193 |      -200 |       371 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        79 |        80 |       371 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2356 |      2488 |      2511 |      2540 |      2566 |      2630 |      2683 |       392 |
|                  jbird                   |       464 |       504 |       510 |       525 |       530 |       544 |       616 |      1813 |
|                    Δ                     |     -1892 |     -1984 |     -2001 |     -2015 |     -2036 |     -2086 |     -2067 |      1421 |
|              Improvement %               |        80 |        80 |        80 |        79 |        79 |        79 |        77 |      1421 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2358 |      2490 |      2513 |      2544 |      2568 |      2634 |      2686 |       392 |
|                  jbird                   |       466 |       506 |       512 |       527 |       532 |       547 |       620 |      1813 |
|                    Δ                     |     -1892 |     -1984 |     -2001 |     -2017 |     -2036 |     -2087 |     -2066 |      1421 |
|              Improvement %               |        80 |        80 |        80 |        79 |        79 |        79 |        77 |      1421 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       424 |       402 |       398 |       394 |       390 |       380 |       373 |       392 |
|                  jbird                   |      2155 |      1983 |      1962 |      1905 |      1886 |      1839 |      1623 |      1813 |
|                    Δ                     |      1731 |      1581 |      1564 |      1511 |      1496 |      1459 |      1250 |      1421 |
|              Improvement %               |       408 |       393 |       393 |       384 |       384 |       384 |       335 |      1421 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        62 |        98 |       134 |       156 |       169 |       171 |       392 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1813 |
|                    Δ                     |         0 |       -35 |       -71 |      -107 |      -129 |      -142 |      -144 |      1421 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |      1421 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       392 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1813 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1421 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1421 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        60 |        60 |        60 |        60 |        63 |        63 |       392 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1813 |
|                    Δ                     |       -48 |       -48 |       -48 |       -48 |       -48 |       -51 |       -51 |      1421 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1421 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2236 |      2374 |      2423 |      2454 |      2478 |      2628 |      3063 |       408 |
|                  jbird                   |       475 |       511 |       516 |       525 |       534 |       553 |       597 |      1796 |
|                    Δ                     |     -1761 |     -1863 |     -1907 |     -1929 |     -1944 |     -2075 |     -2466 |      1388 |
|              Improvement %               |        79 |        78 |        79 |        79 |        78 |        79 |        81 |      1388 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2238 |      2376 |      2425 |      2456 |      2480 |      2630 |      3010 |       408 |
|                  jbird                   |       477 |       513 |       518 |       527 |       536 |       555 |       601 |      1796 |
|                    Δ                     |     -1761 |     -1863 |     -1907 |     -1929 |     -1944 |     -2075 |     -2409 |      1388 |
|              Improvement %               |        79 |        78 |        79 |        79 |        78 |        79 |        80 |      1388 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       447 |       422 |       413 |       408 |       404 |       381 |       327 |       408 |
|                  jbird                   |      2104 |      1958 |      1937 |      1905 |      1874 |      1808 |      1674 |      1796 |
|                    Δ                     |      1657 |      1536 |      1524 |      1497 |      1470 |      1427 |      1347 |      1388 |
|              Improvement %               |       371 |       364 |       369 |       367 |       364 |       375 |       412 |      1388 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       101 |       139 |       161 |       176 |       176 |       408 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1796 |
|                    Δ                     |         0 |       -37 |       -74 |      -112 |      -134 |      -149 |      -149 |      1388 |
|              Improvement %               |         0 |        58 |        73 |        81 |        83 |        85 |        85 |      1388 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       408 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1796 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1388 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1388 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        59 |        59 |        59 |        59 |        59 |        62 |        62 |       408 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1796 |
|                    Δ                     |       -47 |       -47 |       -47 |       -47 |       -47 |       -50 |       -49 |      1388 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        79 |      1388 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4404 |      4698 |      4727 |      4755 |      4792 |      5083 |      5299 |       210 |
|                  jbird                   |       941 |      1011 |      1020 |      1029 |      1038 |      1064 |      1136 |       945 |
|                    Δ                     |     -3463 |     -3687 |     -3707 |     -3726 |     -3754 |     -4019 |     -4163 |       735 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        79 |        79 |       735 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4408 |      4702 |      4731 |      4760 |      4792 |      5095 |      5296 |       210 |
|                  jbird                   |       942 |      1013 |      1022 |      1031 |      1040 |      1067 |      1140 |       945 |
|                    Δ                     |     -3466 |     -3689 |     -3709 |     -3729 |     -3752 |     -4028 |     -4156 |       735 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        79 |        78 |       735 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       227 |       213 |       212 |       210 |       209 |       197 |       189 |       210 |
|                  jbird                   |      1063 |       989 |       981 |       972 |       964 |       941 |       880 |       945 |
|                    Δ                     |       836 |       776 |       769 |       762 |       755 |       744 |       691 |       735 |
|              Improvement %               |       368 |       364 |       363 |       363 |       361 |       378 |       366 |       735 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        66 |       103 |       142 |       165 |       178 |       180 |       210 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       945 |
|                    Δ                     |         0 |       -38 |       -75 |      -114 |      -137 |      -150 |      -152 |       735 |
|              Improvement %               |         0 |        58 |        73 |        80 |        83 |        84 |        84 |       735 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       210 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       945 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       735 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       735 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       117 |       117 |       117 |       117 |       118 |       122 |       124 |       210 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       945 |
|                    Δ                     |       -93 |       -93 |       -93 |       -93 |       -94 |       -98 |       -99 |       735 |
|              Improvement %               |        79 |        79 |        79 |        79 |        80 |        80 |        80 |       735 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4544 |      4862 |      4903 |      4948 |      4981 |      5194 |      5277 |       203 |
|                  jbird                   |       955 |      1036 |      1055 |      1068 |      1076 |      1100 |      1198 |       917 |
|                    Δ                     |     -3589 |     -3826 |     -3848 |     -3880 |     -3905 |     -4094 |     -4079 |       714 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        79 |        77 |       714 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4546 |      4862 |      4903 |      4948 |      4981 |      5194 |      5279 |       203 |
|                  jbird                   |       956 |      1037 |      1056 |      1070 |      1078 |      1102 |      1202 |       917 |
|                    Δ                     |     -3590 |     -3825 |     -3847 |     -3878 |     -3903 |     -4092 |     -4077 |       714 |
|              Improvement %               |        79 |        79 |        78 |        78 |        78 |        79 |        77 |       714 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       220 |       206 |       204 |       202 |       201 |       193 |       189 |       203 |
|                  jbird                   |      1047 |       966 |       949 |       937 |       929 |       910 |       835 |       917 |
|                    Δ                     |       827 |       760 |       745 |       735 |       728 |       717 |       646 |       714 |
|              Improvement %               |       376 |       369 |       365 |       364 |       362 |       372 |       342 |       714 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        26 |        64 |       100 |       139 |       161 |       174 |       175 |       203 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       917 |
|                    Δ                     |         0 |       -36 |       -72 |      -111 |      -133 |      -146 |      -147 |       714 |
|              Improvement %               |         0 |        56 |        72 |        80 |        83 |        84 |        84 |       714 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       203 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       917 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       714 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       714 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       118 |       118 |       119 |       119 |       125 |       125 |       203 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       917 |
|                    Δ                     |       -94 |       -94 |       -94 |       -95 |       -95 |      -100 |      -100 |       714 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       714 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        48 |        48 |        48 |        49 |        49 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        93 |
|                    Δ                     |       -37 |       -37 |       -37 |       -37 |       -37 |       -37 |       -37 |        72 |
|              Improvement %               |        79 |        77 |        77 |        77 |        77 |        76 |        76 |        72 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        48 |        48 |        48 |        48 |        49 |        49 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        93 |
|                    Δ                     |       -37 |       -37 |       -37 |       -37 |       -37 |       -37 |       -37 |        72 |
|              Improvement %               |        79 |        77 |        77 |        77 |        77 |        76 |        76 |        72 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        21 |
|                  jbird                   |        99 |        95 |        94 |        93 |        90 |        86 |        86 |        93 |
|                    Δ                     |        78 |        74 |        73 |        72 |        69 |        65 |        65 |        72 |
|              Improvement %               |       371 |       352 |       348 |       343 |       329 |       310 |       310 |        72 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        85 |       120 |       156 |       180 |       192 |       192 |        21 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        93 |
|                    Δ                     |       -18 |       -33 |       -68 |      -104 |      -128 |      -140 |      -140 |        72 |
|              Improvement %               |        39 |        39 |        57 |        67 |        71 |        73 |        73 |        72 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        93 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        72 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        72 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1180 |      1182 |      1183 |      1184 |      1187 |      1189 |      1189 |        21 |
|                  jbird                   |       240 |       243 |       243 |       243 |       245 |       255 |       255 |        93 |
|                    Δ                     |      -940 |      -939 |      -940 |      -941 |      -942 |      -934 |      -934 |        72 |
|              Improvement %               |        80 |        79 |        79 |        79 |        79 |        79 |        79 |        72 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        50 |        50 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |       -38 |       -38 |       -38 |       -39 |       -39 |       -38 |       -38 |        70 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        76 |        76 |        70 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        49 |        49 |        50 |        50 |        51 |        51 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |       -38 |       -38 |       -38 |       -39 |       -39 |       -39 |       -39 |        70 |
|              Improvement %               |        79 |        78 |        78 |        78 |        78 |        76 |        76 |        70 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        20 |        20 |        20 |        20 |        20 |        20 |        21 |
|                  jbird                   |        97 |        93 |        93 |        92 |        90 |        84 |        84 |        91 |
|                    Δ                     |        76 |        73 |        73 |        72 |        70 |        64 |        64 |        70 |
|              Improvement %               |       362 |       365 |       365 |       360 |       350 |       320 |       320 |        70 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        85 |       120 |       158 |       180 |       193 |       193 |        21 |
|                  jbird                   |        28 |        52 |        52 |        52 |        53 |        53 |        53 |        91 |
|                    Δ                     |       -20 |       -33 |       -68 |      -106 |      -127 |      -140 |      -140 |        70 |
|              Improvement %               |        42 |        39 |        57 |        67 |        71 |        73 |        73 |        70 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        21 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        91 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        70 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        70 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1188 |      1190 |      1190 |      1191 |      1192 |      1197 |      1197 |        21 |
|                  jbird                   |       246 |       247 |       247 |       248 |       248 |       259 |       259 |        91 |
|                    Δ                     |      -942 |      -943 |      -943 |      -943 |      -944 |      -938 |      -938 |        70 |
|              Improvement %               |        79 |        79 |        79 |        79 |        79 |        78 |        78 |        70 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       560 |       602 |       617 |       629 |       636 |       666 |       754 |      1530 |
|                  jbird                   |       116 |       121 |       128 |       132 |       133 |       142 |       184 |      6131 |
|                    Δ                     |      -444 |      -481 |      -489 |      -497 |      -503 |      -524 |      -570 |      4601 |
|              Improvement %               |        79 |        80 |        79 |        79 |        79 |        79 |        76 |      4601 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       561 |       604 |       620 |       631 |       638 |       668 |       739 |      1530 |
|                  jbird                   |       118 |       123 |       130 |       133 |       135 |       144 |       188 |      6131 |
|                    Δ                     |      -443 |      -481 |      -490 |      -498 |      -503 |      -524 |      -551 |      4601 |
|              Improvement %               |        79 |        80 |        79 |        79 |        79 |        78 |        75 |      4601 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1786 |      1662 |      1620 |      1590 |      1572 |      1502 |      1327 |      1530 |
|                  jbird                   |      8587 |      8255 |      7827 |      7607 |      7531 |      7035 |      5437 |      6131 |
|                    Δ                     |      6801 |      6593 |      6207 |      6017 |      5959 |      5533 |      4110 |      4601 |
|              Improvement %               |       381 |       397 |       383 |       378 |       379 |       368 |       310 |      4601 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       136 |       159 |       172 |       175 |      1530 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6131 |
|                    Δ                     |         0 |       -37 |       -74 |      -111 |      -134 |      -147 |      -150 |      4601 |
|              Improvement %               |         0 |        60 |        75 |        82 |        84 |        85 |        86 |      4601 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1530 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6131 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4601 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4601 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1530 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6131 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4601 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4601 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       560 |       609 |       617 |       624 |       631 |       658 |       691 |      1528 |
|                  jbird                   |       118 |       125 |       130 |       134 |       136 |       144 |       180 |      6039 |
|                    Δ                     |      -442 |      -484 |      -487 |      -490 |      -495 |      -514 |      -511 |      4511 |
|              Improvement %               |        79 |        79 |        79 |        79 |        78 |        78 |        74 |      4511 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       562 |       611 |       619 |       626 |       634 |       659 |       692 |      1528 |
|                  jbird                   |       120 |       126 |       132 |       136 |       138 |       147 |       184 |      6039 |
|                    Δ                     |      -442 |      -485 |      -487 |      -490 |      -496 |      -512 |      -508 |      4511 |
|              Improvement %               |        79 |        79 |        79 |        78 |        78 |        78 |        73 |      4511 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1785 |      1642 |      1621 |      1602 |      1584 |      1519 |      1447 |      1528 |
|                  jbird                   |      8439 |      8035 |      7671 |      7475 |      7339 |      6931 |      5543 |      6039 |
|                    Δ                     |      6654 |      6393 |      6050 |      5873 |      5755 |      5412 |      4096 |      4511 |
|              Improvement %               |       373 |       389 |       373 |       367 |       363 |       356 |       283 |      4511 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        62 |        99 |       136 |       159 |       172 |       174 |      1528 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6039 |
|                    Δ                     |         0 |       -37 |       -74 |      -111 |      -134 |      -147 |      -149 |      4511 |
|              Improvement %               |         0 |        60 |        75 |        82 |        84 |        85 |        86 |      4511 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1528 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6039 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4511 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4511 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1528 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6039 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4511 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4511 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1578 |      1696 |      1717 |      1732 |      1748 |      1879 |      1917 |       572 |
|                  jbird                   |        88 |        94 |        99 |       101 |       103 |       110 |       162 |      7757 |
|                    Δ                     |     -1490 |     -1602 |     -1618 |     -1631 |     -1645 |     -1769 |     -1755 |      7185 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        92 |      7185 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1580 |      1699 |      1718 |      1734 |      1750 |      1887 |      1918 |       572 |
|                  jbird                   |        90 |        95 |       101 |       103 |       105 |       113 |       166 |      7757 |
|                    Δ                     |     -1490 |     -1604 |     -1617 |     -1631 |     -1645 |     -1774 |     -1752 |      7185 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        91 |      7185 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       634 |       590 |       583 |       578 |       572 |       532 |       522 |       572 |
|                  jbird                   |     11305 |     10703 |     10111 |      9927 |      9711 |      9111 |      6182 |      7757 |
|                    Δ                     |     10671 |     10113 |      9528 |      9349 |      9139 |      8579 |      5660 |      7185 |
|              Improvement %               |      1683 |      1714 |      1634 |      1617 |      1598 |      1613 |      1084 |      7185 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        37 |        48 |        59 |        65 |        69 |        69 |       572 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7757 |
|                    Δ                     |         0 |       -11 |       -22 |       -33 |       -39 |       -43 |       -43 |      7185 |
|              Improvement %               |         0 |        30 |        46 |        56 |        60 |        62 |        62 |      7185 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       572 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7757 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7185 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7185 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        45 |        45 |        45 |        45 |        45 |        48 |        48 |       572 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7757 |
|                    Δ                     |       -42 |       -42 |       -42 |       -42 |       -42 |       -45 |       -45 |      7185 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7185 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1134 |      1211 |      1224 |      1238 |      1250 |      1345 |      1392 |       794 |
|                  jbird                   |        56 |        61 |        64 |        66 |        68 |        74 |       144 |     10556 |
|                    Δ                     |     -1078 |     -1150 |     -1160 |     -1172 |     -1182 |     -1271 |     -1248 |      9762 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        90 |      9762 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1135 |      1213 |      1227 |      1240 |      1252 |      1347 |      1394 |       794 |
|                  jbird                   |        58 |        62 |        65 |        68 |        70 |        77 |       150 |     10556 |
|                    Δ                     |     -1077 |     -1151 |     -1162 |     -1172 |     -1182 |     -1270 |     -1244 |      9762 |
|              Improvement %               |        95 |        95 |        95 |        95 |        94 |        94 |        89 |      9762 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       882 |       826 |       817 |       808 |       800 |       744 |       718 |       794 |
|                  jbird                   |     17897 |     16527 |     15751 |     15175 |     14783 |     13439 |      6948 |     10556 |
|                    Δ                     |     17015 |     15701 |     14934 |     14367 |     13983 |     12695 |      6230 |      9762 |
|              Improvement %               |      1929 |      1901 |      1828 |      1778 |      1748 |      1706 |       868 |      9762 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        45 |        63 |        81 |        92 |        99 |       100 |       794 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     10556 |
|                    Δ                     |         0 |       -20 |       -37 |       -55 |       -66 |       -73 |       -74 |      9762 |
|              Improvement %               |         0 |        44 |        59 |        68 |        72 |        74 |        74 |      9762 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       794 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10556 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      9762 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9762 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        31 |        31 |       794 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10556 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -29 |       -29 |      9762 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      9762 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       547 |       588 |       594 |       603 |       621 |       661 |       696 |      1572 |
|                  jbird                   |        73 |        79 |        85 |        90 |        97 |       105 |       193 |      8253 |
|                    Δ                     |      -474 |      -509 |      -509 |      -513 |      -524 |      -556 |      -503 |      6681 |
|              Improvement %               |        87 |        87 |        86 |        85 |        84 |        84 |        72 |      6681 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       548 |       590 |       596 |       605 |       622 |       663 |       698 |      1572 |
|                  jbird                   |        75 |        80 |        87 |        92 |        99 |       107 |       197 |      8253 |
|                    Δ                     |      -473 |      -510 |      -509 |      -513 |      -523 |      -556 |      -501 |      6681 |
|              Improvement %               |        86 |        86 |        85 |        85 |        84 |        84 |        72 |      6681 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1829 |      1701 |      1682 |      1658 |      1613 |      1513 |      1437 |      1572 |
|                  jbird                   |     13675 |     12719 |     11767 |     11079 |     10311 |      9527 |      5188 |      8253 |
|                    Δ                     |     11846 |     11018 |     10085 |      9421 |      8698 |      8014 |      3751 |      6681 |
|              Improvement %               |       648 |       648 |       600 |       568 |       539 |       530 |       261 |      6681 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        25 |        40 |        56 |        72 |        81 |        87 |        88 |      1572 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      8253 |
|                    Δ                     |         0 |       -15 |       -31 |       -47 |       -56 |       -62 |       -63 |      6681 |
|              Improvement %               |         0 |        38 |        55 |        65 |        69 |        71 |        72 |      6681 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5760 |      5763 |      5763 |      5763 |      5763 |      5763 |      5763 |      1572 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      8253 |
|                    Δ                     |     -5711 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |     -5714 |      6681 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6681 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1572 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      8253 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |      6681 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        93 |      6681 |

<p>
</details>

