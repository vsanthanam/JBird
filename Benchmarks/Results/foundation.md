# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2585 |      2789 |      2808 |      2836 |      2904 |      3555 |      3686 |       348 |
|                  jbird                   |      1843 |      2012 |      2037 |      2062 |      2096 |      2687 |      3430 |       477 |
|                    Δ                     |      -742 |      -777 |      -771 |      -774 |      -808 |      -868 |      -256 |       129 |
|              Improvement %               |        29 |        28 |        27 |        27 |        28 |        24 |         7 |       129 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2592 |      2791 |      2812 |      2839 |      2906 |      3549 |      3683 |       348 |
|                  jbird                   |      1844 |      2014 |      2038 |      2065 |      2099 |      2689 |      3434 |       477 |
|                    Δ                     |      -748 |      -777 |      -774 |      -774 |      -807 |      -860 |      -249 |       129 |
|              Improvement %               |        29 |        28 |        28 |        27 |        28 |        24 |         7 |       129 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       387 |       359 |       356 |       353 |       345 |       281 |       271 |       348 |
|                  jbird                   |       543 |       497 |       491 |       485 |       477 |       372 |       292 |       477 |
|                    Δ                     |       156 |       138 |       135 |       132 |       132 |        91 |        21 |       129 |
|              Improvement %               |        40 |        38 |        38 |        37 |        38 |        32 |         8 |       129 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       277 |       403 |       478 |       522 |       529 |       348 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       477 |
|                    Δ                     |         3 |      -116 |      -246 |      -372 |      -447 |      -491 |      -498 |       129 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        94 |        94 |        94 |       129 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       348 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       477 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       129 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       129 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        64 |       348 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       477 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -14 |       129 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        22 |       129 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2691 |      2884 |      2904 |      2927 |      3168 |      3265 |      3320 |       337 |
|                  jbird                   |      1895 |      2046 |      2062 |      2077 |      2093 |      2161 |      2360 |       476 |
|                    Δ                     |      -796 |      -838 |      -842 |      -850 |     -1075 |     -1104 |      -960 |       139 |
|              Improvement %               |        30 |        29 |        29 |        29 |        34 |        34 |        29 |       139 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2693 |      2886 |      2906 |      2931 |      3170 |      3265 |      3324 |       337 |
|                  jbird                   |      1897 |      2048 |      2064 |      2079 |      2096 |      2161 |      2323 |       476 |
|                    Δ                     |      -796 |      -838 |      -842 |      -852 |     -1074 |     -1104 |     -1001 |       139 |
|              Improvement %               |        30 |        29 |        29 |        29 |        34 |        34 |        30 |       139 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       372 |       347 |       345 |       342 |       316 |       306 |       301 |       337 |
|                  jbird                   |       528 |       489 |       485 |       482 |       478 |       463 |       424 |       476 |
|                    Δ                     |       156 |       142 |       140 |       140 |       162 |       157 |       123 |       139 |
|              Improvement %               |        42 |        41 |        41 |        41 |        51 |        51 |        41 |       139 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       267 |       393 |       463 |       507 |       514 |       337 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       476 |
|                    Δ                     |         3 |      -118 |      -236 |      -362 |      -432 |      -476 |      -483 |       139 |
|              Improvement %               |       -12 |        79 |        88 |        92 |        93 |        94 |        94 |       139 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       337 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       476 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       139 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       139 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       337 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       476 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       -15 |       139 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        25 |        23 |       139 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       645 |       701 |       710 |       717 |       725 |       752 |       777 |      1342 |
|                  jbird                   |       460 |       500 |       504 |       509 |       516 |       545 |       566 |      1841 |
|                    Δ                     |      -185 |      -201 |      -206 |      -208 |      -209 |      -207 |      -211 |       499 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        27 |       499 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       646 |       702 |       712 |       719 |       727 |       753 |       779 |      1342 |
|                  jbird                   |       461 |       502 |       506 |       510 |       518 |       546 |       568 |      1841 |
|                    Δ                     |      -185 |      -200 |      -206 |      -209 |      -209 |      -207 |      -211 |       499 |
|              Improvement %               |        29 |        28 |        29 |        29 |        29 |        27 |        27 |       499 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1551 |      1427 |      1409 |      1395 |      1380 |      1331 |      1287 |      1342 |
|                  jbird                   |      2174 |      1998 |      1984 |      1967 |      1938 |      1837 |      1766 |      1841 |
|                    Δ                     |       623 |       571 |       575 |       572 |       558 |       506 |       479 |       499 |
|              Improvement %               |        40 |        40 |        41 |        41 |        40 |        38 |        37 |       499 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       271 |       391 |       471 |       513 |       519 |      1342 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1841 |
|                    Δ                     |         1 |      -118 |      -244 |      -364 |      -444 |      -486 |      -492 |       499 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       499 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1342 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1841 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       499 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       499 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1342 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1841 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       499 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       499 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       672 |       725 |       734 |       743 |       752 |       777 |       798 |      1300 |
|                  jbird                   |       474 |       514 |       519 |       528 |       537 |       557 |       608 |      1797 |
|                    Δ                     |      -198 |      -211 |      -215 |      -215 |      -215 |      -220 |      -190 |       497 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        24 |       497 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       673 |       727 |       736 |       744 |       754 |       778 |       800 |      1300 |
|                  jbird                   |       475 |       515 |       521 |       529 |       538 |       558 |       610 |      1797 |
|                    Δ                     |      -198 |      -212 |      -215 |      -215 |      -216 |      -220 |      -190 |       497 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        24 |       497 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1488 |      1380 |      1363 |      1347 |      1331 |      1287 |      1253 |      1300 |
|                  jbird                   |      2111 |      1947 |      1926 |      1896 |      1862 |      1797 |      1644 |      1797 |
|                    Δ                     |       623 |       567 |       563 |       549 |       531 |       510 |       391 |       497 |
|              Improvement %               |        42 |        41 |        41 |        41 |        40 |        40 |        31 |       497 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       265 |       385 |       451 |       499 |       499 |      1300 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1797 |
|                    Δ                     |         1 |      -118 |      -238 |      -358 |      -424 |      -472 |      -472 |       497 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       497 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1300 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1797 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       497 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       497 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1300 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1797 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       497 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       497 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1297 |      1403 |      1416 |      1428 |      1444 |      1480 |      1527 |       689 |
|                  jbird                   |       925 |      1002 |      1014 |      1031 |      1047 |      1076 |      1109 |       950 |
|                    Δ                     |      -372 |      -401 |      -402 |      -397 |      -397 |      -404 |      -418 |       261 |
|              Improvement %               |        29 |        29 |        28 |        28 |        27 |        27 |        27 |       261 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1299 |      1405 |      1418 |      1431 |      1446 |      1481 |      1529 |       689 |
|                  jbird                   |       926 |      1002 |      1015 |      1031 |      1048 |      1078 |      1111 |       950 |
|                    Δ                     |      -373 |      -403 |      -403 |      -400 |      -398 |      -403 |      -418 |       261 |
|              Improvement %               |        29 |        29 |        28 |        28 |        28 |        27 |        27 |       261 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       771 |       713 |       706 |       700 |       693 |       676 |       655 |       689 |
|                  jbird                   |      1082 |       998 |       987 |       971 |       956 |       930 |       902 |       950 |
|                    Δ                     |       311 |       285 |       281 |       271 |       263 |       254 |       247 |       261 |
|              Improvement %               |        40 |        40 |        40 |        39 |        38 |        38 |        38 |       261 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       152 |       278 |       403 |       479 |       522 |       528 |       689 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       950 |
|                    Δ                     |         0 |      -124 |      -250 |      -375 |      -451 |      -494 |      -500 |       261 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       261 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       689 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       950 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       261 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       261 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       689 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       950 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |       261 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        22 |       261 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1346 |      1449 |      1462 |      1474 |      1485 |      1526 |      1549 |       668 |
|                  jbird                   |       944 |      1027 |      1034 |      1046 |      1057 |      1087 |      1185 |       931 |
|                    Δ                     |      -402 |      -422 |      -428 |      -428 |      -428 |      -439 |      -364 |       263 |
|              Improvement %               |        30 |        29 |        29 |        29 |        29 |        29 |        23 |       263 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1348 |      1451 |      1464 |      1477 |      1488 |      1524 |      1550 |       668 |
|                  jbird                   |       946 |      1028 |      1036 |      1047 |      1060 |      1090 |      1189 |       931 |
|                    Δ                     |      -402 |      -423 |      -428 |      -430 |      -428 |      -434 |      -361 |       263 |
|              Improvement %               |        30 |        29 |        29 |        29 |        29 |        28 |        23 |       263 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       690 |       684 |       679 |       673 |       656 |       646 |       668 |
|                  jbird                   |      1059 |       974 |       967 |       957 |       946 |       920 |       844 |       931 |
|                    Δ                     |       316 |       284 |       283 |       278 |       273 |       264 |       198 |       263 |
|              Improvement %               |        43 |        41 |        41 |        41 |        41 |        40 |        31 |       263 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       148 |       268 |       389 |       462 |       503 |       510 |       668 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       931 |
|                    Δ                     |         0 |      -120 |      -239 |      -360 |      -433 |      -474 |      -481 |       263 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |       263 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       668 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       931 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       263 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       263 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       668 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       931 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -7 |       263 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        21 |       263 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        88 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -2 |        -2 |        -2 |        16 |
|              Improvement %               |        15 |        21 |        21 |        21 |        14 |        14 |        14 |        16 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        72 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        88 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -2 |        -2 |        -2 |        16 |
|              Improvement %               |        15 |        21 |        21 |        21 |        14 |        14 |        14 |        16 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        72 |        71 |        71 |        71 |        70 |        70 |        72 |
|                  jbird                   |        93 |        90 |        89 |        88 |        87 |        85 |        85 |        88 |
|                    Δ                     |        17 |        18 |        18 |        17 |        16 |        15 |        15 |        16 |
|              Improvement %               |        22 |        25 |        25 |        24 |        23 |        21 |        21 |        16 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       157 |       291 |       421 |       499 |       552 |       552 |        72 |
|                  jbird                   |        28 |        51 |        52 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |       -11 |      -106 |      -239 |      -369 |      -447 |      -500 |      -500 |        16 |
|              Improvement %               |        28 |        68 |        82 |        88 |        90 |        91 |        91 |        16 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        16 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        16 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       320 |       320 |       320 |       320 |       320 |        72 |
|                  jbird                   |       247 |       248 |       248 |       248 |       248 |       257 |       257 |        88 |
|                    Δ                     |       -72 |       -71 |       -72 |       -72 |       -72 |       -63 |       -63 |        16 |
|              Improvement %               |        23 |        22 |        22 |        22 |        22 |        20 |        20 |        16 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        15 |        15 |        15 |        15 |        15 |        69 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |        -3 |        -3 |        -4 |        -3 |        -3 |        -3 |        -3 |        17 |
|              Improvement %               |        21 |        21 |        27 |        20 |        20 |        20 |        20 |        17 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        15 |        15 |        15 |        15 |        15 |        69 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        86 |
|                    Δ                     |        -3 |        -3 |        -4 |        -3 |        -3 |        -3 |        -3 |        17 |
|              Improvement %               |        21 |        21 |        27 |        20 |        20 |        20 |        20 |        17 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        69 |        69 |        68 |        68 |        68 |        69 |
|                  jbird                   |        91 |        88 |        87 |        87 |        86 |        84 |        84 |        86 |
|                    Δ                     |        19 |        18 |        18 |        18 |        18 |        16 |        16 |        17 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        24 |        17 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       162 |       281 |       408 |       488 |       525 |       525 |        69 |
|                  jbird                   |        34 |        50 |        50 |        51 |        51 |        52 |        52 |        86 |
|                    Δ                     |        -5 |      -112 |      -231 |      -357 |      -437 |      -473 |      -473 |        17 |
|              Improvement %               |        13 |        69 |        82 |        88 |        90 |        90 |        90 |        17 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        69 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        86 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        17 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        17 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       324 |       325 |       325 |       325 |       325 |       325 |        69 |
|                  jbird                   |       252 |       252 |       252 |       252 |       252 |       261 |       261 |        86 |
|                    Δ                     |       -72 |       -72 |       -73 |       -73 |       -73 |       -64 |       -64 |        17 |
|              Improvement %               |        22 |        22 |        22 |        22 |        22 |        20 |        20 |        17 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       179 |       187 |       193 |       206 |       229 |       254 |      4455 |
|                  jbird                   |       115 |       124 |       130 |       132 |       135 |       147 |       204 |      6055 |
|                    Δ                     |       -51 |       -55 |       -57 |       -61 |       -71 |       -82 |       -50 |      1600 |
|              Improvement %               |        31 |        31 |        30 |        32 |        34 |        36 |        20 |      1600 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       180 |       188 |       195 |       207 |       231 |       249 |      4455 |
|                  jbird                   |       116 |       126 |       131 |       134 |       136 |       149 |       203 |      6055 |
|                    Δ                     |       -51 |       -54 |       -57 |       -61 |       -71 |       -82 |       -46 |      1600 |
|              Improvement %               |        31 |        30 |        30 |        31 |        34 |        35 |        18 |      1600 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6042 |      5591 |      5351 |      5183 |      4847 |      4363 |      3931 |      4455 |
|                  jbird                   |      8696 |      8043 |      7703 |      7559 |      7415 |      6787 |      4893 |      6055 |
|                    Δ                     |      2654 |      2452 |      2352 |      2376 |      2568 |      2424 |       962 |      1600 |
|              Improvement %               |        44 |        44 |        44 |        46 |        53 |        56 |        24 |      1600 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       134 |       238 |       348 |       414 |       452 |       457 |      4455 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6055 |
|                    Δ                     |         0 |      -108 |      -212 |      -322 |      -388 |      -426 |      -431 |      1600 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1600 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4455 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6055 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1600 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1600 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4108 |      4116 |      4125 |      4135 |      4256 |      4284 |      4455 |
|                  jbird                   |      2988 |      2990 |      2990 |      2990 |      2990 |      3062 |      3143 |      6055 |
|                    Δ                     |     -1094 |     -1118 |     -1126 |     -1135 |     -1145 |     -1194 |     -1141 |      1600 |
|              Improvement %               |        27 |        27 |        27 |        28 |        28 |        28 |        27 |      1600 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       170 |       185 |       192 |       197 |       202 |       217 |       263 |      4394 |
|                  jbird                   |       117 |       125 |       131 |       133 |       136 |       147 |       202 |      6031 |
|                    Δ                     |       -53 |       -60 |       -61 |       -64 |       -66 |       -70 |       -61 |      1637 |
|              Improvement %               |        31 |        32 |        32 |        32 |        33 |        32 |        23 |      1637 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       186 |       193 |       199 |       204 |       217 |       257 |      4394 |
|                  jbird                   |       118 |       127 |       132 |       134 |       137 |       149 |       204 |      6031 |
|                    Δ                     |       -54 |       -59 |       -61 |       -65 |       -67 |       -68 |       -53 |      1637 |
|              Improvement %               |        31 |        32 |        32 |        33 |        33 |        31 |        21 |      1637 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5868 |      5423 |      5215 |      5075 |      4947 |      4615 |      3796 |      4394 |
|                  jbird                   |      8568 |      7995 |      7643 |      7531 |      7383 |      6795 |      4950 |      6031 |
|                    Δ                     |      2700 |      2572 |      2428 |      2456 |      2436 |      2180 |      1154 |      1637 |
|              Improvement %               |        46 |        47 |        47 |        48 |        49 |        47 |        30 |      1637 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       128 |       239 |       345 |       411 |       448 |       453 |      4394 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6031 |
|                    Δ                     |         0 |      -102 |      -213 |      -319 |      -385 |      -422 |      -427 |      1637 |
|              Improvement %               |         0 |        80 |        89 |        92 |        94 |        94 |        94 |      1637 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4394 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6031 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1637 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1637 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4180 |      4188 |      4198 |      4321 |      4359 |      4394 |
|                  jbird                   |      3022 |      3023 |      3023 |      3023 |      3025 |      3095 |      3166 |      6031 |
|                    Δ                     |     -1123 |     -1147 |     -1157 |     -1165 |     -1173 |     -1226 |     -1193 |      1637 |
|              Improvement %               |        27 |        28 |        28 |        28 |        28 |        28 |        27 |      1637 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        76 |        78 |        82 |        86 |        99 |       139 |      9114 |
|                  jbird                   |        57 |        58 |        62 |        64 |        65 |        75 |        94 |     10773 |
|                    Δ                     |       -19 |       -18 |       -16 |       -18 |       -21 |       -24 |       -45 |      1659 |
|              Improvement %               |        25 |        24 |        21 |        22 |        24 |        24 |        32 |      1659 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        79 |        83 |        87 |       100 |       140 |      9114 |
|                  jbird                   |        58 |        59 |        64 |        65 |        66 |        77 |        98 |     10773 |
|                    Δ                     |       -19 |       -19 |       -15 |       -18 |       -21 |       -23 |       -42 |      1659 |
|              Improvement %               |        25 |        24 |        19 |        22 |        24 |        23 |        30 |      1659 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         7 |      9114 |
|                  jbird                   |        18 |        17 |        16 |        16 |        15 |        13 |        11 |     10773 |
|                    Δ                     |         5 |         4 |         3 |         4 |         3 |         3 |         4 |      1659 |
|              Improvement %               |        38 |        31 |        23 |        33 |        25 |        30 |        57 |      1659 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        48 |        59 |        66 |        70 |        70 |      9114 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10773 |
|                    Δ                     |         0 |       -11 |       -23 |       -34 |       -41 |       -45 |       -45 |      1659 |
|              Improvement %               |         0 |        31 |        48 |        58 |        62 |        64 |        64 |      1659 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9114 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10773 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      1659 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      1659 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1168 |      1185 |      9114 |
|                  jbird                   |      1513 |      1513 |      1513 |      1513 |      1513 |      1542 |      1567 |     10773 |
|                    Δ                     |       365 |       364 |       363 |       357 |       353 |       374 |       382 |      1659 |
|              Improvement %               |       -32 |       -32 |       -32 |       -31 |       -30 |       -32 |       -32 |      1659 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       244 |       268 |       275 |       282 |       290 |       305 |       330 |      3244 |
|                  jbird                   |        87 |        93 |        97 |        98 |       100 |       111 |       177 |      7841 |
|                    Δ                     |      -157 |      -175 |      -178 |      -184 |      -190 |      -194 |      -153 |      4597 |
|              Improvement %               |        64 |        65 |        65 |        65 |        66 |        64 |        46 |      4597 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       245 |       270 |       276 |       283 |       291 |       306 |       332 |      3244 |
|                  jbird                   |        88 |        95 |        99 |       100 |       102 |       113 |       178 |      7841 |
|                    Δ                     |      -157 |      -175 |      -177 |      -183 |      -189 |      -193 |      -154 |      4597 |
|              Improvement %               |        64 |        65 |        64 |        65 |        65 |        63 |        46 |      4597 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4098 |      3729 |      3645 |      3553 |      3455 |      3279 |      3031 |      3244 |
|                  jbird                   |     11527 |     10735 |     10271 |     10175 |      9967 |      9023 |      5660 |      7841 |
|                    Δ                     |      7429 |      7006 |      6626 |      6622 |      6512 |      5744 |      2629 |      4597 |
|              Improvement %               |       181 |       188 |       182 |       186 |       188 |       175 |        87 |      4597 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        87 |       146 |       207 |       244 |       266 |       269 |      3244 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7841 |
|                    Δ                     |         0 |       -61 |      -120 |      -181 |      -218 |      -240 |      -243 |      4597 |
|              Improvement %               |         0 |        70 |        82 |        87 |        89 |        90 |        90 |      4597 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3244 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7841 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4597 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4597 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6967 |      6971 |      6988 |      7000 |      7029 |      7140 |      3244 |
|                  jbird                   |      2592 |      2593 |      2593 |      2593 |      2593 |      2603 |      2830 |      7841 |
|                    Δ                     |     -4368 |     -4374 |     -4378 |     -4395 |     -4407 |     -4426 |     -4310 |      4597 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        60 |      4597 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       385 |       417 |       423 |       428 |       436 |       458 |       485 |      2191 |
|                  jbird                   |        56 |        60 |        63 |        64 |        65 |        73 |       133 |     10685 |
|                    Δ                     |      -329 |      -357 |      -360 |      -364 |      -371 |      -385 |      -352 |      8494 |
|              Improvement %               |        85 |        86 |        85 |        85 |        85 |        84 |        73 |      8494 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       386 |       419 |       424 |       430 |       438 |       457 |       487 |      2191 |
|                  jbird                   |        57 |        62 |        65 |        65 |        66 |        75 |       137 |     10685 |
|                    Δ                     |      -329 |      -357 |      -359 |      -365 |      -372 |      -382 |      -350 |      8494 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        84 |        72 |      8494 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2598 |      2397 |      2367 |      2337 |      2295 |      2185 |      2062 |      2191 |
|                  jbird                   |     17817 |     16575 |     15855 |     15671 |     15487 |     13639 |      7538 |     10685 |
|                    Δ                     |     15219 |     14178 |     13488 |     13334 |     13192 |     11454 |      5476 |      8494 |
|              Improvement %               |       586 |       591 |       570 |       571 |       575 |       524 |       266 |      8494 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        75 |       127 |       178 |       208 |       225 |       228 |      2191 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10685 |
|                    Δ                     |         0 |       -49 |      -101 |      -152 |      -182 |      -199 |      -202 |      8494 |
|              Improvement %               |         0 |        65 |        80 |        85 |        88 |        88 |        89 |      8494 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2191 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10685 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8494 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8494 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9062 |      9093 |      9101 |      9101 |      9110 |      9241 |      9259 |      2191 |
|                  jbird                   |      1588 |      1589 |      1589 |      1589 |      1589 |      1594 |      1713 |     10685 |
|                    Δ                     |     -7474 |     -7504 |     -7512 |     -7512 |     -7521 |     -7647 |     -7546 |      8494 |
|              Improvement %               |        82 |        83 |        83 |        83 |        83 |        83 |        81 |      8494 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        80 |        85 |        89 |        92 |       106 |       156 |      8388 |
|                  jbird                   |        28 |        29 |        31 |        31 |        32 |        38 |        75 |     15448 |
|                    Δ                     |       -48 |       -51 |       -54 |       -58 |       -60 |       -68 |       -81 |      7060 |
|              Improvement %               |        63 |        64 |        64 |        65 |        65 |        64 |        52 |      7060 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        82 |        86 |        90 |        93 |       106 |       151 |      8388 |
|                  jbird                   |        29 |        30 |        33 |        33 |        33 |        41 |        67 |     15448 |
|                    Δ                     |       -48 |       -52 |       -53 |       -57 |       -60 |       -65 |       -84 |      7060 |
|              Improvement %               |        62 |        63 |        62 |        63 |        65 |        61 |        56 |      7060 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        12 |        12 |        11 |        11 |         9 |         6 |      8388 |
|                  jbird                   |        36 |        35 |        32 |        32 |        32 |        26 |        13 |     15448 |
|                    Δ                     |        23 |        23 |        20 |        21 |        21 |        17 |         7 |      7060 |
|              Improvement %               |       177 |       192 |       167 |       191 |       191 |       189 |       117 |      7060 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       153 |       287 |       418 |       496 |       541 |       548 |      8388 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15448 |
|                    Δ                     |         0 |      -128 |      -261 |      -392 |      -470 |      -515 |      -522 |      7060 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      7060 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8388 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15448 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      7060 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      7060 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1891 |      1907 |      1912 |      1918 |      1925 |      2046 |      2077 |      8388 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       936 |     15448 |
|                    Δ                     |     -1014 |     -1029 |     -1034 |     -1040 |     -1047 |     -1163 |     -1141 |      7060 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        57 |        55 |      7060 |

<p>
</details>

