
## JBird vs SwiftyJSON

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9364 |      9740 |      9798 |      9880 |      9945 |     10797 |     10838 |       102 |
|                  jbird                   |      1773 |      1939 |      1955 |      1975 |      2001 |      2427 |      2791 |       498 |
|                    Δ                     |     -7591 |     -7801 |     -7843 |     -7905 |     -7944 |     -8370 |     -8047 |       396 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        78 |        74 |       396 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9372 |      9740 |      9798 |      9888 |      9953 |     10805 |     10841 |       102 |
|                  jbird                   |      1775 |      1942 |      1958 |      1978 |      2006 |      2437 |      2794 |       498 |
|                    Δ                     |     -7597 |     -7798 |     -7840 |     -7910 |     -7947 |     -8368 |     -8047 |       396 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        77 |        74 |       396 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       107 |       103 |       102 |       101 |       101 |        93 |        92 |       102 |
|                  jbird                   |       564 |       516 |       512 |       506 |       500 |       412 |       358 |       498 |
|                    Δ                     |       457 |       413 |       410 |       405 |       399 |       319 |       266 |       396 |
|              Improvement %               |       427 |       401 |       402 |       401 |       395 |       343 |       289 |       396 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        72 |       109 |       147 |       167 |       182 |       182 |       102 |
|                  jbird                   |        35 |        37 |        37 |        38 |        38 |        38 |        38 |       498 |
|                    Δ                     |         1 |       -35 |       -72 |      -109 |      -129 |      -144 |      -144 |       396 |
|              Improvement %               |        -3 |        49 |        66 |        74 |        77 |        79 |        79 |       396 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |       102 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       396 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       396 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       241 |       242 |       242 |       242 |       242 |       254 |       255 |       102 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       498 |
|                    Δ                     |      -195 |      -196 |      -196 |      -196 |      -196 |      -208 |      -208 |       396 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        82 |       396 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        12 |        12 |        96 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       491 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       -10 |       395 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        83 |        83 |       395 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        10 |        10 |        10 |        10 |        10 |        12 |        12 |        96 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       491 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |       -10 |       -10 |       395 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        83 |        83 |       395 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       101 |        97 |        97 |        96 |        95 |        84 |        84 |        96 |
|                  jbird                   |       540 |       505 |       502 |       498 |       492 |       470 |       459 |       491 |
|                    Δ                     |       439 |       408 |       405 |       402 |       397 |       386 |       375 |       395 |
|              Improvement %               |       435 |       421 |       418 |       419 |       418 |       460 |       446 |       395 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        34 |        70 |       104 |       139 |       161 |       174 |       174 |        96 |
|                  jbird                   |        35 |        38 |        38 |        38 |        38 |        38 |        38 |       491 |
|                    Δ                     |         1 |       -32 |       -66 |      -101 |      -123 |      -136 |      -136 |       395 |
|              Improvement %               |        -3 |        46 |        63 |        73 |        76 |        78 |        78 |       395 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        21 |        21 |        21 |        21 |        96 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       491 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       -10 |       395 |
|              Improvement %               |        48 |        48 |        48 |        48 |        48 |        48 |        48 |       395 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       246 |       247 |       247 |       247 |       247 |       260 |       260 |        96 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       491 |
|                    Δ                     |      -199 |      -200 |      -200 |      -200 |      -200 |      -213 |      -212 |       395 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        82 |       395 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2326 |      2503 |      2521 |      2540 |      2570 |      2720 |      2885 |       390 |
|                  jbird                   |       436 |       481 |       484 |       488 |       495 |       529 |       564 |      1908 |
|                    Δ                     |     -1890 |     -2022 |     -2037 |     -2052 |     -2075 |     -2191 |     -2321 |      1518 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        81 |        80 |      1518 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2328 |      2507 |      2523 |      2544 |      2574 |      2724 |      2887 |       390 |
|                  jbird                   |       437 |       483 |       486 |       490 |       497 |       531 |       566 |      1908 |
|                    Δ                     |     -1891 |     -2024 |     -2037 |     -2054 |     -2077 |     -2193 |     -2321 |      1518 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        81 |        80 |      1518 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       430 |       400 |       397 |       394 |       389 |       368 |       347 |       390 |
|                  jbird                   |      2294 |      2079 |      2065 |      2049 |      2023 |      1889 |      1772 |      1908 |
|                    Δ                     |      1864 |      1679 |      1668 |      1655 |      1634 |      1521 |      1425 |      1518 |
|              Improvement %               |       433 |       420 |       420 |       420 |       420 |       413 |       411 |      1518 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        68 |       104 |       140 |       161 |       176 |       176 |       390 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1908 |
|                    Δ                     |         0 |       -35 |       -71 |      -107 |      -128 |      -143 |      -143 |      1518 |
|              Improvement %               |         0 |        51 |        68 |        76 |        80 |        81 |        81 |      1518 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       390 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1908 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1518 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1518 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        60 |        61 |        61 |        61 |        61 |        64 |        64 |       390 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |      1908 |
|                    Δ                     |       -49 |       -50 |       -50 |       -50 |       -50 |       -52 |       -52 |      1518 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        81 |        81 |      1518 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2355 |      2540 |      2556 |      2572 |      2605 |      2761 |      2784 |       385 |
|                  jbird                   |       444 |       491 |       495 |       499 |       505 |       539 |       584 |      1870 |
|                    Δ                     |     -1911 |     -2049 |     -2061 |     -2073 |     -2100 |     -2222 |     -2200 |      1485 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        80 |        79 |      1485 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2357 |      2542 |      2558 |      2574 |      2607 |      2763 |      2786 |       385 |
|                  jbird                   |       445 |       493 |       496 |       501 |       508 |       540 |       588 |      1870 |
|                    Δ                     |     -1912 |     -2049 |     -2062 |     -2073 |     -2099 |     -2223 |     -2198 |      1485 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        80 |        79 |      1485 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       425 |       394 |       391 |       389 |       384 |       362 |       359 |       385 |
|                  jbird                   |      2253 |      2038 |      2022 |      2003 |      1980 |      1858 |      1711 |      1870 |
|                    Δ                     |      1828 |      1644 |      1631 |      1614 |      1596 |      1496 |      1352 |      1485 |
|              Improvement %               |       430 |       417 |       417 |       415 |       416 |       413 |       377 |      1485 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        68 |       103 |       138 |       160 |       174 |       174 |       385 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1870 |
|                    Δ                     |         0 |       -35 |       -70 |      -105 |      -127 |      -141 |      -141 |      1485 |
|              Improvement %               |         0 |        51 |        68 |        76 |        79 |        81 |        81 |      1485 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      5341 |      5343 |      5343 |      5343 |      5343 |      5343 |      5343 |       385 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1870 |
|                    Δ                     |     -2705 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |     -2707 |      1485 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |      1485 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        61 |        61 |        61 |        61 |        61 |        64 |        64 |       385 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1870 |
|                    Δ                     |       -49 |       -49 |       -49 |       -49 |       -49 |       -52 |       -52 |      1485 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      1485 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4810 |      5026 |      5091 |      5136 |      5386 |      5603 |      5664 |       194 |
|                  jbird                   |       883 |       969 |       975 |       982 |       992 |      1037 |      1078 |       984 |
|                    Δ                     |     -3927 |     -4057 |     -4116 |     -4154 |     -4394 |     -4566 |     -4586 |       790 |
|              Improvement %               |        82 |        81 |        81 |        81 |        82 |        81 |        81 |       790 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4817 |      5034 |      5095 |      5140 |      5390 |      5607 |      5672 |       194 |
|                  jbird                   |       885 |       971 |       977 |       985 |       994 |      1038 |      1080 |       984 |
|                    Δ                     |     -3932 |     -4063 |     -4118 |     -4155 |     -4396 |     -4569 |     -4592 |       790 |
|              Improvement %               |        82 |        81 |        81 |        81 |        82 |        81 |        81 |       790 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       208 |       199 |       196 |       195 |       186 |       178 |       177 |       194 |
|                  jbird                   |      1132 |      1032 |      1026 |      1018 |      1008 |       965 |       928 |       984 |
|                    Δ                     |       924 |       833 |       830 |       823 |       822 |       787 |       751 |       790 |
|              Improvement %               |       444 |       419 |       423 |       422 |       442 |       442 |       424 |       790 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        69 |       104 |       139 |       161 |       175 |       175 |       194 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       984 |
|                    Δ                     |         1 |       -34 |       -69 |      -104 |      -126 |      -140 |      -140 |       790 |
|              Improvement %               |        -3 |        49 |        66 |        75 |        78 |        80 |        80 |       790 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       194 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       984 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       790 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       790 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       121 |       122 |       122 |       122 |       122 |       128 |       128 |       194 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       984 |
|                    Δ                     |       -98 |       -99 |       -99 |       -99 |       -99 |      -105 |      -104 |       790 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        81 |       790 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4739 |      4927 |      5001 |      5177 |      5558 |      5960 |      5970 |       195 |
|                  jbird                   |       897 |       980 |       989 |       996 |      1007 |      1052 |      1121 |       972 |
|                    Δ                     |     -3842 |     -3947 |     -4012 |     -4181 |     -4551 |     -4908 |     -4849 |       777 |
|              Improvement %               |        81 |        80 |        80 |        81 |        82 |        82 |        81 |       777 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      4752 |      4932 |      5005 |      5177 |      5562 |      5964 |      5975 |       195 |
|                  jbird                   |       899 |       982 |       991 |       999 |      1008 |      1055 |      1112 |       972 |
|                    Δ                     |     -3853 |     -3950 |     -4014 |     -4178 |     -4554 |     -4909 |     -4863 |       777 |
|              Improvement %               |        81 |        80 |        80 |        81 |        82 |        82 |        81 |       777 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       211 |       203 |       200 |       193 |       180 |       168 |       168 |       195 |
|                  jbird                   |      1115 |      1021 |      1012 |      1004 |       993 |       952 |       892 |       972 |
|                    Δ                     |       904 |       818 |       812 |       811 |       813 |       784 |       724 |       777 |
|              Improvement %               |       428 |       403 |       406 |       420 |       452 |       467 |       431 |       777 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        69 |       105 |       140 |       162 |       175 |       175 |       195 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       972 |
|                    Δ                     |         1 |       -34 |       -70 |      -105 |      -127 |      -140 |      -140 |       777 |
|              Improvement %               |        -3 |        49 |        67 |        75 |        78 |        80 |        80 |       777 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       195 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       972 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       777 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       777 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       123 |       124 |       124 |       124 |       124 |       130 |       130 |       195 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       972 |
|                    Δ                     |      -100 |      -101 |      -101 |      -101 |      -101 |      -107 |      -106 |       777 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        82 |        82 |       777 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        48 |        49 |        49 |        50 |        51 |        51 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |       -38 |       -37 |       -38 |       -38 |       -39 |       -40 |       -40 |        73 |
|              Improvement %               |        79 |        77 |        78 |        78 |        78 |        78 |        78 |        73 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        48 |        48 |        49 |        49 |        50 |        51 |        51 |        21 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |       -38 |       -37 |       -38 |       -38 |       -39 |       -40 |       -40 |        73 |
|              Improvement %               |        79 |        77 |        78 |        78 |        78 |        78 |        78 |        73 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        21 |        21 |        21 |        20 |        20 |        19 |        19 |        21 |
|                  jbird                   |       100 |        95 |        95 |        94 |        94 |        93 |        93 |        94 |
|                    Δ                     |        79 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|              Improvement %               |       376 |       352 |       352 |       370 |       370 |       389 |       389 |        73 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        92 |       125 |       162 |       186 |       202 |       202 |        21 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        94 |
|                    Δ                     |       -20 |       -34 |       -67 |      -104 |      -128 |      -144 |      -144 |        73 |
|              Improvement %               |        36 |        37 |        54 |        64 |        69 |        71 |        71 |        73 |

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
|                swiftyjson                |      1213 |      1214 |      1215 |      1217 |      1218 |      1221 |      1221 |        21 |
|                  jbird                   |       235 |       239 |       239 |       239 |       240 |       244 |       244 |        94 |
|                    Δ                     |      -978 |      -975 |      -976 |      -978 |      -978 |      -977 |      -977 |        73 |
|              Improvement %               |        81 |        80 |        80 |        80 |        80 |        80 |        80 |        73 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        50 |        50 |        51 |        51 |        52 |        52 |        20 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |       -39 |       -39 |       -39 |       -40 |       -40 |       -41 |       -41 |        73 |
|              Improvement %               |        80 |        78 |        78 |        78 |        78 |        79 |        79 |        73 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        49 |        50 |        50 |        51 |        51 |        52 |        52 |        20 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |       -39 |       -39 |       -39 |       -40 |       -40 |       -41 |       -41 |        73 |
|              Improvement %               |        80 |        78 |        78 |        78 |        78 |        79 |        79 |        73 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        20 |        20 |        20 |        20 |        20 |        19 |        19 |        20 |
|                  jbird                   |        98 |        94 |        94 |        93 |        92 |        90 |        90 |        93 |
|                    Δ                     |        78 |        74 |        74 |        73 |        72 |        71 |        71 |        73 |
|              Improvement %               |       390 |       370 |       370 |       365 |       360 |       374 |       374 |        73 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        55 |        83 |       122 |       155 |       180 |       191 |       191 |        20 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        93 |
|                    Δ                     |       -20 |       -25 |       -64 |       -97 |      -122 |      -133 |      -133 |        73 |
|              Improvement %               |        36 |        30 |        52 |        63 |        68 |        70 |        70 |        73 |

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
|                swiftyjson                |      1216 |      1218 |      1218 |      1221 |      1222 |      1225 |      1225 |        20 |
|                  jbird                   |       238 |       243 |       243 |       243 |       243 |       248 |       248 |        93 |
|                    Δ                     |      -978 |      -975 |      -975 |      -978 |      -979 |      -977 |      -977 |        73 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |        73 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       564 |       625 |       638 |       648 |       657 |       704 |       741 |      1480 |
|                  jbird                   |       110 |       121 |       123 |       124 |       126 |       138 |       177 |      6264 |
|                    Δ                     |      -454 |      -504 |      -515 |      -524 |      -531 |      -566 |      -564 |      4784 |
|              Improvement %               |        80 |        81 |        81 |        81 |        81 |        80 |        76 |      4784 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       566 |       626 |       640 |       650 |       659 |       706 |       743 |      1480 |
|                  jbird                   |       111 |       122 |       125 |       126 |       128 |       141 |       181 |      6264 |
|                    Δ                     |      -455 |      -504 |      -515 |      -524 |      -531 |      -565 |      -562 |      4784 |
|              Improvement %               |        80 |        81 |        80 |        81 |        81 |        80 |        76 |      4784 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1772 |      1602 |      1568 |      1544 |      1523 |      1421 |      1349 |      1480 |
|                  jbird                   |      9129 |      8295 |      8127 |      8071 |      7939 |      7227 |      5646 |      6264 |
|                    Δ                     |      7357 |      6693 |      6559 |      6527 |      6416 |      5806 |      4297 |      4784 |
|              Improvement %               |       415 |       418 |       418 |       423 |       421 |       409 |       319 |      4784 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        67 |       104 |       140 |       162 |       175 |       175 |      1480 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6264 |
|                    Δ                     |        -1 |       -35 |       -72 |      -108 |      -130 |      -143 |      -143 |      4784 |
|              Improvement %               |         3 |        52 |        69 |        77 |        80 |        82 |        82 |      4784 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1480 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6264 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4784 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4784 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1480 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6264 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4784 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4784 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       580 |       639 |       646 |       651 |       661 |       700 |       741 |      1459 |
|                  jbird                   |       111 |       122 |       125 |       126 |       127 |       139 |       169 |      6210 |
|                    Δ                     |      -469 |      -517 |      -521 |      -525 |      -534 |      -561 |      -572 |      4751 |
|              Improvement %               |        81 |        81 |        81 |        81 |        81 |        80 |        77 |      4751 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       581 |       642 |       648 |       654 |       664 |       702 |       743 |      1459 |
|                  jbird                   |       113 |       124 |       126 |       128 |       129 |       141 |       172 |      6210 |
|                    Δ                     |      -468 |      -518 |      -522 |      -526 |      -535 |      -561 |      -571 |      4751 |
|              Improvement %               |        81 |        81 |        81 |        80 |        81 |        80 |        77 |      4751 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1725 |      1564 |      1549 |      1536 |      1513 |      1429 |      1350 |      1459 |
|                  jbird                   |      8985 |      8199 |      8027 |      7939 |      7851 |      7195 |      5923 |      6210 |
|                    Δ                     |      7260 |      6635 |      6478 |      6403 |      6338 |      5766 |      4573 |      4751 |
|              Improvement %               |       421 |       424 |       418 |       417 |       419 |       403 |       339 |      4751 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        66 |       102 |       138 |       159 |       172 |       173 |      1459 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      6210 |
|                    Δ                     |        -1 |       -34 |       -70 |      -106 |      -127 |      -140 |      -141 |      4751 |
|              Improvement %               |         3 |        52 |        69 |        77 |        80 |        81 |        82 |      4751 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1384 |      1384 |      1384 |      1384 |      1384 |      1384 |      1386 |      1459 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6210 |
|                    Δ                     |      -722 |      -722 |      -722 |      -722 |      -722 |      -722 |      -724 |      4751 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      4751 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        15 |        15 |        15 |        15 |        15 |        16 |        16 |      1459 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      6210 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -13 |       -13 |      4751 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        81 |        81 |      4751 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2646 |      2859 |      2918 |      2968 |      3183 |      3596 |      3902 |       336 |
|                  jbird                   |       114 |       128 |       130 |       131 |       133 |       144 |       197 |      6196 |
|                    Δ                     |     -2532 |     -2731 |     -2788 |     -2837 |     -3050 |     -3452 |     -3705 |      5860 |
|              Improvement %               |        96 |        96 |        96 |        96 |        96 |        96 |        95 |      5860 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2648 |      2861 |      2922 |      2968 |      3183 |      3598 |      3905 |       336 |
|                  jbird                   |       116 |       129 |       131 |       132 |       135 |       146 |       201 |      6196 |
|                    Δ                     |     -2532 |     -2732 |     -2791 |     -2836 |     -3048 |     -3452 |     -3704 |      5860 |
|              Improvement %               |        96 |        95 |        96 |        96 |        96 |        96 |        95 |      5860 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       378 |       350 |       343 |       337 |       314 |       278 |       256 |       336 |
|                  jbird                   |      8762 |      7839 |      7715 |      7663 |      7527 |      6927 |      5070 |      6196 |
|                    Δ                     |      8384 |      7489 |      7372 |      7326 |      7213 |      6649 |      4814 |      5860 |
|              Improvement %               |      2218 |      2140 |      2149 |      2174 |      2297 |      2392 |      1880 |      5860 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        41 |        49 |        57 |        62 |        65 |        65 |       336 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      6196 |
|                    Δ                     |        -1 |        -8 |       -16 |       -24 |       -29 |       -32 |       -32 |      5860 |
|              Improvement %               |         3 |        20 |        33 |        42 |        47 |        49 |        49 |      5860 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        17 |        17 |        17 |        17 |        17 |        17 |        19 |       336 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      6196 |
|                    Δ                     |        11 |        11 |        11 |        11 |        11 |        11 |         9 |      5860 |
|              Improvement %               |       -65 |       -65 |       -65 |       -65 |       -65 |       -65 |       -47 |      5860 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        76 |        77 |        77 |        77 |        77 |        81 |        82 |       336 |
|                  jbird                   |         4 |         4 |         4 |         4 |         4 |         4 |         4 |      6196 |
|                    Δ                     |       -72 |       -73 |       -73 |       -73 |       -73 |       -77 |       -78 |      5860 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        95 |      5860 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        65 |        65 |        67 |        67 |        67 |        16 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       185 |
|                    Δ                     |       -59 |       -59 |       -60 |       -60 |       -62 |       -62 |       -62 |       169 |
|              Improvement %               |        92 |        92 |        92 |        92 |        93 |        93 |        93 |       169 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        64 |        64 |        65 |        65 |        67 |        67 |        67 |        16 |
|                  jbird                   |         5 |         5 |         5 |         5 |         5 |         5 |         5 |       185 |
|                    Δ                     |       -59 |       -59 |       -60 |       -60 |       -62 |       -62 |       -62 |       169 |
|              Improvement %               |        92 |        92 |        92 |        92 |        93 |        93 |        93 |       169 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        16 |        15 |        15 |        15 |        15 |        15 |        15 |        16 |
|                  jbird                   |       195 |       188 |       187 |       186 |       185 |       183 |       182 |       185 |
|                    Δ                     |       179 |       173 |       172 |       171 |       170 |       168 |       167 |       169 |
|              Improvement %               |      1119 |      1153 |      1147 |      1140 |      1133 |      1120 |      1113 |       169 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        51 |        70 |        94 |       117 |       136 |       142 |       142 |        16 |
|                  jbird                   |        33 |        51 |        51 |        51 |        51 |        51 |        51 |       185 |
|                    Δ                     |       -18 |       -19 |       -43 |       -66 |       -85 |       -91 |       -91 |       169 |
|              Improvement %               |        35 |        27 |        46 |        56 |        62 |        64 |        64 |       169 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       279 |       279 |       279 |       279 |       279 |       279 |       279 |        16 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       185 |
|                    Δ                     |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |      -223 |       169 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        80 |       169 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1713 |      1713 |      1714 |      1714 |      1715 |      1715 |      1715 |        16 |
|                  jbird                   |       146 |       146 |       146 |       147 |       147 |       147 |       151 |       185 |
|                    Δ                     |     -1567 |     -1567 |     -1568 |     -1567 |     -1568 |     -1568 |     -1564 |       169 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        91 |        91 |       169 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       139 |       147 |       155 |       158 |       161 |       173 |       204 |      5377 |
|                  jbird                   |        47 |        50 |        53 |        53 |        54 |        62 |        77 |     11885 |
|                    Δ                     |       -92 |       -97 |      -102 |      -105 |      -107 |      -111 |      -127 |      6508 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        64 |        62 |      6508 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       141 |       148 |       157 |       160 |       162 |       175 |       207 |      5377 |
|                  jbird                   |        48 |        52 |        54 |        55 |        55 |        64 |        76 |     11885 |
|                    Δ                     |       -93 |       -96 |      -103 |      -105 |      -107 |      -111 |      -131 |      6508 |
|              Improvement %               |        66 |        65 |        66 |        66 |        66 |        63 |        63 |      6508 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7175 |      6823 |      6439 |      6327 |      6231 |      5767 |      4893 |      5377 |
|                  jbird                   |     21333 |     19951 |     18991 |     18895 |     18687 |     16231 |     12945 |     11885 |
|                    Δ                     |     14158 |     13128 |     12552 |     12568 |     12456 |     10464 |      8052 |      6508 |
|              Improvement %               |       197 |       192 |       195 |       199 |       200 |       181 |       165 |      6508 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        38 |        45 |        52 |        56 |        58 |        58 |      5377 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11885 |
|                    Δ                     |         0 |        -6 |       -13 |       -20 |       -24 |       -26 |       -26 |      6508 |
|              Improvement %               |         0 |        16 |        29 |        38 |        43 |        45 |        45 |      6508 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       456 |       456 |       456 |       456 |       456 |       456 |       459 |      5377 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11885 |
|                    Δ                     |      -303 |      -303 |      -303 |      -303 |      -303 |      -303 |      -306 |      6508 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        67 |      6508 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2919 |      2920 |      2920 |      2929 |      2933 |      3027 |      3106 |      5377 |
|                  jbird                   |      1303 |      1304 |      1304 |      1304 |      1304 |      1321 |      1373 |     11885 |
|                    Δ                     |     -1616 |     -1616 |     -1616 |     -1625 |     -1629 |     -1706 |     -1733 |      6508 |
|              Improvement %               |        55 |        55 |        55 |        55 |        56 |        56 |        56 |      6508 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1639 |      1794 |      1808 |      1823 |      1839 |      2198 |      2284 |       540 |
|                  jbird                   |        88 |        98 |        99 |        99 |       101 |       111 |       150 |      7687 |
|                    Δ                     |     -1551 |     -1696 |     -1709 |     -1724 |     -1738 |     -2087 |     -2134 |      7147 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        93 |      7147 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1641 |      1796 |      1810 |      1825 |      1842 |      2200 |      2286 |       540 |
|                  jbird                   |        89 |        99 |       100 |       101 |       103 |       114 |       153 |      7687 |
|                    Δ                     |     -1552 |     -1697 |     -1710 |     -1724 |     -1739 |     -2086 |     -2133 |      7147 |
|              Improvement %               |        95 |        94 |        94 |        94 |        94 |        95 |        93 |      7147 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       610 |       558 |       553 |       549 |       544 |       455 |       438 |       540 |
|                  jbird                   |     11396 |     10263 |     10159 |     10063 |      9903 |      8999 |      6683 |      7687 |
|                    Δ                     |     10786 |      9705 |      9606 |      9514 |      9359 |      8544 |      6245 |      7147 |
|              Improvement %               |      1768 |      1739 |      1737 |      1733 |      1720 |      1878 |      1426 |      7147 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |        43 |        53 |        63 |        69 |        73 |        73 |       540 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      7687 |
|                    Δ                     |         0 |       -11 |       -21 |       -31 |       -37 |       -41 |       -41 |      7147 |
|              Improvement %               |         0 |        26 |        40 |        49 |        54 |        56 |        56 |      7147 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       816 |       816 |       816 |       816 |       816 |       816 |       818 |       540 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7687 |
|                    Δ                     |      -798 |      -798 |      -798 |      -798 |      -798 |      -798 |      -800 |      7147 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      7147 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        47 |        47 |        47 |        47 |        47 |        50 |        50 |       540 |
|                  jbird                   |         3 |         3 |         3 |         3 |         3 |         3 |         3 |      7687 |
|                    Δ                     |       -44 |       -44 |       -44 |       -44 |       -44 |       -47 |       -47 |      7147 |
|              Improvement %               |        94 |        94 |        94 |        94 |        94 |        94 |        94 |      7147 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1117 |      1220 |      1239 |      1249 |      1265 |      1433 |      1499 |       784 |
|                  jbird                   |        51 |        57 |        58 |        59 |        60 |        68 |       136 |     11091 |
|                    Δ                     |     -1066 |     -1163 |     -1181 |     -1190 |     -1205 |     -1365 |     -1363 |     10307 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        91 |     10307 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      1118 |      1222 |      1241 |      1251 |      1268 |      1436 |      1500 |       784 |
|                  jbird                   |        53 |        59 |        60 |        60 |        62 |        70 |       140 |     11091 |
|                    Δ                     |     -1065 |     -1163 |     -1181 |     -1191 |     -1206 |     -1366 |     -1360 |     10307 |
|              Improvement %               |        95 |        95 |        95 |        95 |        95 |        95 |        91 |     10307 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       895 |       820 |       808 |       800 |       791 |       698 |       667 |       784 |
|                  jbird                   |     19544 |     17439 |     17231 |     17023 |     16751 |     14647 |      7330 |     11091 |
|                    Δ                     |     18649 |     16619 |     16423 |     16223 |     15960 |     13949 |      6663 |     10307 |
|              Improvement %               |      2084 |      2027 |      2033 |      2028 |      2018 |      1998 |       999 |     10307 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        32 |        51 |        69 |        87 |        98 |       105 |       106 |       784 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11091 |
|                    Δ                     |        -1 |       -19 |       -37 |       -55 |       -66 |       -73 |       -74 |     10307 |
|              Improvement %               |         3 |        37 |        54 |        63 |        67 |        70 |        70 |     10307 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2971 |      2971 |      2971 |      2971 |      2971 |      2971 |      2973 |       784 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11091 |
|                    Δ                     |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2961 |     -2963 |     10307 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |     10307 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        30 |        30 |        30 |        30 |        30 |        32 |        32 |       784 |
|                  jbird                   |         2 |         2 |         2 |         2 |         2 |         2 |         2 |     11091 |
|                    Δ                     |       -28 |       -28 |       -28 |       -28 |       -28 |       -30 |       -30 |     10307 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        94 |        94 |     10307 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        98 |       107 |       112 |       114 |       117 |       129 |       158 |      6832 |
|                  jbird                   |        26 |        29 |        30 |        30 |        30 |        36 |        58 |     15582 |
|                    Δ                     |       -72 |       -78 |       -82 |       -84 |       -87 |       -93 |      -100 |      8750 |
|              Improvement %               |        73 |        73 |        73 |        74 |        74 |        72 |        63 |      8750 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        99 |       108 |       114 |       116 |       119 |       131 |       161 |      6832 |
|                  jbird                   |        28 |        31 |        31 |        31 |        32 |        38 |        57 |     15582 |
|                    Δ                     |       -71 |       -77 |       -83 |       -85 |       -87 |       -93 |      -104 |      8750 |
|              Improvement %               |        72 |        71 |        73 |        73 |        73 |        71 |        65 |      8750 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |     10226 |      9375 |      8935 |      8743 |      8535 |      7747 |      6321 |      6832 |
|                  jbird                   |     38156 |     34015 |     33855 |     33663 |     33119 |     28015 |     17204 |     15582 |
|                    Δ                     |     27930 |     24640 |     24920 |     24920 |     24584 |     20268 |     10883 |      8750 |
|              Improvement %               |       273 |       263 |       279 |       285 |       288 |       262 |       172 |      8750 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        31 |       136 |       243 |       349 |       414 |       453 |       458 |      6832 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15582 |
|                    Δ                     |         0 |      -104 |      -211 |      -317 |      -382 |      -421 |      -426 |      8750 |
|              Improvement %               |         0 |        76 |        87 |        91 |        92 |        93 |        93 |      8750 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        88 |        88 |        88 |        88 |        88 |        88 |        91 |      6832 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15582 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -11 |       -14 |      8750 |
|              Improvement %               |        12 |        12 |        12 |        12 |        12 |        12 |        15 |      8750 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      2542 |      2562 |      2568 |      2576 |      2583 |      2621 |      2727 |      6832 |
|                  jbird                   |       850 |       851 |       851 |       851 |       851 |       856 |       901 |     15582 |
|                    Δ                     |     -1692 |     -1711 |     -1717 |     -1725 |     -1732 |     -1765 |     -1826 |      8750 |
|              Improvement %               |        67 |        67 |        67 |        67 |        67 |        67 |        67 |      8750 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7867 |      8348 |      8430 |      8495 |      8602 |      8872 |      8906 |       118 |
|                  jbird                   |      1556 |      1639 |      1653 |      1667 |      1691 |      1751 |      1849 |       590 |
|                    Δ                     |     -6311 |     -6709 |     -6777 |     -6828 |     -6911 |     -7121 |     -7057 |       472 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       472 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      7868 |      8348 |      8438 |      8503 |      8602 |      8888 |      8909 |       118 |
|                  jbird                   |      1557 |      1641 |      1656 |      1669 |      1693 |      1752 |      1851 |       590 |
|                    Δ                     |     -6311 |     -6707 |     -6782 |     -6834 |     -6909 |     -7136 |     -7058 |       472 |
|              Improvement %               |        80 |        80 |        80 |        80 |        80 |        80 |        79 |       472 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       127 |       120 |       119 |       118 |       116 |       113 |       112 |       118 |
|                  jbird                   |       643 |       610 |       605 |       600 |       591 |       571 |       541 |       590 |
|                    Δ                     |       516 |       490 |       486 |       482 |       475 |       458 |       429 |       472 |
|              Improvement %               |       406 |       408 |       408 |       408 |       409 |       405 |       383 |       472 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |        33 |        55 |        76 |        98 |       111 |       117 |       118 |       118 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       590 |
|                    Δ                     |         1 |       -18 |       -39 |       -61 |       -74 |       -80 |       -81 |       472 |
|              Improvement %               |        -3 |        33 |        51 |        62 |        67 |        68 |        69 |       472 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |      9774 |      9775 |      9775 |      9775 |      9775 |      9775 |      9775 |       118 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       590 |
|                    Δ                     |     -1779 |     -1780 |     -1780 |     -1780 |     -1780 |     -1780 |     -1780 |       472 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        18 |       472 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                swiftyjson                |       185 |       187 |       188 |       188 |       189 |       194 |       195 |       118 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       590 |
|                    Δ                     |      -152 |      -154 |      -155 |      -155 |      -156 |      -161 |      -161 |       472 |
|              Improvement %               |        82 |        82 |        82 |        82 |        83 |        83 |        83 |       472 |

<p>
</details>

