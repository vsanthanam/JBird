# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2577 |      2705 |      2746 |      2785 |      2826 |      3703 |      4377 |       357 |
|                  jbird                   |      1904 |      2037 |      2054 |      2088 |      2105 |      2994 |      4168 |       471 |
|                    Δ                     |      -673 |      -668 |      -692 |      -697 |      -721 |      -709 |      -209 |       114 |
|              Improvement %               |        26 |        25 |        25 |        25 |        26 |        19 |         5 |       114 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2578 |      2707 |      2750 |      2787 |      2826 |      3711 |      4381 |       357 |
|                  jbird                   |      1906 |      2039 |      2056 |      2090 |      2109 |      2998 |      4172 |       471 |
|                    Δ                     |      -672 |      -668 |      -694 |      -697 |      -717 |      -713 |      -209 |       114 |
|              Improvement %               |        26 |        25 |        25 |        25 |        25 |        19 |         5 |       114 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       388 |       370 |       364 |       359 |       354 |       270 |       228 |       357 |
|                  jbird                   |       525 |       491 |       487 |       479 |       475 |       334 |       240 |       471 |
|                    Δ                     |       137 |       121 |       123 |       120 |       121 |        64 |        12 |       114 |
|              Improvement %               |        35 |        33 |        34 |        33 |        34 |        24 |         5 |       114 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       154 |       283 |       414 |       491 |       538 |       545 |       357 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       471 |
|                    Δ                     |         3 |      -123 |      -252 |      -383 |      -460 |      -507 |      -514 |       114 |
|              Improvement %               |       -12 |        80 |        89 |        93 |        94 |        94 |        94 |       114 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       357 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       471 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       114 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       114 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       357 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        48 |        49 |       471 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       114 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       114 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2736 |      2851 |      2871 |      2894 |      2910 |      2976 |      2995 |       344 |
|                  jbird                   |      1906 |      2080 |      2096 |      2122 |      2140 |      2208 |      2264 |       468 |
|                    Δ                     |      -830 |      -771 |      -775 |      -772 |      -770 |      -768 |      -731 |       124 |
|              Improvement %               |        30 |        27 |        27 |        27 |        26 |        26 |        24 |       124 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2737 |      2853 |      2871 |      2896 |      2914 |      2976 |      2996 |       344 |
|                  jbird                   |      1908 |      2083 |      2099 |      2124 |      2142 |      2210 |      2270 |       468 |
|                    Δ                     |      -829 |      -770 |      -772 |      -772 |      -772 |      -766 |      -726 |       124 |
|              Improvement %               |        30 |        27 |        27 |        27 |        26 |        26 |        24 |       124 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       366 |       351 |       348 |       346 |       344 |       336 |       334 |       344 |
|                  jbird                   |       525 |       481 |       477 |       472 |       467 |       453 |       442 |       468 |
|                    Δ                     |       159 |       130 |       129 |       126 |       123 |       117 |       108 |       124 |
|              Improvement %               |        43 |        37 |        37 |        36 |        36 |        35 |        32 |       124 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       272 |       400 |       474 |       521 |       521 |       344 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       468 |
|                    Δ                     |         3 |      -118 |      -241 |      -369 |      -443 |      -490 |      -490 |       124 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        93 |        94 |        94 |       124 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       344 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       468 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       124 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       124 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        66 |       344 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       468 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -16 |       124 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        24 |       124 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       645 |       688 |       701 |       717 |       778 |       863 |       880 |      1335 |
|                  jbird                   |       459 |       506 |       510 |       515 |       520 |       541 |       607 |      1821 |
|                    Δ                     |      -186 |      -182 |      -191 |      -202 |      -258 |      -322 |      -273 |       486 |
|              Improvement %               |        29 |        26 |        27 |        28 |        33 |        37 |        31 |       486 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       647 |       690 |       702 |       718 |       779 |       865 |       881 |      1335 |
|                  jbird                   |       460 |       507 |       512 |       517 |       523 |       543 |       609 |      1821 |
|                    Δ                     |      -187 |      -183 |      -190 |      -201 |      -256 |      -322 |      -272 |       486 |
|              Improvement %               |        29 |        27 |        27 |        28 |        33 |        37 |        31 |       486 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1549 |      1453 |      1428 |      1396 |      1286 |      1159 |      1137 |      1335 |
|                  jbird                   |      2181 |      1978 |      1960 |      1942 |      1922 |      1850 |      1647 |      1821 |
|                    Δ                     |       632 |       525 |       532 |       546 |       636 |       691 |       510 |       486 |
|              Improvement %               |        41 |        36 |        37 |        39 |        49 |        60 |        45 |       486 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       143 |       267 |       393 |       465 |       510 |       516 |      1335 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1821 |
|                    Δ                     |         1 |      -116 |      -240 |      -366 |      -438 |      -483 |      -489 |       486 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       486 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1335 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1821 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       486 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       486 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1335 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1821 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |       486 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        29 |       486 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       649 |       694 |       707 |       726 |       752 |       788 |       871 |      1340 |
|                  jbird                   |       469 |       517 |       523 |       539 |       554 |       570 |       630 |      1769 |
|                    Δ                     |      -180 |      -177 |      -184 |      -187 |      -198 |      -218 |      -241 |       429 |
|              Improvement %               |        28 |        26 |        26 |        26 |        26 |        28 |        28 |       429 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       651 |       695 |       709 |       728 |       753 |       790 |       858 |      1340 |
|                  jbird                   |       470 |       518 |       525 |       540 |       556 |       571 |       615 |      1769 |
|                    Δ                     |      -181 |      -177 |      -184 |      -188 |      -197 |      -219 |      -243 |       429 |
|              Improvement %               |        28 |        25 |        26 |        26 |        26 |        28 |        28 |       429 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1540 |      1442 |      1415 |      1378 |      1330 |      1269 |      1149 |      1340 |
|                  jbird                   |      2132 |      1935 |      1913 |      1858 |      1805 |      1754 |      1588 |      1769 |
|                    Δ                     |       592 |       493 |       498 |       480 |       475 |       485 |       439 |       429 |
|              Improvement %               |        38 |        34 |        35 |        35 |        36 |        38 |        38 |       429 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       146 |       266 |       393 |       468 |       513 |       519 |      1340 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1769 |
|                    Δ                     |         1 |      -119 |      -239 |      -366 |      -441 |      -486 |      -492 |       429 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       429 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1340 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1769 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       429 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       429 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1340 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1769 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       429 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        24 |       429 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1285 |      1362 |      1374 |      1386 |      1403 |      1455 |      1506 |       709 |
|                  jbird                   |       926 |      1012 |      1019 |      1026 |      1035 |      1064 |      1131 |       945 |
|                    Δ                     |      -359 |      -350 |      -355 |      -360 |      -368 |      -391 |      -375 |       236 |
|              Improvement %               |        28 |        26 |        26 |        26 |        26 |        27 |        25 |       236 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1291 |      1364 |      1376 |      1389 |      1404 |      1460 |      1511 |       709 |
|                  jbird                   |       927 |      1013 |      1021 |      1028 |      1037 |      1064 |      1133 |       945 |
|                    Δ                     |      -364 |      -351 |      -355 |      -361 |      -367 |      -396 |      -378 |       236 |
|              Improvement %               |        28 |        26 |        26 |        26 |        26 |        27 |        25 |       236 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       778 |       734 |       728 |       721 |       713 |       687 |       664 |       709 |
|                  jbird                   |      1080 |       989 |       981 |       975 |       967 |       940 |       884 |       945 |
|                    Δ                     |       302 |       255 |       253 |       254 |       254 |       253 |       220 |       236 |
|              Improvement %               |        39 |        35 |        35 |        35 |        36 |        37 |        33 |       236 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       153 |       284 |       412 |       490 |       535 |       542 |       709 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       945 |
|                    Δ                     |         0 |      -125 |      -256 |      -384 |      -462 |      -507 |      -514 |       236 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       236 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       709 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       945 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       236 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       236 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       709 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       945 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |       236 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        24 |       236 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1327 |      1414 |      1427 |      1441 |      1463 |      1500 |      1545 |       683 |
|                  jbird                   |       932 |      1022 |      1027 |      1033 |      1041 |      1087 |      1163 |       937 |
|                    Δ                     |      -395 |      -392 |      -400 |      -408 |      -422 |      -413 |      -382 |       254 |
|              Improvement %               |        30 |        28 |        28 |        28 |        29 |        28 |        25 |       254 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1329 |      1415 |      1430 |      1443 |      1464 |      1501 |      1547 |       683 |
|                  jbird                   |       933 |      1024 |      1029 |      1035 |      1044 |      1092 |      1164 |       937 |
|                    Δ                     |      -396 |      -391 |      -401 |      -408 |      -420 |      -409 |      -383 |       254 |
|              Improvement %               |        30 |        28 |        28 |        28 |        29 |        27 |        25 |       254 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       753 |       707 |       701 |       694 |       684 |       667 |       647 |       683 |
|                  jbird                   |      1073 |       978 |       974 |       968 |       961 |       920 |       860 |       937 |
|                    Δ                     |       320 |       271 |       273 |       274 |       277 |       253 |       213 |       254 |
|              Improvement %               |        42 |        38 |        39 |        39 |        40 |        38 |        33 |       254 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       270 |       394 |       469 |       519 |       519 |       683 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       937 |
|                    Δ                     |         0 |      -121 |      -242 |      -366 |      -441 |      -491 |      -491 |       254 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       254 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       683 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       937 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       254 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       254 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       683 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       937 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       254 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       254 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        15 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        14 |        14 |        15 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        73 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        15 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        14 |        14 |        15 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        74 |        73 |        72 |        72 |        71 |        71 |        73 |
|                  jbird                   |        92 |        90 |        89 |        88 |        87 |        87 |        87 |        88 |
|                    Δ                     |        16 |        16 |        16 |        16 |        15 |        16 |        16 |        15 |
|              Improvement %               |        21 |        22 |        22 |        22 |        21 |        23 |        23 |        15 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       164 |       299 |       427 |       507 |       559 |       559 |        73 |
|                  jbird                   |        28 |        51 |        51 |        51 |        51 |        51 |        51 |        88 |
|                    Δ                     |       -11 |      -113 |      -248 |      -376 |      -456 |      -508 |      -508 |        15 |
|              Improvement %               |        28 |        69 |        83 |        88 |        90 |        91 |        91 |        15 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        73 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        88 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        15 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        15 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       319 |       319 |       319 |       320 |       320 |        73 |
|                  jbird                   |       244 |       248 |       248 |       248 |       248 |       252 |       252 |        88 |
|                    Δ                     |       -75 |       -71 |       -71 |       -71 |       -71 |       -68 |       -68 |        15 |
|              Improvement %               |        24 |        22 |        22 |        22 |        22 |        21 |        21 |        15 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        -2 |        16 |
|              Improvement %               |        21 |        21 |        21 |        21 |        14 |        14 |        14 |        16 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -3 |        -3 |        -3 |        -2 |        -2 |        -2 |        -2 |        16 |
|              Improvement %               |        21 |        21 |        21 |        14 |        14 |        14 |        14 |        16 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        71 |        71 |        71 |        70 |        70 |        70 |        71 |
|                  jbird                   |        91 |        88 |        88 |        87 |        83 |        82 |        82 |        87 |
|                    Δ                     |        17 |        17 |        17 |        16 |        13 |        12 |        12 |        16 |
|              Improvement %               |        23 |        24 |        24 |        23 |        19 |        17 |        17 |        16 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       161 |       289 |       418 |       495 |       541 |       541 |        71 |
|                  jbird                   |        28 |        50 |        50 |        50 |        51 |        51 |        51 |        87 |
|                    Δ                     |       -11 |      -111 |      -239 |      -368 |      -444 |      -490 |      -490 |        16 |
|              Improvement %               |        28 |        69 |        83 |        88 |        90 |        91 |        91 |        16 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        16 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        16 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       324 |       325 |       325 |       325 |       326 |       326 |        71 |
|                  jbird                   |       251 |       251 |       252 |       252 |       252 |       260 |       260 |        87 |
|                    Δ                     |       -73 |       -73 |       -73 |       -73 |       -73 |       -66 |       -66 |        16 |
|              Improvement %               |        23 |        23 |        22 |        22 |        22 |        20 |        20 |        16 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       161 |       173 |       180 |       187 |       191 |       203 |       298 |      4635 |
|                  jbird                   |       116 |       126 |       130 |       132 |       134 |       144 |       172 |      6042 |
|                    Δ                     |       -45 |       -47 |       -50 |       -55 |       -57 |       -59 |      -126 |      1407 |
|              Improvement %               |        28 |        27 |        28 |        29 |        30 |        29 |        42 |      1407 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       162 |       174 |       182 |       188 |       192 |       205 |       300 |      4635 |
|                  jbird                   |       117 |       128 |       131 |       133 |       135 |       146 |       165 |      6042 |
|                    Δ                     |       -45 |       -46 |       -51 |       -55 |       -57 |       -59 |      -135 |      1407 |
|              Improvement %               |        28 |        26 |        28 |        29 |        30 |        29 |        45 |      1407 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6227 |      5791 |      5559 |      5359 |      5247 |      4923 |      3353 |      4635 |
|                  jbird                   |      8618 |      7919 |      7699 |      7603 |      7487 |      6935 |      5821 |      6042 |
|                    Δ                     |      2391 |      2128 |      2140 |      2244 |      2240 |      2012 |      2468 |      1407 |
|              Improvement %               |        38 |        37 |        38 |        42 |        43 |        41 |        74 |      1407 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       137 |       251 |       359 |       428 |       467 |       473 |      4635 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6042 |
|                    Δ                     |         0 |      -111 |      -225 |      -333 |      -402 |      -441 |      -447 |      1407 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        94 |        95 |      1407 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4635 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6042 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1407 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1407 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4106 |      4114 |      4125 |      4133 |      4157 |      4335 |      4635 |
|                  jbird                   |      2981 |      2982 |      2982 |      2984 |      2984 |      3056 |      3152 |      6042 |
|                    Δ                     |     -1101 |     -1124 |     -1132 |     -1141 |     -1149 |     -1101 |     -1183 |      1407 |
|              Improvement %               |        27 |        27 |        28 |        28 |        28 |        26 |        27 |      1407 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       168 |       179 |       186 |       193 |       197 |       209 |       236 |      4506 |
|                  jbird                   |       116 |       127 |       131 |       132 |       135 |       143 |       194 |      6010 |
|                    Δ                     |       -52 |       -52 |       -55 |       -61 |       -62 |       -66 |       -42 |      1504 |
|              Improvement %               |        31 |        29 |        30 |        32 |        31 |        32 |        18 |      1504 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       170 |       180 |       188 |       194 |       199 |       211 |       237 |      4506 |
|                  jbird                   |       118 |       129 |       133 |       134 |       136 |       146 |       201 |      6010 |
|                    Δ                     |       -52 |       -51 |       -55 |       -60 |       -63 |       -65 |       -36 |      1504 |
|              Improvement %               |        31 |        28 |        29 |        31 |        32 |        31 |        15 |      1504 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5938 |      5587 |      5375 |      5187 |      5083 |      4787 |      4243 |      4506 |
|                  jbird                   |      8605 |      7863 |      7631 |      7567 |      7439 |      6971 |      5162 |      6010 |
|                    Δ                     |      2667 |      2276 |      2256 |      2380 |      2356 |      2184 |       919 |      1504 |
|              Improvement %               |        45 |        41 |        42 |        46 |        46 |        46 |        22 |      1504 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       134 |       244 |       354 |       416 |       460 |       460 |      4506 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6010 |
|                    Δ                     |         0 |      -109 |      -218 |      -328 |      -390 |      -434 |      -434 |      1504 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1504 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4506 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6010 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1504 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1504 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4219 |      4367 |      4506 |
|                  jbird                   |      3020 |      3021 |      3021 |      3023 |      3023 |      3095 |      3191 |      6010 |
|                    Δ                     |     -1125 |     -1149 |     -1157 |     -1165 |     -1175 |     -1124 |     -1176 |      1504 |
|              Improvement %               |        27 |        28 |        28 |        28 |        28 |        27 |        27 |      1504 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        77 |        79 |        83 |        93 |       121 |      9293 |
|                  jbird                   |        56 |        58 |        63 |        63 |        64 |        72 |        95 |     10765 |
|                    Δ                     |       -19 |       -18 |       -14 |       -16 |       -19 |       -21 |       -26 |      1472 |
|              Improvement %               |        25 |        24 |        18 |        20 |        23 |        23 |        21 |      1472 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        78 |        80 |        85 |        95 |       112 |      9293 |
|                  jbird                   |        57 |        59 |        65 |        65 |        65 |        73 |        89 |     10765 |
|                    Δ                     |       -20 |       -19 |       -13 |       -15 |       -20 |       -22 |       -23 |      1472 |
|              Improvement %               |        26 |        24 |        17 |        19 |        24 |        23 |        21 |      1472 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        12 |        11 |         8 |      9293 |
|                  jbird                   |        18 |        17 |        16 |        16 |        16 |        14 |        11 |     10765 |
|                    Δ                     |         5 |         4 |         3 |         3 |         4 |         3 |         3 |      1472 |
|              Improvement %               |        38 |        31 |        23 |        23 |        33 |        27 |        38 |      1472 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        48 |        60 |        66 |        71 |        71 |      9293 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10765 |
|                    Δ                     |         0 |       -11 |       -23 |       -35 |       -41 |       -46 |       -46 |      1472 |
|              Improvement %               |         0 |        31 |        48 |        58 |        62 |        65 |        65 |      1472 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9293 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10765 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      1472 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      1472 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1167 |      1262 |      9293 |
|                  jbird                   |      1513 |      1513 |      1513 |      1513 |      1513 |      1542 |      1616 |     10765 |
|                    Δ                     |       365 |       364 |       363 |       357 |       353 |       375 |       354 |      1472 |
|              Improvement %               |       -32 |       -32 |       -32 |       -31 |       -30 |       -32 |       -28 |      1472 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       240 |       261 |       268 |       273 |       278 |       290 |       328 |      3337 |
|                  jbird                   |        87 |        96 |        99 |       100 |       101 |       110 |       134 |      7744 |
|                    Δ                     |      -153 |      -165 |      -169 |      -173 |      -177 |      -180 |      -194 |      4407 |
|              Improvement %               |        64 |        63 |        63 |        63 |        64 |        62 |        59 |      4407 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       241 |       263 |       269 |       275 |       280 |       291 |       329 |      3337 |
|                  jbird                   |        89 |        98 |       100 |       101 |       102 |       112 |       137 |      7744 |
|                    Δ                     |      -152 |      -165 |      -169 |      -174 |      -178 |      -179 |      -192 |      4407 |
|              Improvement %               |        63 |        63 |        63 |        63 |        64 |        62 |        58 |      4407 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4170 |      3833 |      3739 |      3659 |      3599 |      3451 |      3051 |      3337 |
|                  jbird                   |     11434 |     10399 |     10151 |     10023 |      9935 |      9087 |      7472 |      7744 |
|                    Δ                     |      7264 |      6566 |      6412 |      6364 |      6336 |      5636 |      4421 |      4407 |
|              Improvement %               |       174 |       171 |       171 |       174 |       176 |       163 |       145 |      4407 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        88 |       152 |       215 |       253 |       275 |       279 |      3337 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7744 |
|                    Δ                     |         0 |       -62 |      -126 |      -189 |      -227 |      -249 |      -253 |      4407 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        91 |        91 |      4407 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3337 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7744 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4407 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4407 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6959 |      6967 |      6971 |      6984 |      7000 |      7012 |      7270 |      3337 |
|                  jbird                   |      2593 |      2595 |      2595 |      2595 |      2595 |      2609 |      2824 |      7744 |
|                    Δ                     |     -4366 |     -4372 |     -4376 |     -4389 |     -4405 |     -4403 |     -4446 |      4407 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        61 |      4407 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       380 |       410 |       414 |       419 |       425 |       442 |       481 |      2236 |
|                  jbird                   |        56 |        62 |        64 |        64 |        65 |        73 |       138 |     10581 |
|                    Δ                     |      -324 |      -348 |      -350 |      -355 |      -360 |      -369 |      -343 |      8345 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        83 |        71 |      8345 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       381 |       411 |       415 |       421 |       426 |       443 |       474 |      2236 |
|                  jbird                   |        58 |        64 |        65 |        66 |        66 |        76 |       141 |     10581 |
|                    Δ                     |      -323 |      -347 |      -350 |      -355 |      -360 |      -367 |      -333 |      8345 |
|              Improvement %               |        85 |        84 |        84 |        84 |        85 |        83 |        70 |      8345 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2634 |      2443 |      2415 |      2387 |      2355 |      2265 |      2077 |      2236 |
|                  jbird                   |     17725 |     16015 |     15663 |     15575 |     15415 |     13663 |      7266 |     10581 |
|                    Δ                     |     15091 |     13572 |     13248 |     13188 |     13060 |     11398 |      5189 |      8345 |
|              Improvement %               |       573 |       556 |       549 |       552 |       555 |       503 |       250 |      8345 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        77 |       127 |       180 |       211 |       230 |       232 |      2236 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10581 |
|                    Δ                     |         0 |       -51 |      -101 |      -154 |      -185 |      -204 |      -206 |      8345 |
|              Improvement %               |         0 |        66 |        80 |        86 |        88 |        89 |        89 |      8345 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2236 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10581 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8345 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8345 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9087 |      9110 |      9118 |      9118 |      9126 |      9249 |      9554 |      2236 |
|                  jbird                   |      1587 |      1587 |      1588 |      1589 |      1589 |      1595 |      1722 |     10581 |
|                    Δ                     |     -7500 |     -7523 |     -7530 |     -7529 |     -7537 |     -7654 |     -7832 |      8345 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      8345 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        79 |        82 |        88 |        90 |        97 |       133 |      8555 |
|                  jbird                   |        28 |        31 |        31 |        31 |        31 |        37 |        76 |     15397 |
|                    Δ                     |       -47 |       -48 |       -51 |       -57 |       -59 |       -60 |       -57 |      6842 |
|              Improvement %               |        63 |        61 |        62 |        65 |        66 |        62 |        43 |      6842 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        81 |        84 |        89 |        91 |        99 |       123 |      8555 |
|                  jbird                   |        29 |        32 |        33 |        33 |        33 |        39 |        78 |     15397 |
|                    Δ                     |       -48 |       -49 |       -51 |       -56 |       -58 |       -60 |       -45 |      6842 |
|              Improvement %               |        62 |        60 |        61 |        63 |        64 |        61 |        37 |      6842 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        12 |        11 |        11 |        10 |         8 |      8555 |
|                  jbird                   |        36 |        32 |        32 |        32 |        32 |        27 |        13 |     15397 |
|                    Δ                     |        23 |        19 |        20 |        21 |        21 |        17 |         5 |      6842 |
|              Improvement %               |       177 |       146 |       167 |       191 |       191 |       170 |        62 |      6842 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       157 |       292 |       423 |       505 |       552 |       559 |      8555 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     15397 |
|                    Δ                     |         0 |      -132 |      -266 |      -397 |      -479 |      -526 |      -533 |      6842 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      6842 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8555 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15397 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      6842 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      6842 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1891 |      1907 |      1912 |      1918 |      1924 |      1936 |      2007 |      8555 |
|                  jbird                   |       877 |       878 |       878 |       878 |       878 |       883 |       945 |     15397 |
|                    Δ                     |     -1014 |     -1029 |     -1034 |     -1040 |     -1046 |     -1053 |     -1062 |      6842 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        54 |        53 |      6842 |

<p>
</details>

