# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2513 |      2623 |      2669 |      2707 |      2738 |      3508 |      4033 |       367 |
|                  jbird                   |      1866 |      2040 |      2056 |      2078 |      2101 |      2439 |      2640 |       475 |
|                    Δ                     |      -647 |      -583 |      -613 |      -629 |      -637 |     -1069 |     -1393 |       108 |
|              Improvement %               |        26 |        22 |        23 |        23 |        23 |        30 |        35 |       108 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2514 |      2626 |      2673 |      2712 |      2742 |      3512 |      4038 |       367 |
|                  jbird                   |      1867 |      2043 |      2059 |      2080 |      2103 |      2443 |      2638 |       475 |
|                    Δ                     |      -647 |      -583 |      -614 |      -632 |      -639 |     -1069 |     -1400 |       108 |
|              Improvement %               |        26 |        22 |        23 |        23 |        23 |        30 |        35 |       108 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       398 |       381 |       375 |       369 |       365 |       285 |       248 |       367 |
|                  jbird                   |       536 |       490 |       486 |       481 |       476 |       410 |       379 |       475 |
|                    Δ                     |       138 |       109 |       111 |       112 |       111 |       125 |       131 |       108 |
|              Improvement %               |        35 |        29 |        30 |        30 |        30 |        44 |        53 |       108 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       158 |       290 |       422 |       506 |       554 |       559 |       367 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       475 |
|                    Δ                     |         3 |      -127 |      -259 |      -391 |      -475 |      -523 |      -528 |       108 |
|              Improvement %               |       -12 |        80 |        89 |        93 |        94 |        94 |        94 |       108 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       367 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       475 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       108 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       108 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        64 |       367 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        50 |        51 |       475 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -14 |       -13 |       108 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        22 |        20 |       108 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2599 |      2697 |      2730 |      2755 |      2802 |      2992 |      3027 |       361 |
|                  jbird                   |      1916 |      2075 |      2090 |      2105 |      2118 |      2177 |      2218 |       470 |
|                    Δ                     |      -683 |      -622 |      -640 |      -650 |      -684 |      -815 |      -809 |       109 |
|              Improvement %               |        26 |        23 |        23 |        24 |        24 |        27 |        27 |       109 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2600 |      2699 |      2732 |      2759 |      2804 |      2994 |      3029 |       361 |
|                  jbird                   |      1918 |      2077 |      2093 |      2107 |      2118 |      2185 |      2223 |       470 |
|                    Δ                     |      -682 |      -622 |      -639 |      -652 |      -686 |      -809 |      -806 |       109 |
|              Improvement %               |        26 |        23 |        23 |        24 |        24 |        27 |        27 |       109 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       385 |       371 |       366 |       363 |       357 |       334 |       330 |       361 |
|                  jbird                   |       522 |       482 |       478 |       475 |       473 |       459 |       451 |       470 |
|                    Δ                     |       137 |       111 |       112 |       112 |       116 |       125 |       121 |       109 |
|              Improvement %               |        36 |        30 |        31 |        31 |        32 |        37 |        37 |       109 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       158 |       286 |       414 |       496 |       541 |       547 |       361 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       470 |
|                    Δ                     |         3 |      -127 |      -255 |      -383 |      -465 |      -510 |      -516 |       109 |
|              Improvement %               |       -12 |        80 |        89 |        93 |        94 |        94 |        94 |       109 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       361 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       470 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       109 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       109 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       361 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       470 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -14 |       109 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        22 |       109 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       628 |       660 |       673 |       682 |       693 |       721 |       743 |      1415 |
|                  jbird                   |       467 |       507 |       509 |       513 |       519 |       536 |       584 |      1825 |
|                    Δ                     |      -161 |      -153 |      -164 |      -169 |      -174 |      -185 |      -159 |       410 |
|              Improvement %               |        26 |        23 |        24 |        25 |        25 |        26 |        21 |       410 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       630 |       662 |       675 |       685 |       695 |       723 |       746 |      1415 |
|                  jbird                   |       469 |       509 |       511 |       515 |       521 |       536 |       574 |      1825 |
|                    Δ                     |      -161 |      -153 |      -164 |      -170 |      -174 |      -187 |      -172 |       410 |
|              Improvement %               |        26 |        23 |        24 |        25 |        25 |        26 |        23 |       410 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1592 |      1516 |      1486 |      1466 |      1443 |      1386 |      1345 |      1415 |
|                  jbird                   |      2142 |      1974 |      1964 |      1950 |      1929 |      1867 |      1712 |      1825 |
|                    Δ                     |       550 |       458 |       478 |       484 |       486 |       481 |       367 |       410 |
|              Improvement %               |        35 |        30 |        32 |        33 |        34 |        35 |        27 |       410 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       155 |       285 |       414 |       492 |       537 |       543 |      1415 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1825 |
|                    Δ                     |         1 |      -128 |      -258 |      -387 |      -465 |      -510 |      -516 |       410 |
|              Improvement %               |        -4 |        83 |        91 |        93 |        95 |        95 |        95 |       410 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1415 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1825 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       410 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       410 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1415 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1825 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -3 |       410 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        19 |       410 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       657 |       681 |       693 |       703 |       711 |       739 |       785 |      1374 |
|                  jbird                   |       469 |       514 |       518 |       524 |       530 |       549 |       581 |      1794 |
|                    Δ                     |      -188 |      -167 |      -175 |      -179 |      -181 |      -190 |      -204 |       420 |
|              Improvement %               |        29 |        25 |        25 |        25 |        25 |        26 |        26 |       420 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       659 |       683 |       695 |       706 |       713 |       741 |       786 |      1374 |
|                  jbird                   |       471 |       516 |       520 |       526 |       532 |       551 |       585 |      1794 |
|                    Δ                     |      -188 |      -167 |      -175 |      -180 |      -181 |      -190 |      -201 |       420 |
|              Improvement %               |        29 |        24 |        25 |        25 |        25 |        26 |        26 |       420 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1521 |      1469 |      1444 |      1422 |      1408 |      1353 |      1274 |      1374 |
|                  jbird                   |      2134 |      1944 |      1931 |      1909 |      1887 |      1822 |      1722 |      1794 |
|                    Δ                     |       613 |       475 |       487 |       487 |       479 |       469 |       448 |       420 |
|              Improvement %               |        40 |        32 |        34 |        34 |        34 |        35 |        35 |       420 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       150 |       277 |       406 |       479 |       524 |       530 |      1374 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1794 |
|                    Δ                     |         1 |      -123 |      -250 |      -379 |      -452 |      -497 |      -503 |       420 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       420 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1374 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1794 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       420 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       420 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1374 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        13 |        13 |      1794 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       420 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        24 |        24 |       420 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1271 |      1323 |      1339 |      1359 |      1408 |      1493 |      1663 |       722 |
|                  jbird                   |       929 |      1009 |      1014 |      1020 |      1029 |      1053 |      1111 |       950 |
|                    Δ                     |      -342 |      -314 |      -325 |      -339 |      -379 |      -440 |      -552 |       228 |
|              Improvement %               |        27 |        24 |        24 |        25 |        27 |        29 |        33 |       228 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1273 |      1325 |      1341 |      1361 |      1410 |      1495 |      1660 |       722 |
|                  jbird                   |       931 |      1011 |      1016 |      1022 |      1031 |      1060 |      1116 |       950 |
|                    Δ                     |      -342 |      -314 |      -325 |      -339 |      -379 |      -435 |      -544 |       228 |
|              Improvement %               |        27 |        24 |        24 |        25 |        27 |        29 |        33 |       228 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       787 |       756 |       747 |       736 |       710 |       670 |       601 |       722 |
|                  jbird                   |      1076 |       991 |       986 |       981 |       972 |       950 |       900 |       950 |
|                    Δ                     |       289 |       235 |       239 |       245 |       262 |       280 |       299 |       228 |
|              Improvement %               |        37 |        31 |        32 |        33 |        37 |        42 |        50 |       228 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       158 |       283 |       420 |       499 |       544 |       550 |       722 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       950 |
|                    Δ                     |         0 |      -130 |      -255 |      -392 |      -471 |      -516 |      -522 |       228 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       228 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       722 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       950 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       228 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       228 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       722 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       950 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |        -7 |       228 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        22 |        22 |       228 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1326 |      1372 |      1388 |      1404 |      1420 |      1446 |      1490 |       702 |
|                  jbird                   |       937 |      1021 |      1026 |      1031 |      1040 |      1066 |      1132 |       938 |
|                    Δ                     |      -389 |      -351 |      -362 |      -373 |      -380 |      -380 |      -358 |       236 |
|              Improvement %               |        29 |        26 |        26 |        27 |        27 |        26 |        24 |       236 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1328 |      1374 |      1390 |      1406 |      1422 |      1449 |      1499 |       702 |
|                  jbird                   |       939 |      1023 |      1028 |      1034 |      1042 |      1068 |      1136 |       938 |
|                    Δ                     |      -389 |      -351 |      -362 |      -372 |      -380 |      -381 |      -363 |       236 |
|              Improvement %               |        29 |        26 |        26 |        26 |        27 |        26 |        24 |       236 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       754 |       729 |       721 |       713 |       704 |       692 |       671 |       702 |
|                  jbird                   |      1067 |       980 |       975 |       970 |       962 |       938 |       884 |       938 |
|                    Δ                     |       313 |       251 |       254 |       257 |       258 |       246 |       213 |       236 |
|              Improvement %               |        42 |        34 |        35 |        36 |        37 |        36 |        32 |       236 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       154 |       279 |       406 |       486 |       532 |       538 |       702 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       938 |
|                    Δ                     |         0 |      -126 |      -251 |      -378 |      -458 |      -504 |      -510 |       236 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |       236 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       702 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       938 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       236 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       236 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       702 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       938 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -7 |       236 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        21 |       236 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        14 |        14 |        76 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        92 |
|                    Δ                     |        -3 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        16 |
|              Improvement %               |        23 |        15 |        15 |        15 |        15 |        14 |        14 |        16 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        14 |        14 |        76 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        92 |
|                    Δ                     |        -3 |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        16 |
|              Improvement %               |        23 |        15 |        15 |        15 |        15 |        14 |        14 |        16 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        80 |        77 |        76 |        76 |        74 |        74 |        74 |        76 |
|                  jbird                   |        99 |        94 |        93 |        91 |        89 |        87 |        87 |        92 |
|                    Δ                     |        19 |        17 |        17 |        15 |        15 |        13 |        13 |        16 |
|              Improvement %               |        24 |        22 |        22 |        20 |        20 |        18 |        18 |        16 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       166 |       305 |       441 |       530 |       578 |       578 |        76 |
|                  jbird                   |        28 |        54 |        54 |        54 |        54 |        54 |        54 |        92 |
|                    Δ                     |       -11 |      -112 |      -251 |      -387 |      -476 |      -524 |      -524 |        16 |
|              Improvement %               |        28 |        67 |        82 |        88 |        90 |        91 |        91 |        16 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        76 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        92 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        16 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        16 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       320 |       320 |       320 |       320 |       321 |       321 |        76 |
|                  jbird                   |       243 |       246 |       246 |       249 |       251 |       260 |       260 |        92 |
|                    Δ                     |       -76 |       -74 |       -74 |       -71 |       -69 |       -61 |       -61 |        16 |
|              Improvement %               |        24 |        23 |        23 |        22 |        22 |        19 |        19 |        16 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        15 |        15 |        73 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        15 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        20 |        20 |        15 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        15 |        15 |        73 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        88 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        15 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        20 |        20 |        15 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        74 |        73 |        73 |        71 |        67 |        67 |        73 |
|                  jbird                   |        93 |        89 |        88 |        88 |        87 |        86 |        86 |        88 |
|                    Δ                     |        17 |        15 |        15 |        15 |        16 |        19 |        19 |        15 |
|              Improvement %               |        22 |        20 |        21 |        21 |        23 |        28 |        28 |        15 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        38 |       167 |       300 |       427 |       506 |       560 |       560 |        73 |
|                  jbird                   |        34 |        51 |        51 |        52 |        52 |        52 |        52 |        88 |
|                    Δ                     |        -4 |      -116 |      -249 |      -375 |      -454 |      -508 |      -508 |        15 |
|              Improvement %               |        11 |        69 |        83 |        88 |        90 |        91 |        91 |        15 |

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
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        73 |
|                  jbird                   |       250 |       254 |       254 |       254 |       255 |       263 |       263 |        88 |
|                    Δ                     |       -74 |       -71 |       -71 |       -71 |       -70 |       -62 |       -62 |        15 |
|              Improvement %               |        23 |        22 |        22 |        22 |        22 |        19 |        19 |        15 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       161 |       168 |       172 |       181 |       186 |       199 |       221 |      4762 |
|                  jbird                   |       115 |       123 |       129 |       131 |       132 |       141 |       190 |      6089 |
|                    Δ                     |       -46 |       -45 |       -43 |       -50 |       -54 |       -58 |       -31 |      1327 |
|              Improvement %               |        29 |        27 |        25 |        28 |        29 |        29 |        14 |      1327 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       163 |       170 |       174 |       183 |       188 |       202 |       223 |      4762 |
|                  jbird                   |       116 |       125 |       131 |       133 |       134 |       143 |       185 |      6089 |
|                    Δ                     |       -47 |       -45 |       -43 |       -50 |       -54 |       -59 |       -38 |      1327 |
|              Improvement %               |        29 |        26 |        25 |        27 |        29 |        29 |        17 |      1327 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6200 |      5955 |      5807 |      5527 |      5371 |      5039 |      4520 |      4762 |
|                  jbird                   |      8727 |      8127 |      7755 |      7619 |      7571 |      7123 |      5270 |      6089 |
|                    Δ                     |      2527 |      2172 |      1948 |      2092 |      2200 |      2084 |       750 |      1327 |
|              Improvement %               |        41 |        36 |        34 |        38 |        41 |        41 |        17 |      1327 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       140 |       254 |       370 |       439 |       483 |       488 |      4762 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6089 |
|                    Δ                     |         0 |      -114 |      -228 |      -344 |      -413 |      -457 |      -462 |      1327 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |      1327 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4762 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6089 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1327 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1327 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4106 |      4114 |      4125 |      4135 |      4260 |      4300 |      4762 |
|                  jbird                   |      3016 |      3017 |      3017 |      3017 |      3019 |      3090 |      3168 |      6089 |
|                    Δ                     |     -1066 |     -1089 |     -1097 |     -1108 |     -1116 |     -1170 |     -1132 |      1327 |
|              Improvement %               |        26 |        27 |        27 |        27 |        27 |        27 |        26 |      1327 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       174 |       178 |       188 |       193 |       205 |       222 |      4625 |
|                  jbird                   |       117 |       125 |       131 |       132 |       136 |       147 |       183 |      6019 |
|                    Δ                     |       -49 |       -49 |       -47 |       -56 |       -57 |       -58 |       -39 |      1394 |
|              Improvement %               |        30 |        28 |        26 |        30 |        30 |        28 |        18 |      1394 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       168 |       176 |       180 |       190 |       195 |       206 |       228 |      4625 |
|                  jbird                   |       118 |       127 |       133 |       134 |       138 |       149 |       186 |      6019 |
|                    Δ                     |       -50 |       -49 |       -47 |       -56 |       -57 |       -57 |       -42 |      1394 |
|              Improvement %               |        30 |        28 |        26 |        29 |        29 |        28 |        18 |      1394 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6017 |      5755 |      5615 |      5327 |      5187 |      4887 |      4497 |      4625 |
|                  jbird                   |      8556 |      8007 |      7651 |      7603 |      7351 |      6799 |      5455 |      6019 |
|                    Δ                     |      2539 |      2252 |      2036 |      2276 |      2164 |      1912 |       958 |      1394 |
|              Improvement %               |        42 |        39 |        36 |        43 |        42 |        39 |        21 |      1394 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       138 |       245 |       359 |       425 |       467 |       472 |      4625 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6019 |
|                    Δ                     |         0 |      -112 |      -219 |      -333 |      -399 |      -441 |      -446 |      1394 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1394 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4625 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6019 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1394 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1394 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4325 |      4369 |      4625 |
|                  jbird                   |      3062 |      3064 |      3064 |      3064 |      3064 |      3138 |      3208 |      6019 |
|                    Δ                     |     -1083 |     -1106 |     -1114 |     -1124 |     -1134 |     -1187 |     -1161 |      1394 |
|              Improvement %               |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1394 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        76 |        77 |        78 |        79 |        94 |       114 |      9322 |
|                  jbird                   |        48 |        49 |        53 |        54 |        54 |        61 |        80 |     11945 |
|                    Δ                     |       -28 |       -27 |       -24 |       -24 |       -25 |       -33 |       -34 |      2623 |
|              Improvement %               |        37 |        36 |        31 |        31 |        32 |        35 |        30 |      2623 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        79 |        80 |        81 |        97 |       115 |      9322 |
|                  jbird                   |        49 |        50 |        55 |        56 |        56 |        64 |        80 |     11945 |
|                    Δ                     |       -28 |       -28 |       -24 |       -24 |       -25 |       -33 |       -35 |      2623 |
|              Improvement %               |        36 |        36 |        30 |        30 |        31 |        34 |        30 |      2623 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        11 |         9 |      9322 |
|                  jbird                   |        21 |        21 |        19 |        19 |        18 |        16 |        12 |     11945 |
|                    Δ                     |         8 |         8 |         6 |         6 |         5 |         5 |         3 |      2623 |
|              Improvement %               |        62 |        62 |        46 |        46 |        38 |        45 |        33 |      2623 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        48 |        60 |        67 |        71 |        71 |      9322 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11945 |
|                    Δ                     |         0 |       -11 |       -23 |       -35 |       -42 |       -46 |       -46 |      2623 |
|              Improvement %               |         0 |        31 |        48 |        58 |        63 |        65 |        65 |      2623 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9322 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11945 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      2623 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      2623 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1166 |      1194 |      9322 |
|                  jbird                   |      1316 |      1317 |      1317 |      1317 |      1317 |      1346 |      1364 |     11945 |
|                    Δ                     |       168 |       168 |       167 |       161 |       157 |       180 |       170 |      2623 |
|              Improvement %               |       -15 |       -15 |       -15 |       -14 |       -14 |       -15 |       -14 |      2623 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       240 |       252 |       260 |       268 |       273 |       284 |       342 |      3419 |
|                  jbird                   |        87 |        93 |        97 |        98 |        98 |       107 |       159 |      7833 |
|                    Δ                     |      -153 |      -159 |      -163 |      -170 |      -175 |      -177 |      -183 |      4414 |
|              Improvement %               |        64 |        63 |        63 |        63 |        64 |        62 |        54 |      4414 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       241 |       253 |       262 |       270 |       275 |       286 |       333 |      3419 |
|                  jbird                   |        89 |        95 |        99 |       100 |       100 |       109 |       163 |      7833 |
|                    Δ                     |      -152 |      -158 |      -163 |      -170 |      -175 |      -177 |      -170 |      4414 |
|              Improvement %               |        63 |        62 |        62 |        63 |        64 |        62 |        51 |      4414 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4170 |      3975 |      3845 |      3735 |      3661 |      3517 |      2921 |      3419 |
|                  jbird                   |     11483 |     10719 |     10279 |     10223 |     10159 |      9383 |      6294 |      7833 |
|                    Δ                     |      7313 |      6744 |      6434 |      6488 |      6498 |      5866 |      3373 |      4414 |
|              Improvement %               |       175 |       170 |       167 |       174 |       177 |       167 |       115 |      4414 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        90 |       155 |       220 |       258 |       281 |       284 |      3419 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7833 |
|                    Δ                     |         0 |       -64 |      -129 |      -194 |      -232 |      -255 |      -258 |      4414 |
|              Improvement %               |         0 |        71 |        83 |        88 |        90 |        91 |        91 |      4414 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3419 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7833 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4414 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4414 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6967 |      6971 |      6996 |      7000 |      7111 |      7144 |      3419 |
|                  jbird                   |      2649 |      2650 |      2650 |      2650 |      2650 |      2658 |      2881 |      7833 |
|                    Δ                     |     -4311 |     -4317 |     -4321 |     -4346 |     -4350 |     -4453 |     -4263 |      4414 |
|              Improvement %               |        62 |        62 |        62 |        62 |        62 |        63 |        60 |      4414 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       378 |       392 |       403 |       409 |       416 |       437 |       463 |      2303 |
|                  jbird                   |        52 |        58 |        60 |        61 |        63 |        69 |       141 |     10962 |
|                    Δ                     |      -326 |      -334 |      -343 |      -348 |      -353 |      -368 |      -322 |      8659 |
|              Improvement %               |        86 |        85 |        85 |        85 |        85 |        84 |        70 |      8659 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       379 |       394 |       404 |       411 |       418 |       437 |       460 |      2303 |
|                  jbird                   |        54 |        60 |        62 |        63 |        65 |        72 |       145 |     10962 |
|                    Δ                     |      -325 |      -334 |      -342 |      -348 |      -353 |      -365 |      -315 |      8659 |
|              Improvement %               |        86 |        85 |        85 |        85 |        84 |        84 |        68 |      8659 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2648 |      2551 |      2485 |      2445 |      2403 |      2291 |      2160 |      2303 |
|                  jbird                   |     19200 |     17215 |     16783 |     16367 |     15879 |     14567 |      7107 |     10962 |
|                    Δ                     |     16552 |     14664 |     14298 |     13922 |     13476 |     12276 |      4947 |      8659 |
|              Improvement %               |       625 |       575 |       575 |       569 |       561 |       536 |       229 |      8659 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        79 |       132 |       186 |       218 |       237 |       240 |      2303 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10962 |
|                    Δ                     |         0 |       -53 |      -106 |      -160 |      -192 |      -211 |      -214 |      8659 |
|              Improvement %               |         0 |        67 |        80 |        86 |        88 |        89 |        89 |      8659 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2303 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10962 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8659 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8659 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9058 |      9085 |      9093 |      9093 |      9101 |      9232 |      9248 |      2303 |
|                  jbird                   |      1614 |      1615 |      1615 |      1615 |      1615 |      1621 |      1744 |     10962 |
|                    Δ                     |     -7444 |     -7470 |     -7478 |     -7478 |     -7486 |     -7611 |     -7504 |      8659 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |      8659 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        77 |        78 |        80 |        86 |        96 |       127 |      8892 |
|                  jbird                   |        28 |        31 |        31 |        32 |        34 |        38 |       469 |     15171 |
|                    Δ                     |       -45 |       -46 |       -47 |       -48 |       -52 |       -58 |       342 |      6279 |
|              Improvement %               |        62 |        60 |        60 |        60 |        60 |        60 |      -269 |      6279 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        78 |        80 |        82 |        87 |        98 |       128 |      8892 |
|                  jbird                   |        29 |        32 |        33 |        34 |        36 |        41 |       212 |     15171 |
|                    Δ                     |       -45 |       -46 |       -47 |       -48 |       -51 |       -57 |        84 |      6279 |
|              Improvement %               |        61 |        59 |        59 |        59 |        59 |        58 |       -66 |      6279 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        13 |        13 |        12 |        12 |        10 |         8 |      8892 |
|                  jbird                   |        36 |        33 |        32 |        32 |        29 |        26 |         2 |     15171 |
|                    Δ                     |        22 |        20 |        19 |        20 |        17 |        16 |        -6 |      6279 |
|              Improvement %               |       157 |       154 |       146 |       167 |       142 |       160 |       -75 |      6279 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       164 |       302 |       442 |       527 |       577 |       577 |      8892 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15171 |
|                    Δ                     |         0 |      -139 |      -277 |      -417 |      -502 |      -552 |      -552 |      6279 |
|              Improvement %               |         0 |        85 |        92 |        94 |        95 |        96 |        96 |      6279 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8892 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15171 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      6279 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      6279 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1890 |      1907 |      1912 |      1918 |      1925 |      2055 |      2084 |      8892 |
|                  jbird                   |       878 |       879 |       879 |       879 |       879 |       885 |      1169 |     15171 |
|                    Δ                     |     -1012 |     -1028 |     -1033 |     -1039 |     -1046 |     -1170 |      -915 |      6279 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        57 |        44 |      6279 |

<p>
</details>

