# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2592 |      2742 |      2781 |      2818 |      2947 |      3709 |      3843 |       350 |
|                  jbird                   |      1869 |      2016 |      2037 |      2081 |      2179 |      2623 |      2876 |       474 |
|                    Δ                     |      -723 |      -726 |      -744 |      -737 |      -768 |     -1086 |      -967 |       124 |
|              Improvement %               |        28 |        26 |        27 |        26 |        26 |        29 |        25 |       124 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2593 |      2744 |      2781 |      2818 |      2955 |      3713 |      3839 |       350 |
|                  jbird                   |      1867 |      2016 |      2038 |      2084 |      2179 |      2634 |      2881 |       474 |
|                    Δ                     |      -726 |      -728 |      -743 |      -734 |      -776 |     -1079 |      -958 |       124 |
|              Improvement %               |        28 |        27 |        27 |        26 |        26 |        29 |        25 |       124 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       386 |       365 |       360 |       355 |       338 |       270 |       260 |       350 |
|                  jbird                   |       535 |       496 |       491 |       481 |       459 |       381 |       348 |       474 |
|                    Δ                     |       149 |       131 |       131 |       126 |       121 |       111 |        88 |       124 |
|              Improvement %               |        39 |        36 |        36 |        35 |        36 |        41 |        34 |       124 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       151 |       278 |       403 |       480 |       525 |       531 |       350 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       474 |
|                    Δ                     |         3 |      -120 |      -247 |      -372 |      -449 |      -494 |      -500 |       124 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        94 |        94 |        94 |       124 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       350 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       474 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       124 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       124 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       350 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       474 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -15 |       124 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        23 |       124 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2680 |      2836 |      2871 |      2902 |      2939 |      3072 |      3126 |       344 |
|                  jbird                   |      1895 |      2034 |      2076 |      2116 |      2167 |      2275 |      2311 |       472 |
|                    Δ                     |      -785 |      -802 |      -795 |      -786 |      -772 |      -797 |      -815 |       128 |
|              Improvement %               |        29 |        28 |        28 |        27 |        26 |        26 |        26 |       128 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2682 |      2836 |      2873 |      2904 |      2947 |      3074 |      3127 |       344 |
|                  jbird                   |      1888 |      2035 |      2077 |      2116 |      2169 |      2277 |      2313 |       472 |
|                    Δ                     |      -794 |      -801 |      -796 |      -788 |      -778 |      -797 |      -814 |       128 |
|              Improvement %               |        30 |        28 |        28 |        27 |        26 |        26 |        26 |       128 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       373 |       353 |       348 |       345 |       340 |       326 |       320 |       344 |
|                  jbird                   |       528 |       492 |       482 |       473 |       462 |       440 |       433 |       472 |
|                    Δ                     |       155 |       139 |       134 |       128 |       122 |       114 |       113 |       128 |
|              Improvement %               |        42 |        39 |        39 |        37 |        36 |        35 |        35 |       128 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       274 |       399 |       475 |       519 |       526 |       344 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       472 |
|                    Δ                     |         3 |      -118 |      -243 |      -368 |      -444 |      -488 |      -495 |       128 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        93 |        94 |        94 |       128 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       344 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       472 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       128 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       128 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       344 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       472 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -14 |       128 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        22 |       128 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       637 |       689 |       701 |       715 |       744 |       784 |       851 |      1352 |
|                  jbird                   |       465 |       504 |       511 |       521 |       530 |       559 |       595 |      1823 |
|                    Δ                     |      -172 |      -185 |      -190 |      -194 |      -214 |      -225 |      -256 |       471 |
|              Improvement %               |        27 |        27 |        27 |        27 |        29 |        29 |        30 |       471 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       638 |       690 |       702 |       716 |       744 |       785 |       853 |      1352 |
|                  jbird                   |       466 |       506 |       513 |       522 |       531 |       560 |       592 |      1823 |
|                    Δ                     |      -172 |      -184 |      -189 |      -194 |      -213 |      -225 |      -261 |       471 |
|              Improvement %               |        27 |        27 |        27 |        27 |        29 |        29 |        31 |       471 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1569 |      1452 |      1427 |      1400 |      1344 |      1276 |      1175 |      1352 |
|                  jbird                   |      2150 |      1984 |      1957 |      1919 |      1886 |      1789 |      1679 |      1823 |
|                    Δ                     |       581 |       532 |       530 |       519 |       542 |       513 |       504 |       471 |
|              Improvement %               |        37 |        37 |        37 |        37 |        40 |        40 |        43 |       471 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       146 |       275 |       400 |       474 |       518 |       524 |      1352 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1823 |
|                    Δ                     |         1 |      -119 |      -248 |      -373 |      -447 |      -491 |      -497 |       471 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       471 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1352 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1823 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       471 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       471 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1352 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1823 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -3 |       471 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        19 |       471 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       669 |       714 |       727 |       741 |       781 |       820 |       876 |      1304 |
|                  jbird                   |       465 |       507 |       514 |       522 |       535 |       556 |       580 |      1815 |
|                    Δ                     |      -204 |      -207 |      -213 |      -219 |      -246 |      -264 |      -296 |       511 |
|              Improvement %               |        30 |        29 |        29 |        30 |        31 |        32 |        34 |       511 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       670 |       715 |       728 |       742 |       782 |       822 |       878 |      1304 |
|                  jbird                   |       466 |       508 |       515 |       524 |       536 |       557 |       581 |      1815 |
|                    Δ                     |      -204 |      -207 |      -213 |      -218 |      -246 |      -265 |      -297 |       511 |
|              Improvement %               |        30 |        29 |        29 |        29 |        31 |        32 |        34 |       511 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1495 |      1400 |      1377 |      1349 |      1280 |      1221 |      1141 |      1304 |
|                  jbird                   |      2151 |      1974 |      1947 |      1915 |      1871 |      1801 |      1726 |      1815 |
|                    Δ                     |       656 |       574 |       570 |       566 |       591 |       580 |       585 |       511 |
|              Improvement %               |        44 |        41 |        41 |        42 |        46 |        48 |        51 |       511 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       141 |       261 |       381 |       459 |       501 |       501 |      1304 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1815 |
|                    Δ                     |         1 |      -114 |      -234 |      -354 |      -432 |      -474 |      -474 |       511 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       511 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1304 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1815 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       511 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       511 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1304 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1815 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       511 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       511 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1287 |      1370 |      1383 |      1399 |      1417 |      1502 |      1708 |       704 |
|                  jbird                   |       939 |      1015 |      1026 |      1036 |      1050 |      1092 |      1138 |       942 |
|                    Δ                     |      -348 |      -355 |      -357 |      -363 |      -367 |      -410 |      -570 |       238 |
|              Improvement %               |        27 |        26 |        26 |        26 |        26 |        27 |        33 |       238 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1289 |      1371 |      1385 |      1400 |      1418 |      1503 |      1710 |       704 |
|                  jbird                   |       940 |      1016 |      1028 |      1038 |      1051 |      1090 |      1141 |       942 |
|                    Δ                     |      -349 |      -355 |      -357 |      -362 |      -367 |      -413 |      -569 |       238 |
|              Improvement %               |        27 |        26 |        26 |        26 |        26 |        27 |        33 |       238 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       777 |       730 |       723 |       715 |       706 |       666 |       585 |       704 |
|                  jbird                   |      1065 |       985 |       975 |       965 |       953 |       917 |       879 |       942 |
|                    Δ                     |       288 |       255 |       252 |       250 |       247 |       251 |       294 |       238 |
|              Improvement %               |        37 |        35 |        35 |        35 |        35 |        38 |        50 |       238 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       277 |       411 |       486 |       530 |       536 |       704 |
|                  jbird                   |        26 |        28 |        28 |        29 |        29 |        29 |        29 |       942 |
|                    Δ                     |         0 |      -121 |      -249 |      -382 |      -457 |      -501 |      -507 |       238 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       238 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       704 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       942 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       238 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       238 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       704 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       942 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |        -7 |       238 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        22 |        22 |       238 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1332 |      1421 |      1439 |      1454 |      1469 |      1553 |      1586 |       679 |
|                  jbird                   |       943 |      1019 |      1033 |      1049 |      1065 |      1097 |      1154 |       934 |
|                    Δ                     |      -389 |      -402 |      -406 |      -405 |      -404 |      -456 |      -432 |       255 |
|              Improvement %               |        29 |        28 |        28 |        28 |        28 |        29 |        27 |       255 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1333 |      1422 |      1440 |      1455 |      1471 |      1555 |      1587 |       679 |
|                  jbird                   |       944 |      1020 |      1034 |      1050 |      1065 |      1098 |      1155 |       934 |
|                    Δ                     |      -389 |      -402 |      -406 |      -405 |      -406 |      -457 |      -432 |       255 |
|              Improvement %               |        29 |        28 |        28 |        28 |        28 |        29 |        27 |       255 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       751 |       704 |       695 |       688 |       681 |       644 |       631 |       679 |
|                  jbird                   |      1060 |       981 |       968 |       954 |       939 |       913 |       867 |       934 |
|                    Δ                     |       309 |       277 |       273 |       266 |       258 |       269 |       236 |       255 |
|              Improvement %               |        41 |        39 |        39 |        39 |        38 |        42 |        37 |       255 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       271 |       394 |       468 |       517 |       517 |       679 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       934 |
|                    Δ                     |         0 |      -119 |      -243 |      -366 |      -440 |      -489 |      -489 |       255 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       255 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       679 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       934 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       255 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       255 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       679 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       934 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -7 |       255 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        21 |       255 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        15 |        15 |        71 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        17 |
|              Improvement %               |        21 |        21 |        21 |        21 |        21 |        20 |        20 |        17 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        71 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -4 |        -3 |        -3 |        17 |
|              Improvement %               |        21 |        21 |        21 |        21 |        27 |        20 |        20 |        17 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        72 |        71 |        71 |        69 |        68 |        68 |        71 |
|                  jbird                   |        93 |        90 |        89 |        88 |        87 |        85 |        85 |        88 |
|                    Δ                     |        19 |        18 |        18 |        17 |        18 |        17 |        17 |        17 |
|              Improvement %               |        26 |        25 |        25 |        24 |        26 |        25 |        25 |        17 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       157 |       291 |       423 |       492 |       544 |       544 |        71 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |       -10 |      -105 |      -239 |      -371 |      -440 |      -492 |      -492 |        17 |
|              Improvement %               |        26 |        67 |        82 |        88 |        89 |        90 |        90 |        17 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        17 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        17 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       320 |       320 |       320 |       320 |       320 |        71 |
|                  jbird                   |       249 |       249 |       249 |       250 |       250 |       258 |       258 |        88 |
|                    Δ                     |       -70 |       -70 |       -71 |       -70 |       -70 |       -62 |       -62 |        17 |
|              Improvement %               |        22 |        22 |        22 |        22 |        22 |        19 |        19 |        17 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        70 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -4 |        -3 |        -3 |        -3 |        -4 |        -3 |        -3 |        21 |
|              Improvement %               |        29 |        21 |        21 |        21 |        27 |        20 |        20 |        21 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        15 |        15 |        15 |        70 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -4 |        -3 |        -3 |        -3 |        -4 |        -3 |        -3 |        21 |
|              Improvement %               |        29 |        21 |        21 |        21 |        27 |        20 |        20 |        21 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        70 |        70 |        69 |        68 |        68 |        68 |        70 |
|                  jbird                   |        97 |        93 |        92 |        91 |        88 |        85 |        85 |        91 |
|                    Δ                     |        24 |        23 |        22 |        22 |        20 |        17 |        17 |        21 |
|              Improvement %               |        33 |        33 |        31 |        32 |        29 |        25 |        25 |        21 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       157 |       285 |       413 |       486 |       534 |       534 |        70 |
|                  jbird                   |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        91 |
|                    Δ                     |         5 |      -105 |      -233 |      -361 |      -434 |      -482 |      -482 |        21 |
|              Improvement %               |       -13 |        67 |        82 |        87 |        89 |        90 |        90 |        21 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        70 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        91 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        21 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        21 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        70 |
|                  jbird                   |       249 |       249 |       249 |       249 |       253 |       257 |       257 |        91 |
|                    Δ                     |       -75 |       -76 |       -76 |       -76 |       -72 |       -68 |       -68 |        21 |
|              Improvement %               |        23 |        23 |        23 |        23 |        22 |        21 |        21 |        21 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       178 |       185 |       190 |       195 |       211 |       252 |      4525 |
|                  jbird                   |       115 |       121 |       129 |       131 |       138 |       151 |       179 |      6112 |
|                    Δ                     |       -49 |       -57 |       -56 |       -59 |       -57 |       -60 |       -73 |      1587 |
|              Improvement %               |        30 |        32 |        30 |        31 |        29 |        28 |        29 |      1587 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       179 |       187 |       192 |       197 |       213 |       242 |      4525 |
|                  jbird                   |       117 |       123 |       130 |       132 |       140 |       151 |       176 |      6112 |
|                    Δ                     |       -49 |       -56 |       -57 |       -60 |       -57 |       -62 |       -66 |      1587 |
|              Improvement %               |        30 |        31 |        30 |        31 |        29 |        29 |        27 |      1587 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6088 |      5623 |      5407 |      5251 |      5123 |      4747 |      3971 |      4525 |
|                  jbird                   |      8674 |      8263 |      7759 |      7639 |      7231 |      6635 |      5578 |      6112 |
|                    Δ                     |      2586 |      2640 |      2352 |      2388 |      2108 |      1888 |      1607 |      1587 |
|              Improvement %               |        42 |        47 |        43 |        45 |        41 |        40 |        40 |      1587 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       133 |       244 |       351 |       418 |       461 |       467 |      4525 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6112 |
|                    Δ                     |         0 |      -107 |      -218 |      -325 |      -392 |      -435 |      -441 |      1587 |
|              Improvement %               |         0 |        80 |        89 |        93 |        94 |        94 |        94 |      1587 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4525 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6112 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1587 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1587 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4106 |      4114 |      4125 |      4135 |      4252 |      4288 |      4525 |
|                  jbird                   |      3000 |      3000 |      3002 |      3002 |      3002 |      3074 |      3146 |      6112 |
|                    Δ                     |     -1082 |     -1106 |     -1112 |     -1123 |     -1133 |     -1178 |     -1142 |      1587 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        28 |        27 |      1587 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       171 |       183 |       191 |       197 |       201 |       216 |       237 |      4411 |
|                  jbird                   |       117 |       124 |       131 |       134 |       140 |       154 |       180 |      6017 |
|                    Δ                     |       -54 |       -59 |       -60 |       -63 |       -61 |       -62 |       -57 |      1606 |
|              Improvement %               |        32 |        32 |        31 |        32 |        30 |        29 |        24 |      1606 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       185 |       192 |       198 |       203 |       217 |       236 |      4411 |
|                  jbird                   |       118 |       125 |       133 |       136 |       141 |       153 |       184 |      6017 |
|                    Δ                     |       -54 |       -60 |       -59 |       -62 |       -62 |       -64 |       -52 |      1606 |
|              Improvement %               |        31 |        32 |        31 |        31 |        31 |        29 |        22 |      1606 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5857 |      5455 |      5243 |      5083 |      4971 |      4631 |      4213 |      4411 |
|                  jbird                   |      8544 |      8099 |      7619 |      7459 |      7175 |      6511 |      5550 |      6017 |
|                    Δ                     |      2687 |      2644 |      2376 |      2376 |      2204 |      1880 |      1337 |      1606 |
|              Improvement %               |        46 |        48 |        45 |        47 |        44 |        41 |        32 |      1606 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       132 |       236 |       347 |       411 |       446 |       452 |      4411 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6017 |
|                    Δ                     |         0 |      -107 |      -210 |      -321 |      -385 |      -420 |      -426 |      1606 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1606 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4411 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6017 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1606 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1606 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4321 |      4367 |      4411 |
|                  jbird                   |      3048 |      3049 |      3049 |      3049 |      3049 |      3121 |      3194 |      6017 |
|                    Δ                     |     -1097 |     -1121 |     -1129 |     -1139 |     -1149 |     -1200 |     -1173 |      1606 |
|              Improvement %               |        26 |        27 |        27 |        27 |        27 |        28 |        27 |      1606 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        78 |        81 |        86 |        97 |       115 |      9150 |
|                  jbird                   |        48 |        49 |        51 |        54 |        56 |        65 |        89 |     12037 |
|                    Δ                     |       -27 |       -27 |       -27 |       -27 |       -30 |       -32 |       -26 |      2887 |
|              Improvement %               |        36 |        36 |        35 |        33 |        35 |        33 |        23 |      2887 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        79 |        83 |        87 |        99 |       114 |      9150 |
|                  jbird                   |        49 |        50 |        52 |        56 |        57 |        67 |        82 |     12037 |
|                    Δ                     |       -28 |       -28 |       -27 |       -27 |       -30 |       -32 |       -32 |      2887 |
|              Improvement %               |        36 |        36 |        34 |        33 |        34 |        32 |        28 |      2887 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         9 |      9150 |
|                  jbird                   |        21 |        20 |        20 |        18 |        18 |        15 |        11 |     12037 |
|                    Δ                     |         8 |         7 |         7 |         6 |         6 |         5 |         2 |      2887 |
|              Improvement %               |        62 |        54 |        54 |        50 |        50 |        50 |        22 |      2887 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        47 |        59 |        66 |        70 |        70 |      9150 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     12037 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -41 |       -45 |       -45 |      2887 |
|              Improvement %               |         0 |        31 |        47 |        58 |        62 |        64 |        64 |      2887 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9150 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12037 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      2887 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      2887 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1166 |      1182 |      9150 |
|                  jbird                   |      1309 |      1310 |      1310 |      1310 |      1310 |      1338 |      1363 |     12037 |
|                    Δ                     |       161 |       161 |       160 |       154 |       150 |       172 |       181 |      2887 |
|              Improvement %               |       -14 |       -14 |       -14 |       -13 |       -13 |       -15 |       -15 |      2887 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       242 |       265 |       272 |       278 |       284 |       304 |       344 |      3286 |
|                  jbird                   |        85 |        90 |        96 |        98 |        99 |       112 |       154 |      7951 |
|                    Δ                     |      -157 |      -175 |      -176 |      -180 |      -185 |      -192 |      -190 |      4665 |
|              Improvement %               |        65 |        66 |        65 |        65 |        65 |        63 |        55 |      4665 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       244 |       266 |       273 |       279 |       285 |       304 |       351 |      3286 |
|                  jbird                   |        87 |        91 |        97 |       100 |       101 |       112 |       158 |      7951 |
|                    Δ                     |      -157 |      -175 |      -176 |      -179 |      -184 |      -192 |      -193 |      4665 |
|              Improvement %               |        64 |        66 |        64 |        64 |        65 |        63 |        55 |      4665 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4126 |      3779 |      3683 |      3599 |      3525 |      3287 |      2907 |      3286 |
|                  jbird                   |     11702 |     11111 |     10439 |     10167 |     10063 |      8935 |      6494 |      7951 |
|                    Δ                     |      7576 |      7332 |      6756 |      6568 |      6538 |      5648 |      3587 |      4665 |
|              Improvement %               |       184 |       194 |       183 |       182 |       185 |       172 |       123 |      4665 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        86 |       147 |       210 |       247 |       272 |       272 |      3286 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7951 |
|                    Δ                     |         0 |       -60 |      -121 |      -184 |      -221 |      -246 |      -246 |      4665 |
|              Improvement %               |         0 |        70 |        82 |        88 |        89 |        90 |        90 |      4665 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3286 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7951 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4665 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4665 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6959 |      6967 |      6971 |      6984 |      7000 |      7025 |      7140 |      3286 |
|                  jbird                   |      2594 |      2595 |      2595 |      2595 |      2595 |      2609 |      2829 |      7951 |
|                    Δ                     |     -4365 |     -4372 |     -4376 |     -4389 |     -4405 |     -4416 |     -4311 |      4665 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        60 |      4665 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       378 |       412 |       419 |       426 |       438 |       482 |       509 |      2203 |
|                  jbird                   |        55 |        58 |        62 |        63 |        64 |        75 |       139 |     10862 |
|                    Δ                     |      -323 |      -354 |      -357 |      -363 |      -374 |      -407 |      -370 |      8659 |
|              Improvement %               |        85 |        86 |        85 |        85 |        85 |        84 |        73 |      8659 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       380 |       414 |       420 |       427 |       439 |       484 |       503 |      2203 |
|                  jbird                   |        56 |        59 |        63 |        65 |        66 |        77 |       143 |     10862 |
|                    Δ                     |      -324 |      -355 |      -357 |      -362 |      -373 |      -407 |      -360 |      8659 |
|              Improvement %               |        85 |        86 |        85 |        85 |        85 |        84 |        72 |      8659 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2643 |      2427 |      2391 |      2351 |      2285 |      2075 |      1966 |      2203 |
|                  jbird                   |     18100 |     17391 |     16151 |     15791 |     15551 |     13263 |      7190 |     10862 |
|                    Δ                     |     15457 |     14964 |     13760 |     13440 |     13266 |     11188 |      5224 |      8659 |
|              Improvement %               |       585 |       617 |       575 |       572 |       581 |       539 |       266 |      8659 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        75 |       127 |       179 |       209 |       227 |       230 |      2203 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10862 |
|                    Δ                     |         0 |       -49 |      -101 |      -153 |      -183 |      -201 |      -204 |      8659 |
|              Improvement %               |         0 |        65 |        80 |        85 |        88 |        89 |        89 |      8659 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2203 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10862 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8659 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8659 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9071 |      9101 |      9101 |      9110 |      9118 |      9232 |      9267 |      2203 |
|                  jbird                   |      1589 |      1589 |      1589 |      1589 |      1589 |      1597 |      1712 |     10862 |
|                    Δ                     |     -7482 |     -7512 |     -7512 |     -7521 |     -7529 |     -7635 |     -7555 |      8659 |
|              Improvement %               |        82 |        83 |        83 |        83 |        83 |        83 |        82 |      8659 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        80 |        83 |        88 |        91 |       105 |       147 |      8476 |
|                  jbird                   |        28 |        30 |        31 |        33 |        34 |        45 |        66 |     15201 |
|                    Δ                     |       -45 |       -50 |       -52 |       -55 |       -57 |       -60 |       -81 |      6725 |
|              Improvement %               |        62 |        62 |        63 |        62 |        63 |        57 |        55 |      6725 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        81 |        84 |        89 |        93 |       105 |       148 |      8476 |
|                  jbird                   |        29 |        32 |        33 |        35 |        36 |        47 |        60 |     15201 |
|                    Δ                     |       -46 |       -49 |       -51 |       -54 |       -57 |       -58 |       -88 |      6725 |
|              Improvement %               |        61 |        60 |        61 |        61 |        61 |        55 |        59 |      6725 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        12 |        11 |        11 |        10 |         7 |      8476 |
|                  jbird                   |        36 |        33 |        32 |        30 |        29 |        22 |        15 |     15201 |
|                    Δ                     |        22 |        20 |        20 |        19 |        18 |        12 |         8 |      6725 |
|              Improvement %               |       157 |       154 |       167 |       173 |       164 |       120 |       114 |      6725 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       157 |       291 |       424 |       502 |       547 |       553 |      8476 |
|                  jbird                   |        25 |        25 |        25 |        26 |        26 |        26 |        26 |     15201 |
|                    Δ                     |         0 |      -132 |      -266 |      -398 |      -476 |      -521 |      -527 |      6725 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      6725 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8476 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15201 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      6725 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      6725 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1891 |      1907 |      1912 |      1918 |      1925 |      1955 |      2081 |      8476 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       941 |     15201 |
|                    Δ                     |     -1014 |     -1029 |     -1034 |     -1040 |     -1047 |     -1072 |     -1140 |      6725 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        55 |        55 |      6725 |

<p>
</details>

