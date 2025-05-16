## Jaybird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2948 |      3027 |      3088 |      3318 |      3424 |      3475 |      3525 |       312 |
|                 jaybird                  |      2142 |      2189 |      2238 |      2421 |      2499 |      2562 |      2635 |       427 |
|                    Δ                     |      -806 |      -838 |      -850 |      -897 |      -925 |      -913 |      -890 |       115 |
|              Improvement %               |        27 |        28 |        28 |        27 |        27 |        26 |        25 |       115 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2950 |      3031 |      3088 |      3314 |      3426 |      3478 |      3524 |       312 |
|                 jaybird                  |      2144 |      2191 |      2238 |      2423 |      2501 |      2568 |      2632 |       427 |
|                    Δ                     |      -806 |      -840 |      -850 |      -891 |      -925 |      -910 |      -892 |       115 |
|              Improvement %               |        27 |        28 |        28 |        27 |        27 |        26 |        25 |       115 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       339 |       330 |       324 |       301 |       292 |       288 |       284 |       312 |
|                 jaybird                  |       467 |       457 |       447 |       413 |       400 |       390 |       379 |       427 |
|                    Δ                     |       128 |       127 |       123 |       112 |       108 |       102 |        95 |       115 |
|              Improvement %               |        38 |        38 |        38 |        37 |        37 |        35 |        33 |       115 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       139 |       252 |       366 |       433 |       471 |       477 |       312 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       427 |
|                    Δ                     |         3 |      -108 |      -221 |      -335 |      -402 |      -440 |      -446 |       115 |
|              Improvement %               |       -12 |        78 |        88 |        92 |        93 |        93 |        94 |       115 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       312 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       427 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       115 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       115 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        65 |        65 |       312 |
|                 jaybird                  |        47 |        47 |        47 |        47 |        47 |        48 |        49 |       427 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       115 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        25 |       115 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3063 |      3146 |      3207 |      3457 |      3521 |      3650 |      3744 |       300 |
|                 jaybird                  |      2181 |      2251 |      2294 |      2458 |      2523 |      2589 |      2701 |       418 |
|                    Δ                     |      -882 |      -895 |      -913 |      -999 |      -998 |     -1061 |     -1043 |       118 |
|              Improvement %               |        29 |        28 |        28 |        29 |        28 |        29 |        28 |       118 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3071 |      3150 |      3209 |      3459 |      3523 |      3656 |      3743 |       300 |
|                 jaybird                  |      2183 |      2253 |      2292 |      2451 |      2523 |      2597 |      2703 |       418 |
|                    Δ                     |      -888 |      -897 |      -917 |     -1008 |     -1000 |     -1059 |     -1040 |       118 |
|              Improvement %               |        29 |        28 |        29 |        29 |        28 |        29 |        28 |       118 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       326 |       318 |       312 |       289 |       284 |       273 |       267 |       300 |
|                 jaybird                  |       459 |       444 |       436 |       407 |       396 |       386 |       370 |       418 |
|                    Δ                     |       133 |       126 |       124 |       118 |       112 |       113 |       103 |       118 |
|              Improvement %               |        41 |        40 |        40 |        41 |        39 |        41 |        39 |       118 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       134 |       244 |       352 |       417 |       454 |       460 |       300 |
|                 jaybird                  |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       418 |
|                    Δ                     |         3 |      -103 |      -213 |      -321 |      -386 |      -423 |      -429 |       118 |
|              Improvement %               |       -12 |        77 |        87 |        91 |        93 |        93 |        93 |       118 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       300 |
|                 jaybird                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       418 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       118 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       118 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       300 |
|                 jaybird                  |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       418 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       118 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        24 |       118 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       741 |       764 |       787 |       851 |       869 |       898 |       925 |      1177 |
|                 jaybird                  |       534 |       546 |       558 |       611 |       624 |       654 |       746 |      1609 |
|                    Δ                     |      -207 |      -218 |      -229 |      -240 |      -245 |      -244 |      -179 |       432 |
|              Improvement %               |        28 |        29 |        29 |        28 |        28 |        27 |        19 |       432 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       743 |       766 |       788 |       854 |       872 |       900 |       920 |      1177 |
|                 jaybird                  |       536 |       549 |       560 |       613 |       626 |       651 |       695 |      1609 |
|                    Δ                     |      -207 |      -217 |      -228 |      -241 |      -246 |      -249 |      -225 |       432 |
|              Improvement %               |        28 |        28 |        29 |        28 |        28 |        28 |        24 |       432 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1350 |      1310 |      1270 |      1175 |      1150 |      1114 |      1081 |      1177 |
|                 jaybird                  |      1874 |      1831 |      1793 |      1637 |      1603 |      1530 |      1341 |      1609 |
|                    Δ                     |       524 |       521 |       523 |       462 |       453 |       416 |       260 |       432 |
|              Improvement %               |        39 |        40 |        41 |        39 |        39 |        37 |        24 |       432 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       242 |       350 |       415 |       454 |       454 |      1177 |
|                 jaybird                  |        25 |        27 |        27 |        27 |        27 |        27 |        27 |      1609 |
|                    Δ                     |         0 |      -104 |      -215 |      -323 |      -388 |      -427 |      -427 |       432 |
|              Improvement %               |         0 |        79 |        89 |        92 |        93 |        94 |        94 |       432 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1177 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1609 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       432 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       432 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1177 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1609 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       432 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       432 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       772 |       793 |       806 |       875 |       905 |       940 |      3050 |      1144 |
|                 jaybird                  |       539 |       559 |       570 |       624 |       637 |       668 |       706 |      1580 |
|                    Δ                     |      -233 |      -234 |      -236 |      -251 |      -268 |      -272 |     -2344 |       436 |
|              Improvement %               |        30 |        30 |        29 |        29 |        30 |        29 |        77 |       436 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       774 |       795 |       808 |       878 |       906 |       939 |       962 |      1144 |
|                 jaybird                  |       541 |       561 |       572 |       626 |       639 |       668 |       708 |      1580 |
|                    Δ                     |      -233 |      -234 |      -236 |      -252 |      -267 |      -271 |      -254 |       436 |
|              Improvement %               |        30 |        29 |        29 |        29 |        29 |        29 |        26 |       436 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1295 |      1262 |      1240 |      1143 |      1106 |      1064 |       328 |      1144 |
|                 jaybird                  |      1856 |      1791 |      1755 |      1604 |      1570 |      1498 |      1417 |      1580 |
|                    Δ                     |       561 |       529 |       515 |       461 |       464 |       434 |      1089 |       436 |
|              Improvement %               |        43 |        42 |        42 |        40 |        42 |        41 |       332 |       436 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       233 |       342 |       405 |       441 |       447 |      1144 |
|                 jaybird                  |        25 |        27 |        27 |        27 |        27 |        27 |        27 |      1580 |
|                    Δ                     |         0 |      -104 |      -206 |      -315 |      -378 |      -414 |      -420 |       436 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |       436 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1144 |
|                 jaybird                  |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1580 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       436 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       436 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1144 |
|                 jaybird                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1580 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -5 |       436 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        29 |       436 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1488 |      1528 |      1560 |      1692 |      1721 |      1768 |      6650 |       604 |
|                 jaybird                  |      1067 |      1089 |      1103 |      1205 |      1238 |      1362 |      1507 |       842 |
|                    Δ                     |      -421 |      -439 |      -457 |      -487 |      -483 |      -406 |     -5143 |       238 |
|              Improvement %               |        28 |        29 |        29 |        29 |        28 |        23 |        77 |       238 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1490 |      1531 |      1562 |      1694 |      1724 |      1769 |      1796 |       604 |
|                 jaybird                  |      1069 |      1091 |      1106 |      1206 |      1242 |      1364 |      1505 |       842 |
|                    Δ                     |      -421 |      -440 |      -456 |      -488 |      -482 |      -405 |      -291 |       238 |
|              Improvement %               |        28 |        29 |        29 |        29 |        28 |        23 |        16 |       238 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       672 |       655 |       641 |       591 |       581 |       566 |       150 |       604 |
|                 jaybird                  |       938 |       919 |       907 |       830 |       808 |       735 |       663 |       842 |
|                    Δ                     |       266 |       264 |       266 |       239 |       227 |       169 |       513 |       238 |
|              Improvement %               |        40 |        40 |        41 |        40 |        39 |        30 |       342 |       238 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       133 |       245 |       353 |       423 |       462 |       462 |       604 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       842 |
|                    Δ                     |         0 |      -105 |      -217 |      -325 |      -395 |      -434 |      -434 |       238 |
|              Improvement %               |         0 |        79 |        89 |        92 |        93 |        94 |        94 |       238 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       604 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       842 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       238 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       238 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       604 |
|                 jaybird                  |        23 |        23 |        24 |        24 |        24 |        24 |        25 |       842 |
|                    Δ                     |        -9 |        -9 |        -8 |        -8 |        -8 |        -8 |        -7 |       238 |
|              Improvement %               |        28 |        28 |        25 |        25 |        25 |        25 |        22 |       238 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1540 |      1579 |      1616 |      1752 |      1788 |      1848 |      4882 |       585 |
|                 jaybird                  |      1087 |      1111 |      1129 |      1237 |      1261 |      1317 |      1441 |       824 |
|                    Δ                     |      -453 |      -468 |      -487 |      -515 |      -527 |      -531 |     -3441 |       239 |
|              Improvement %               |        29 |        30 |        30 |        29 |        29 |        29 |        70 |       239 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1542 |      1581 |      1617 |      1754 |      1789 |      1845 |      1871 |       585 |
|                 jaybird                  |      1088 |      1113 |      1132 |      1240 |      1264 |      1316 |      1446 |       824 |
|                    Δ                     |      -454 |      -468 |      -485 |      -514 |      -525 |      -529 |      -425 |       239 |
|              Improvement %               |        29 |        30 |        30 |        29 |        29 |        29 |        23 |       239 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       649 |       634 |       619 |       571 |       559 |       541 |       205 |       585 |
|                 jaybird                  |       920 |       901 |       886 |       808 |       793 |       760 |       694 |       824 |
|                    Δ                     |       271 |       267 |       267 |       237 |       234 |       219 |       489 |       239 |
|              Improvement %               |        42 |        42 |        43 |        42 |        42 |        40 |       239 |       239 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       131 |       239 |       346 |       406 |       449 |       449 |       585 |
|                 jaybird                  |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       824 |
|                    Δ                     |         0 |      -103 |      -211 |      -318 |      -378 |      -421 |      -421 |       239 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |       239 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       585 |
|                 jaybird                  |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       824 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       239 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       239 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       585 |
|                 jaybird                  |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       824 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       239 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       239 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        16 |        16 |        17 |        17 |        17 |        63 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        13 |        14 |        14 |        80 |
|                    Δ                     |        -3 |        -3 |        -4 |        -3 |        -4 |        -3 |        -3 |        17 |
|              Improvement %               |        20 |        20 |        25 |        19 |        24 |        18 |        18 |        17 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        16 |        16 |        17 |        17 |        17 |        63 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        13 |        14 |        14 |        80 |
|                    Δ                     |        -3 |        -3 |        -4 |        -3 |        -4 |        -3 |        -3 |        17 |
|              Improvement %               |        20 |        20 |        25 |        19 |        24 |        18 |        18 |        17 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        67 |        65 |        64 |        61 |        59 |        58 |        58 |        63 |
|                 jaybird                  |        86 |        85 |        81 |        78 |        76 |        71 |        71 |        80 |
|                    Δ                     |        19 |        20 |        17 |        17 |        17 |        13 |        13 |        17 |
|              Improvement %               |        28 |        31 |        27 |        28 |        29 |        22 |        22 |        17 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        37 |       144 |       260 |       378 |       444 |       485 |       485 |        63 |
|                 jaybird                  |        43 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |         6 |       -91 |      -207 |      -325 |      -391 |      -432 |      -432 |        17 |
|              Improvement %               |       -16 |        63 |        80 |        86 |        88 |        89 |        89 |        17 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        63 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        80 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        17 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        17 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       320 |       320 |       320 |       320 |       320 |       320 |        63 |
|                 jaybird                  |       239 |       240 |       241 |       241 |       244 |       253 |       253 |        80 |
|                    Δ                     |       -80 |       -80 |       -79 |       -79 |       -76 |       -67 |       -67 |        17 |
|              Improvement %               |        25 |        25 |        25 |        25 |        24 |        21 |        21 |        17 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        17 |        17 |        18 |        18 |        61 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        14 |        15 |        15 |        78 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -3 |        -3 |        -3 |        17 |
|              Improvement %               |        25 |        25 |        25 |        24 |        18 |        17 |        17 |        17 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        17 |        17 |        18 |        18 |        61 |
|                 jaybird                  |        12 |        12 |        12 |        13 |        14 |        15 |        15 |        78 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -3 |        -3 |        -3 |        17 |
|              Improvement %               |        25 |        25 |        25 |        24 |        18 |        17 |        17 |        17 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        63 |        61 |        59 |        57 |        56 |        56 |        61 |
|                 jaybird                  |        86 |        84 |        80 |        76 |        74 |        69 |        69 |        78 |
|                    Δ                     |        22 |        21 |        19 |        17 |        17 |        13 |        13 |        17 |
|              Improvement %               |        34 |        33 |        31 |        29 |        30 |        23 |        23 |        17 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        37 |       146 |       257 |       365 |       428 |       471 |       471 |        61 |
|                 jaybird                  |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        78 |
|                    Δ                     |         6 |       -94 |      -205 |      -313 |      -376 |      -419 |      -419 |        17 |
|              Improvement %               |       -16 |        64 |        80 |        86 |        88 |        89 |        89 |        17 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        61 |
|                 jaybird                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        78 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        17 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        17 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        61 |
|                 jaybird                  |       245 |       245 |       246 |       246 |       251 |       257 |       257 |        78 |
|                    Δ                     |       -79 |       -80 |       -79 |       -79 |       -74 |       -68 |       -68 |        17 |
|              Improvement %               |        24 |        25 |        24 |        24 |        23 |        21 |        21 |        17 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       191 |       199 |       204 |       220 |       228 |       245 |       279 |      3966 |
|                 jaybird                  |       133 |       137 |       140 |       152 |       158 |       166 |       189 |      5370 |
|                    Δ                     |       -58 |       -62 |       -64 |       -68 |       -70 |       -79 |       -90 |      1404 |
|              Improvement %               |        30 |        31 |        31 |        31 |        31 |        32 |        32 |      1404 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       192 |       201 |       207 |       222 |       230 |       245 |       282 |      3966 |
|                 jaybird                  |       135 |       139 |       142 |       154 |       160 |       167 |       187 |      5370 |
|                    Δ                     |       -57 |       -62 |       -65 |       -68 |       -70 |       -78 |       -95 |      1404 |
|              Improvement %               |        30 |        31 |        31 |        31 |        30 |        32 |        34 |      1404 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5247 |      5027 |      4895 |      4543 |      4391 |      4077 |      3579 |      3966 |
|                 jaybird                  |      7528 |      7327 |      7131 |      6579 |      6331 |      6039 |      5283 |      5370 |
|                    Δ                     |      2281 |      2300 |      2236 |      2036 |      1940 |      1962 |      1704 |      1404 |
|              Improvement %               |        43 |        46 |        46 |        45 |        44 |        48 |        48 |      1404 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       120 |       216 |       313 |       370 |       404 |       410 |      3966 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5370 |
|                    Δ                     |         0 |       -95 |      -191 |      -288 |      -345 |      -379 |      -385 |      1404 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |      1404 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      3966 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5370 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1404 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1404 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4079 |      4110 |      4121 |      4131 |      4141 |      4272 |      4308 |      3966 |
|                 jaybird                  |      2941 |      2943 |      2947 |      2949 |      2949 |      3019 |      3092 |      5370 |
|                    Δ                     |     -1138 |     -1167 |     -1174 |     -1182 |     -1192 |     -1253 |     -1216 |      1404 |
|              Improvement %               |        28 |        28 |        28 |        29 |        29 |        29 |        28 |      1404 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       195 |       205 |       210 |       227 |       236 |       254 |       286 |      3873 |
|                 jaybird                  |       136 |       143 |       147 |       155 |       165 |       175 |       194 |      5211 |
|                    Δ                     |       -59 |       -62 |       -63 |       -72 |       -71 |       -79 |       -92 |      1338 |
|              Improvement %               |        30 |        30 |        30 |        32 |        30 |        31 |        32 |      1338 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       197 |       207 |       212 |       230 |       238 |       253 |       284 |      3873 |
|                 jaybird                  |       138 |       146 |       149 |       157 |       167 |       176 |       197 |      5211 |
|                    Δ                     |       -59 |       -61 |       -63 |       -73 |       -71 |       -77 |       -87 |      1338 |
|              Improvement %               |        30 |        29 |        30 |        32 |        30 |        30 |        31 |      1338 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5136 |      4887 |      4771 |      4399 |      4235 |      3943 |      3494 |      3873 |
|                 jaybird                  |      7328 |      6971 |      6819 |      6455 |      6071 |      5719 |      5154 |      5211 |
|                    Δ                     |      2192 |      2084 |      2048 |      2056 |      1836 |      1776 |      1660 |      1338 |
|              Improvement %               |        43 |        43 |        43 |        47 |        43 |        45 |        48 |      1338 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       118 |       214 |       307 |       364 |       396 |       401 |      3873 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      5211 |
|                    Δ                     |         0 |       -93 |      -189 |      -282 |      -339 |      -371 |      -376 |      1338 |
|              Improvement %               |         0 |        79 |        88 |        92 |        93 |        94 |        94 |      1338 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      3873 |
|                 jaybird                  |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5211 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1338 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1338 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4146 |      4174 |      4184 |      4192 |      4207 |      4334 |      4485 |      3873 |
|                 jaybird                  |      2991 |      2994 |      2996 |      2998 |      3000 |      3066 |      3139 |      5211 |
|                    Δ                     |     -1155 |     -1180 |     -1188 |     -1194 |     -1207 |     -1268 |     -1346 |      1338 |
|              Improvement %               |        28 |        28 |        28 |        28 |        29 |        29 |        30 |      1338 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       280 |       291 |       297 |       322 |       334 |       350 |       387 |      2910 |
|                 jaybird                  |       101 |       103 |       106 |       115 |       119 |       125 |       146 |      6862 |
|                    Δ                     |      -179 |      -188 |      -191 |      -207 |      -215 |      -225 |      -241 |      3952 |
|              Improvement %               |        64 |        65 |        64 |        64 |        64 |        64 |        62 |      3952 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       282 |       293 |       299 |       324 |       336 |       351 |       385 |      2910 |
|                 jaybird                  |       103 |       105 |       109 |       117 |       121 |       127 |       150 |      6862 |
|                    Δ                     |      -179 |      -188 |      -190 |      -207 |      -215 |      -224 |      -235 |      3952 |
|              Improvement %               |        63 |        64 |        64 |        64 |        64 |        64 |        61 |      3952 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3567 |      3437 |      3369 |      3109 |      2999 |      2861 |      2586 |      2910 |
|                 jaybird                  |      9901 |      9679 |      9415 |      8695 |      8399 |      8035 |      6834 |      6862 |
|                    Δ                     |      6334 |      6242 |      6046 |      5586 |      5400 |      5174 |      4248 |      3952 |
|              Improvement %               |       178 |       182 |       179 |       180 |       180 |       181 |       164 |      3952 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        80 |       133 |       190 |       223 |       243 |       246 |      2910 |
|                 jaybird                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6862 |
|                    Δ                     |         0 |       -54 |      -107 |      -164 |      -197 |      -217 |      -220 |      3952 |
|              Improvement %               |         0 |        68 |        80 |        86 |        88 |        89 |        89 |      3952 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      2910 |
|                 jaybird                  |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      6862 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      3952 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      3952 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6975 |      6980 |      7000 |      7008 |      7123 |      7153 |      2910 |
|                 jaybird                  |      2478 |      2478 |      2480 |      2482 |      2484 |      2497 |      2693 |      6862 |
|                    Δ                     |     -4482 |     -4497 |     -4500 |     -4518 |     -4524 |     -4626 |     -4460 |      3952 |
|              Improvement %               |        64 |        64 |        64 |        65 |        65 |        65 |        62 |      3952 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       441 |       454 |       463 |       505 |       519 |       547 |       606 |      1936 |
|                 jaybird                  |        64 |        66 |        67 |        73 |        76 |        88 |       129 |      9442 |
|                    Δ                     |      -377 |      -388 |      -396 |      -432 |      -443 |      -459 |      -477 |      7506 |
|              Improvement %               |        85 |        85 |        86 |        86 |        85 |        84 |        79 |      7506 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       444 |       456 |       465 |       507 |       521 |       549 |       605 |      1936 |
|                 jaybird                  |        65 |        68 |        69 |        75 |        79 |        89 |       132 |      9442 |
|                    Δ                     |      -379 |      -388 |      -396 |      -432 |      -442 |      -460 |      -473 |      7506 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        84 |        78 |      7506 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2266 |      2203 |      2161 |      1979 |      1929 |      1829 |      1649 |      1936 |
|                 jaybird                  |     15697 |     15231 |     14895 |     13719 |     13095 |     11327 |      7777 |      9442 |
|                    Δ                     |     13431 |     13028 |     12734 |     11740 |     11166 |      9498 |      6128 |      7506 |
|              Improvement %               |       593 |       591 |       589 |       593 |       579 |       519 |       372 |      7506 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        70 |       114 |       159 |       187 |       203 |       205 |      1936 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      9442 |
|                    Δ                     |         0 |       -45 |       -89 |      -134 |      -162 |      -178 |      -180 |      7506 |
|              Improvement %               |         0 |        64 |        78 |        84 |        87 |        88 |        88 |      7506 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      1936 |
|                 jaybird                  |        10 |        10 |        10 |        10 |        10 |        10 |        10 |      9442 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      7506 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      7506 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9089 |      9118 |      9126 |      9134 |      9142 |      9273 |      9291 |      1936 |
|                 jaybird                  |      1533 |      1534 |      1535 |      1536 |      1538 |      1548 |      1685 |      9442 |
|                    Δ                     |     -7556 |     -7584 |     -7591 |     -7598 |     -7604 |     -7725 |     -7606 |      7506 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      7506 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       606 |       622 |       636 |       699 |       715 |       771 |       882 |      1418 |
|                 jaybird                  |        79 |        85 |        91 |        97 |       102 |       126 |       202 |      7430 |
|                    Δ                     |      -527 |      -537 |      -545 |      -602 |      -613 |      -645 |      -680 |      6012 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        84 |        77 |      6012 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       609 |       624 |       638 |       701 |       717 |       773 |       899 |      1418 |
|                 jaybird                  |        81 |        87 |        93 |        99 |       104 |       127 |       204 |      7430 |
|                    Δ                     |      -528 |      -537 |      -545 |      -602 |      -613 |      -646 |      -695 |      6012 |
|              Improvement %               |        87 |        86 |        85 |        86 |        85 |        84 |        77 |      6012 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1649 |      1608 |      1572 |      1431 |      1398 |      1297 |      1134 |      1418 |
|                 jaybird                  |     12672 |     11719 |     11015 |     10343 |      9815 |      7939 |      4954 |      7430 |
|                    Δ                     |     11023 |     10111 |      9443 |      8912 |      8417 |      6642 |      3820 |      6012 |
|              Improvement %               |       668 |       629 |       601 |       623 |       602 |       512 |       337 |      6012 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        39 |        53 |        67 |        76 |        81 |        82 |      1418 |
|                 jaybird                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      7430 |
|                    Δ                     |         0 |       -14 |       -28 |       -42 |       -51 |       -56 |       -57 |      6012 |
|              Improvement %               |         0 |        36 |        53 |        63 |        67 |        69 |        70 |      6012 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1418 |
|                 jaybird                  |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      7430 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      6012 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6012 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1418 |
|                 jaybird                  |         1 |         1 |         1 |         1 |         1 |         1 |         2 |      7430 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -12 |      6012 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        86 |      6012 |

<p>
</details>

