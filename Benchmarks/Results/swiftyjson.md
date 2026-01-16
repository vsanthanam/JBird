## JBird vs SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        12 |        12 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       477 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       -10 |       378 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        83 |        83 |       378 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        12 |        12 |        99 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       477 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       -10 |       378 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        83 |        83 |       378 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       102 |       101 |       100 |        98 |        97 |        83 |        83 |        99 |
|                  jbird                   |       519 |       494 |       488 |       482 |       476 |       443 |       437 |       477 |
|                    Δ                     |       417 |       393 |       388 |       384 |       379 |       360 |       354 |       378 |
|              Improvement %               |       409 |       389 |       388 |       392 |       391 |       434 |       427 |       378 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        71 |       106 |       144 |       165 |       178 |       178 |        99 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       477 |
|                    Δ                     |         2 |       -33 |       -68 |      -106 |      -127 |      -140 |      -140 |       378 |
|              Improvement %               |        -6 |        46 |        64 |        74 |        77 |        79 |        79 |       378 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        99 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       477 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       378 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       378 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       240 |       240 |       240 |       240 |       241 |       267 |       267 |        99 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        47 |        48 |       477 |
|                    Δ                     |      -194 |      -194 |      -194 |      -194 |      -195 |      -220 |      -219 |       378 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        82 |       378 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        12 |        12 |        97 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       474 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |       -10 |       -10 |       377 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        83 |        83 |       377 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        11 |        12 |        12 |        97 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       474 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |       -10 |       -10 |       377 |
|              Improvement %               |        80 |        80 |        80 |        80 |        82 |        83 |        83 |       377 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       100 |        98 |        97 |        96 |        95 |        84 |        84 |        97 |
|                  jbird                   |       522 |       489 |       486 |       479 |       473 |       446 |       432 |       474 |
|                    Δ                     |       422 |       391 |       389 |       383 |       378 |       362 |       348 |       377 |
|              Improvement %               |       422 |       399 |       401 |       399 |       398 |       431 |       414 |       377 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        71 |       106 |       141 |       163 |       175 |       175 |        97 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       474 |
|                    Δ                     |         2 |       -33 |       -68 |      -103 |      -125 |      -137 |      -137 |       377 |
|              Improvement %               |        -6 |        46 |        64 |        73 |        77 |        78 |        78 |       377 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        97 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       474 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       377 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       377 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       241 |       241 |       241 |       242 |       242 |       255 |       255 |        97 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       474 |
|                    Δ                     |      -194 |      -194 |      -194 |      -195 |      -195 |      -208 |      -207 |       377 |
|              Improvement %               |        80 |        80 |        80 |        81 |        81 |        82 |        81 |       377 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2361 |      2556 |      2589 |      2615 |      2677 |      2861 |      2904 |       380 |
|                  jbird                   |       449 |       505 |       510 |       515 |       523 |       564 |     18615 |      1784 |
|                    Δ                     |     -1912 |     -2051 |     -2079 |     -2100 |     -2154 |     -2297 |     15711 |      1404 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |      -541 |      1404 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2362 |      2558 |      2589 |      2619 |      2679 |      2861 |      2911 |       380 |
|                  jbird                   |       450 |       506 |       511 |       517 |       525 |       566 |       624 |      1784 |
|                    Δ                     |     -1912 |     -2052 |     -2078 |     -2102 |     -2154 |     -2295 |     -2287 |      1404 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        79 |      1404 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       424 |       391 |       387 |       382 |       374 |       350 |       344 |       380 |
|                  jbird                   |      2227 |      1982 |      1962 |      1943 |      1912 |      1773 |        54 |      1784 |
|                    Δ                     |      1803 |      1591 |      1575 |      1561 |      1538 |      1423 |      -290 |      1404 |
|              Improvement %               |       425 |       407 |       407 |       409 |       411 |       407 |       -84 |      1404 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        67 |       103 |       138 |       158 |       172 |       172 |       380 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1784 |
|                    Δ                     |         0 |       -34 |       -70 |      -105 |      -125 |      -139 |      -139 |      1404 |
|              Improvement %               |         0 |        51 |        68 |        76 |        79 |        81 |        81 |      1404 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       380 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1784 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1404 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1404 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        60 |        61 |        61 |        61 |        63 |        64 |       380 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1784 |
|                    Δ                     |       -48 |       -48 |       -49 |       -49 |       -49 |       -51 |       -52 |      1404 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1404 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2298 |      2521 |      2542 |      2558 |      2578 |      2781 |      2852 |       388 |
|                  jbird                   |       459 |       510 |       515 |       522 |       532 |       604 |       661 |      1790 |
|                    Δ                     |     -1839 |     -2011 |     -2027 |     -2036 |     -2046 |     -2177 |     -2191 |      1402 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        78 |        77 |      1402 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2300 |      2525 |      2544 |      2560 |      2580 |      2789 |      2822 |       388 |
|                  jbird                   |       461 |       512 |       517 |       524 |       534 |       606 |       663 |      1790 |
|                    Δ                     |     -1839 |     -2013 |     -2027 |     -2036 |     -2046 |     -2183 |     -2159 |      1402 |
|              Improvement %               |        80 |        80 |        80 |        80 |        79 |        78 |        77 |      1402 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       435 |       397 |       394 |       391 |       388 |       360 |       351 |       388 |
|                  jbird                   |      2177 |      1960 |      1941 |      1915 |      1881 |      1656 |      1512 |      1790 |
|                    Δ                     |      1742 |      1563 |      1547 |      1524 |      1493 |      1296 |      1161 |      1402 |
|              Improvement %               |       400 |       394 |       393 |       390 |       385 |       360 |       331 |      1402 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        68 |       104 |       140 |       162 |       175 |       175 |       388 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1790 |
|                    Δ                     |         0 |       -35 |       -71 |      -107 |      -129 |      -142 |      -142 |      1402 |
|              Improvement %               |         0 |        51 |        68 |        76 |        80 |        81 |        81 |      1402 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       388 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1790 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1402 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1402 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        61 |        61 |        61 |        61 |        64 |        65 |       388 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1790 |
|                    Δ                     |       -48 |       -49 |       -49 |       -49 |       -49 |       -52 |       -53 |      1402 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        82 |      1402 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4696 |      4919 |      4981 |      5030 |      5095 |      5370 |      5506 |       199 |
|                  jbird                   |       918 |      1008 |      1021 |      1032 |      1048 |      1119 |      1193 |       940 |
|                    Δ                     |     -3778 |     -3911 |     -3960 |     -3998 |     -4047 |     -4251 |     -4313 |       741 |
|              Improvement %               |        80 |        80 |        80 |        79 |        79 |        79 |        78 |       741 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4688 |      4927 |      4977 |      5034 |      5100 |      5374 |      5510 |       199 |
|                  jbird                   |       920 |      1010 |      1023 |      1034 |      1050 |      1120 |      1191 |       940 |
|                    Δ                     |     -3768 |     -3917 |     -3954 |     -4000 |     -4050 |     -4254 |     -4319 |       741 |
|              Improvement %               |        80 |        80 |        79 |        79 |        79 |        79 |        78 |       741 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       213 |       203 |       201 |       199 |       196 |       186 |       182 |       199 |
|                  jbird                   |      1090 |       992 |       979 |       969 |       954 |       894 |       838 |       940 |
|                    Δ                     |       877 |       789 |       778 |       770 |       758 |       708 |       656 |       741 |
|              Improvement %               |       412 |       389 |       387 |       387 |       387 |       381 |       360 |       741 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        69 |       106 |       142 |       164 |       178 |       178 |       199 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       940 |
|                    Δ                     |         1 |       -34 |       -71 |      -107 |      -129 |      -143 |      -143 |       741 |
|              Improvement %               |        -3 |        49 |        67 |        75 |        79 |        80 |        80 |       741 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       199 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       940 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       741 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       741 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       120 |       121 |       121 |       121 |       121 |       127 |       127 |       199 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       940 |
|                    Δ                     |       -97 |       -98 |       -98 |       -98 |       -98 |      -104 |      -103 |       741 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        81 |       741 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4854 |      5153 |      5210 |      5235 |      5276 |      5464 |      5524 |       191 |
|                  jbird                   |       934 |      1020 |      1029 |      1039 |      1056 |      1144 |      1187 |       931 |
|                    Δ                     |     -3920 |     -4133 |     -4181 |     -4196 |     -4220 |     -4320 |     -4337 |       740 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        79 |        79 |       740 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4860 |      5161 |      5210 |      5239 |      5280 |      5464 |      5529 |       191 |
|                  jbird                   |       935 |      1022 |      1031 |      1041 |      1057 |      1146 |      1189 |       931 |
|                    Δ                     |     -3925 |     -4139 |     -4179 |     -4198 |     -4223 |     -4318 |     -4340 |       740 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        79 |        78 |       740 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       206 |       194 |       192 |       191 |       190 |       183 |       181 |       191 |
|                  jbird                   |      1071 |       980 |       973 |       963 |       948 |       875 |       842 |       931 |
|                    Δ                     |       865 |       786 |       781 |       772 |       758 |       692 |       661 |       740 |
|              Improvement %               |       420 |       405 |       407 |       404 |       399 |       378 |       365 |       740 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        69 |       103 |       138 |       159 |       171 |       173 |       191 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       931 |
|                    Δ                     |         0 |       -34 |       -68 |      -103 |      -124 |      -136 |      -138 |       740 |
|              Improvement %               |         0 |        49 |        66 |        75 |        78 |        80 |        80 |       740 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       191 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       931 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       740 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       740 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       121 |       121 |       121 |       121 |       121 |       127 |       128 |       191 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        24 |        24 |       931 |
|                    Δ                     |       -98 |       -98 |       -98 |       -98 |       -98 |      -103 |      -104 |       740 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        81 |        81 |       740 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        50 |        51 |        51 |        52 |        54 |        54 |        20 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |       -40 |       -39 |       -40 |       -40 |       -41 |       -43 |       -43 |        73 |
|              Improvement %               |        80 |        78 |        78 |        78 |        79 |        80 |        80 |        73 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        51 |        51 |        51 |        52 |        54 |        54 |        20 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |       -40 |       -40 |       -40 |       -40 |       -41 |       -43 |       -43 |        73 |
|              Improvement %               |        80 |        78 |        78 |        78 |        79 |        80 |        80 |        73 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        20 |        19 |        19 |        19 |        19 |        20 |
|                  jbird                   |        98 |        95 |        94 |        93 |        92 |        90 |        90 |        93 |
|                    Δ                     |        78 |        75 |        74 |        74 |        73 |        71 |        71 |        73 |
|              Improvement %               |       390 |       375 |       370 |       389 |       384 |       374 |       374 |        73 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        54 |        82 |       123 |       156 |       181 |       191 |       191 |        20 |
|                  jbird                   |        35 |        60 |        60 |        60 |        60 |        60 |        60 |        93 |
|                    Δ                     |       -19 |       -22 |       -63 |       -96 |      -121 |      -131 |      -131 |        73 |
|              Improvement %               |        35 |        27 |        51 |        62 |        67 |        69 |        69 |        73 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       105 |       105 |       105 |       105 |       105 |       105 |       105 |        20 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        93 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |        73 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |        73 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1199 |      1201 |      1202 |      1204 |      1204 |      1240 |      1240 |        20 |
|                  jbird                   |       232 |       236 |       236 |       236 |       236 |       244 |       244 |        93 |
|                    Δ                     |      -967 |      -965 |      -966 |      -968 |      -968 |      -996 |      -996 |        73 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        80 |        73 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        51 |        52 |        53 |        53 |        53 |        54 |        54 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |       -40 |       -41 |       -42 |       -42 |       -42 |       -42 |       -42 |        69 |
|              Improvement %               |        78 |        79 |        79 |        79 |        79 |        78 |        78 |        69 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        51 |        52 |        53 |        53 |        53 |        54 |        54 |        20 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |       -40 |       -41 |       -42 |       -42 |       -42 |       -42 |       -42 |        69 |
|              Improvement %               |        78 |        79 |        79 |        79 |        79 |        78 |        78 |        69 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        19 |        19 |        19 |        19 |        19 |        19 |        20 |
|                  jbird                   |        93 |        91 |        90 |        89 |        88 |        83 |        83 |        89 |
|                    Δ                     |        73 |        72 |        71 |        70 |        69 |        64 |        64 |        69 |
|              Improvement %               |       365 |       379 |       374 |       368 |       363 |       337 |       337 |        69 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        54 |        84 |       123 |       154 |       180 |       193 |       193 |        20 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        89 |
|                    Δ                     |       -19 |       -26 |       -65 |       -96 |      -122 |      -135 |      -135 |        69 |
|              Improvement %               |        35 |        31 |        53 |        62 |        68 |        70 |        70 |        69 |

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
|                swiftyjson                |      1202 |      1203 |      1204 |      1205 |      1207 |      1213 |      1213 |        20 |
|                  jbird                   |       244 |       244 |       244 |       244 |       244 |       249 |       249 |        89 |
|                    Δ                     |      -958 |      -959 |      -960 |      -961 |      -963 |      -964 |      -964 |        69 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        79 |        69 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       565 |       644 |       652 |       660 |       674 |       729 |       803 |      1444 |
|                  jbird                   |       112 |       126 |       127 |       128 |       132 |       152 |       182 |      6055 |
|                    Δ                     |      -453 |      -518 |      -525 |      -532 |      -542 |      -577 |      -621 |      4611 |
|              Improvement %               |        80 |        80 |        81 |        81 |        80 |        79 |        77 |      4611 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       566 |       646 |       654 |       662 |       676 |       730 |       802 |      1444 |
|                  jbird                   |       114 |       127 |       128 |       130 |       134 |       154 |       173 |      6055 |
|                    Δ                     |      -452 |      -519 |      -526 |      -532 |      -542 |      -576 |      -629 |      4611 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        78 |      4611 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1770 |      1553 |      1534 |      1516 |      1484 |      1373 |      1246 |      1444 |
|                  jbird                   |      8889 |      7947 |      7879 |      7799 |      7579 |      6567 |      5505 |      6055 |
|                    Δ                     |      7119 |      6394 |      6345 |      6283 |      6095 |      5194 |      4259 |      4611 |
|              Improvement %               |       402 |       412 |       414 |       414 |       411 |       378 |       342 |      4611 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        66 |       101 |       137 |       157 |       170 |       172 |      1444 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      6055 |
|                    Δ                     |         0 |       -34 |       -69 |      -105 |      -125 |      -138 |      -140 |      4611 |
|              Improvement %               |         0 |        52 |        68 |        77 |        80 |        81 |        81 |      4611 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1444 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6055 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4611 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4611 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1444 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6055 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4611 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4611 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       573 |       636 |       642 |       650 |       667 |       731 |       971 |      1460 |
|                  jbird                   |       116 |       129 |       130 |       131 |       134 |       150 |       185 |      5964 |
|                    Δ                     |      -457 |      -507 |      -512 |      -519 |      -533 |      -581 |      -786 |      4504 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        81 |      4504 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       575 |       637 |       644 |       652 |       668 |       734 |       963 |      1460 |
|                  jbird                   |       117 |       130 |       131 |       133 |       136 |       151 |       193 |      5964 |
|                    Δ                     |      -458 |      -507 |      -513 |      -519 |      -532 |      -583 |      -770 |      4504 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        79 |        80 |      4504 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1745 |      1573 |      1559 |      1539 |      1501 |      1369 |      1030 |      1460 |
|                  jbird                   |      8649 |      7775 |      7711 |      7619 |      7447 |      6683 |      5394 |      5964 |
|                    Δ                     |      6904 |      6202 |      6152 |      6080 |      5946 |      5314 |      4364 |      4504 |
|              Improvement %               |       396 |       394 |       395 |       395 |       396 |       388 |       424 |      4504 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        68 |       103 |       138 |       159 |       173 |       173 |      1460 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      5964 |
|                    Δ                     |        -1 |       -36 |       -71 |      -106 |      -127 |      -141 |      -141 |      4504 |
|              Improvement %               |         3 |        53 |        69 |        77 |        80 |        82 |        82 |      4504 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1460 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5964 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4504 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4504 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        17 |      1460 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      5964 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -14 |      4504 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        82 |      4504 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2849 |      3000 |      3033 |      3076 |      3158 |      3445 |      3617 |       324 |
|                  jbird                   |       114 |       128 |       130 |       132 |       136 |       151 |     21862 |      5995 |
|                    Δ                     |     -2735 |     -2872 |     -2903 |     -2944 |     -3022 |     -3294 |     18245 |      5671 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |      -504 |      5671 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2854 |      3002 |      3035 |      3078 |      3160 |      3453 |      3620 |       324 |
|                  jbird                   |       116 |       129 |       132 |       133 |       137 |       153 |       278 |      5995 |
|                    Δ                     |     -2738 |     -2873 |     -2903 |     -2945 |     -3023 |     -3300 |     -3342 |      5671 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        92 |      5671 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       351 |       333 |       330 |       325 |       317 |       290 |       276 |       324 |
|                  jbird                   |      8750 |      7815 |      7667 |      7603 |      7379 |      6647 |        46 |      5995 |
|                    Δ                     |      8399 |      7482 |      7337 |      7278 |      7062 |      6357 |      -230 |      5671 |
|              Improvement %               |      2393 |      2247 |      2223 |      2239 |      2228 |      2192 |       -83 |      5671 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        41 |        49 |        57 |        61 |        64 |        65 |       324 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      5995 |
|                    Δ                     |         0 |        -8 |       -16 |       -24 |       -28 |       -31 |       -32 |      5671 |
|              Improvement %               |         0 |        20 |        33 |        42 |        46 |        48 |        49 |      5671 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       324 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      5995 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      5671 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      5671 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        76 |        76 |        76 |        76 |        76 |        80 |        83 |       324 |
|                  jbird                   |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      5995 |
|                    Δ                     |       -72 |       -72 |       -72 |       -72 |       -72 |       -76 |       -79 |      5671 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |      5671 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        65 |        65 |        65 |        66 |        66 |        70 |        70 |        16 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       177 |
|                    Δ                     |       -60 |       -59 |       -59 |       -60 |       -60 |       -64 |       -64 |       161 |
|              Improvement %               |        92 |        91 |        91 |        91 |        91 |        91 |        91 |       161 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        65 |        65 |        65 |        66 |        66 |        70 |        70 |        16 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       177 |
|                    Δ                     |       -60 |       -59 |       -59 |       -60 |       -60 |       -64 |       -64 |       161 |
|              Improvement %               |        92 |        91 |        91 |        91 |        91 |        91 |        91 |       161 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        14 |        14 |        16 |
|                  jbird                   |       189 |       182 |       180 |       178 |       176 |       171 |       171 |       177 |
|                    Δ                     |       174 |       167 |       165 |       163 |       161 |       157 |       157 |       161 |
|              Improvement %               |      1160 |      1113 |      1100 |      1087 |      1073 |      1121 |      1121 |       161 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        50 |        69 |        93 |       118 |       134 |       142 |       142 |        16 |
|                  jbird                   |        33 |        52 |        52 |        52 |        52 |        52 |        52 |       177 |
|                    Δ                     |       -17 |       -17 |       -41 |       -66 |       -82 |       -90 |       -90 |       161 |
|              Improvement %               |        34 |        25 |        44 |        56 |        61 |        63 |        63 |       161 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       177 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       161 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       161 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1665 |      1666 |      1666 |      1667 |      1668 |      1679 |      1679 |        16 |
|                  jbird                   |       146 |       146 |       146 |       146 |       147 |       147 |       151 |       177 |
|                    Δ                     |     -1519 |     -1520 |     -1520 |     -1521 |     -1521 |     -1532 |     -1528 |       161 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       161 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       142 |       155 |       161 |       163 |       167 |       181 |       219 |      5196 |
|                  jbird                   |        47 |        53 |        53 |        53 |        55 |        63 |        89 |     11706 |
|                    Δ                     |       -95 |      -102 |      -108 |      -110 |      -112 |      -118 |      -130 |      6510 |
|              Improvement %               |        67 |        66 |        67 |        67 |        67 |        65 |        59 |      6510 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       143 |       156 |       162 |       164 |       168 |       183 |       216 |      5196 |
|                  jbird                   |        49 |        54 |        55 |        55 |        56 |        65 |        88 |     11706 |
|                    Δ                     |       -94 |      -102 |      -107 |      -109 |      -112 |      -118 |      -128 |      6510 |
|              Improvement %               |        66 |        65 |        66 |        66 |        67 |        64 |        59 |      6510 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7051 |      6459 |      6227 |      6143 |      6007 |      5539 |      4575 |      5196 |
|                  jbird                   |     21164 |     18959 |     18815 |     18735 |     18287 |     15823 |     11252 |     11706 |
|                    Δ                     |     14113 |     12500 |     12588 |     12592 |     12280 |     10284 |      6677 |      6510 |
|              Improvement %               |       200 |       194 |       202 |       205 |       204 |       186 |       146 |      6510 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        38 |        44 |        51 |        55 |        57 |        57 |      5196 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11706 |
|                    Δ                     |        -1 |        -6 |       -12 |       -19 |       -23 |       -25 |       -25 |      6510 |
|              Improvement %               |         3 |        16 |        27 |        37 |        42 |        44 |        44 |      6510 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5196 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11706 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6510 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6510 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2913 |      2914 |      2916 |      2922 |      2927 |      3019 |      3101 |      5196 |
|                  jbird                   |      1308 |      1309 |      1309 |      1309 |      1309 |      1326 |      1379 |     11706 |
|                    Δ                     |     -1605 |     -1605 |     -1607 |     -1613 |     -1618 |     -1693 |     -1722 |      6510 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        56 |        56 |      6510 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1726 |      1821 |      1841 |      1870 |      1908 |      2015 |      2156 |       530 |
|                  jbird                   |        87 |        97 |        98 |        99 |       102 |       117 |       143 |      7621 |
|                    Δ                     |     -1639 |     -1724 |     -1743 |     -1771 |     -1806 |     -1898 |     -2013 |      7091 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        93 |      7091 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1727 |      1823 |      1844 |      1873 |      1909 |      2017 |      2157 |       530 |
|                  jbird                   |        88 |        99 |       100 |       101 |       104 |       119 |       147 |      7621 |
|                    Δ                     |     -1639 |     -1724 |     -1744 |     -1772 |     -1805 |     -1898 |     -2010 |      7091 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        93 |      7091 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       580 |       549 |       543 |       535 |       524 |       496 |       464 |       530 |
|                  jbird                   |     11467 |     10263 |     10207 |     10095 |      9791 |      8535 |      6991 |      7621 |
|                    Δ                     |     10887 |      9714 |      9664 |      9560 |      9267 |      8039 |      6527 |      7091 |
|              Improvement %               |      1877 |      1769 |      1780 |      1787 |      1769 |      1621 |      1407 |      7091 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        43 |        53 |        63 |        69 |        72 |        73 |       530 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      7621 |
|                    Δ                     |         0 |       -10 |       -20 |       -30 |       -36 |       -39 |       -40 |      7091 |
|              Improvement %               |         0 |        23 |        38 |        48 |        52 |        54 |        55 |      7091 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       530 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7621 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7091 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7091 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        46 |        46 |        46 |        46 |        46 |        49 |        49 |       530 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7621 |
|                    Δ                     |       -43 |       -43 |       -43 |       -43 |       -43 |       -46 |       -46 |      7091 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      7091 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1091 |      1208 |      1235 |      1264 |      1312 |      1416 |      1586 |       782 |
|                  jbird                   |        54 |        61 |        62 |        62 |        65 |        76 |       130 |     10593 |
|                    Δ                     |     -1037 |     -1147 |     -1173 |     -1202 |     -1247 |     -1340 |     -1456 |      9811 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        92 |      9811 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1093 |      1210 |      1237 |      1266 |      1313 |      1391 |      1461 |       782 |
|                  jbird                   |        56 |        63 |        63 |        64 |        66 |        78 |       132 |     10593 |
|                    Δ                     |     -1037 |     -1147 |     -1174 |     -1202 |     -1247 |     -1313 |     -1329 |      9811 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        94 |        91 |      9811 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       916 |       828 |       810 |       792 |       763 |       706 |       630 |       782 |
|                  jbird                   |     18349 |     16351 |     16239 |     16119 |     15511 |     13119 |      7695 |     10593 |
|                    Δ                     |     17433 |     15523 |     15429 |     15327 |     14748 |     12413 |      7065 |      9811 |
|              Improvement %               |      1903 |      1875 |      1905 |      1935 |      1933 |      1758 |      1121 |      9811 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        51 |        69 |        87 |        98 |       105 |       105 |       782 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10593 |
|                    Δ                     |        -1 |       -19 |       -37 |       -55 |       -66 |       -73 |       -73 |      9811 |
|              Improvement %               |         3 |        37 |        54 |        63 |        67 |        70 |        70 |      9811 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       782 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10593 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |      9811 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      9811 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        31 |        31 |       782 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     10593 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -29 |       -29 |      9811 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |      9811 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |       111 |       113 |       115 |       120 |       134 |       215 |      6652 |
|                  jbird                   |        27 |        30 |        30 |        32 |        33 |        39 |        73 |     15165 |
|                    Δ                     |       -72 |       -81 |       -83 |       -83 |       -87 |       -95 |      -142 |      8513 |
|              Improvement %               |        73 |        73 |        73 |        72 |        72 |        71 |        66 |      8513 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       100 |       113 |       114 |       117 |       122 |       136 |       170 |      6652 |
|                  jbird                   |        28 |        32 |        32 |        34 |        34 |        41 |        65 |     15165 |
|                    Δ                     |       -72 |       -81 |       -82 |       -83 |       -88 |       -95 |      -105 |      8513 |
|              Improvement %               |        72 |        72 |        72 |        71 |        72 |        70 |        62 |      8513 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10093 |      8999 |      8863 |      8679 |      8343 |      7479 |      4652 |      6652 |
|                  jbird                   |     37500 |     33247 |     33119 |     31103 |     30495 |     25919 |     13691 |     15165 |
|                    Δ                     |     27407 |     24248 |     24256 |     22424 |     22152 |     18440 |      9039 |      8513 |
|              Improvement %               |       272 |       269 |       274 |       258 |       266 |       247 |       194 |      8513 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |       136 |       239 |       342 |       405 |       442 |       447 |      6652 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15165 |
|                    Δ                     |         0 |      -104 |      -207 |      -310 |      -373 |      -410 |      -415 |      8513 |
|              Improvement %               |         0 |        76 |        87 |        91 |        92 |        93 |        93 |      8513 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6652 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15165 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8513 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8513 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2530 |      2546 |      2554 |      2560 |      2566 |      2603 |      2632 |      6652 |
|                  jbird                   |       859 |       859 |       859 |       860 |       860 |       864 |       935 |     15165 |
|                    Δ                     |     -1671 |     -1687 |     -1695 |     -1700 |     -1706 |     -1739 |     -1697 |      8513 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        67 |        64 |      8513 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8465 |      8774 |      8872 |      9028 |      9159 |     10215 |     10232 |       112 |
|                  jbird                   |      1518 |      1641 |      1652 |      1670 |      1704 |      1832 |      1882 |       588 |
|                    Δ                     |     -6947 |     -7133 |     -7220 |     -7358 |     -7455 |     -8383 |     -8350 |       476 |
|              Improvement %               |        82 |        81 |        81 |        82 |        81 |        82 |        82 |       476 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      8471 |      8782 |      8880 |      9036 |      9167 |     10191 |     10205 |       112 |
|                  jbird                   |      1519 |      1644 |      1654 |      1673 |      1706 |      1836 |      1876 |       588 |
|                    Δ                     |     -6952 |     -7138 |     -7226 |     -7363 |     -7461 |     -8355 |     -8329 |       476 |
|              Improvement %               |        82 |        81 |        81 |        81 |        81 |        82 |        82 |       476 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       118 |       114 |       113 |       111 |       109 |        98 |        98 |       112 |
|                  jbird                   |       659 |       609 |       606 |       599 |       587 |       546 |       531 |       588 |
|                    Δ                     |       541 |       495 |       493 |       488 |       478 |       448 |       433 |       476 |
|              Improvement %               |       458 |       434 |       436 |       440 |       439 |       457 |       442 |       476 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        53 |        74 |        93 |       106 |       113 |       114 |       112 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       588 |
|                    Δ                     |         1 |       -16 |       -37 |       -56 |       -69 |       -76 |       -77 |       476 |
|              Improvement %               |        -3 |        30 |        50 |        60 |        65 |        67 |        68 |       476 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       112 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       588 |
|                    Δ                     |     -1779 |     -1780 |     -1780 |     -1780 |     -1780 |     -1780 |     -1780 |       476 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        18 |       476 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       186 |       188 |       188 |       189 |       190 |       194 |       198 |       112 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        34 |        35 |       588 |
|                    Δ                     |      -153 |      -155 |      -155 |      -156 |      -157 |      -160 |      -163 |       476 |
|              Improvement %               |        82 |        82 |        82 |        83 |        83 |        82 |        82 |       476 |

<p>
</details>

