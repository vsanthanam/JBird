# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2588 |      2714 |      2732 |      2750 |      2773 |      2814 |      3943 |       361 |
|                  jbird                   |      1894 |      2080 |      2107 |      2124 |      2150 |      2697 |      3532 |       465 |
|                    Δ                     |      -694 |      -634 |      -625 |      -626 |      -623 |      -117 |      -411 |       104 |
|              Improvement %               |        27 |        23 |        23 |        23 |        22 |         4 |        10 |       104 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2590 |      2716 |      2734 |      2753 |      2775 |      2820 |      3949 |       361 |
|                  jbird                   |      1895 |      2083 |      2109 |      2128 |      2152 |      2699 |      3538 |       465 |
|                    Δ                     |      -695 |      -633 |      -625 |      -625 |      -623 |      -121 |      -411 |       104 |
|              Improvement %               |        27 |        23 |        23 |        23 |        22 |         4 |        10 |       104 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       386 |       369 |       366 |       364 |       361 |       356 |       254 |       361 |
|                  jbird                   |       528 |       481 |       475 |       471 |       465 |       371 |       283 |       465 |
|                    Δ                     |       142 |       112 |       109 |       107 |       104 |        15 |        29 |       104 |
|              Improvement %               |        37 |        30 |        30 |        29 |        29 |         4 |        11 |       104 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       154 |       285 |       420 |       494 |       541 |       547 |       361 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       465 |
|                    Δ                     |         3 |      -123 |      -254 |      -389 |      -463 |      -510 |      -516 |       104 |
|              Improvement %               |       -12 |        80 |        89 |        93 |        94 |        94 |        94 |       104 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       361 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       465 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       104 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       104 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        64 |       361 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        48 |        49 |       465 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       104 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        23 |       104 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2671 |      2789 |      2810 |      2828 |      2851 |      2900 |      2989 |       352 |
|                  jbird                   |      1910 |      2051 |      2068 |      2097 |      2152 |      2193 |      2223 |       473 |
|                    Δ                     |      -761 |      -738 |      -742 |      -731 |      -699 |      -707 |      -766 |       121 |
|              Improvement %               |        28 |        26 |        26 |        26 |        25 |        24 |        26 |       121 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2672 |      2793 |      2812 |      2830 |      2853 |      2902 |      2995 |       352 |
|                  jbird                   |      1912 |      2053 |      2071 |      2099 |      2154 |      2195 |      2225 |       473 |
|                    Δ                     |      -760 |      -740 |      -741 |      -731 |      -699 |      -707 |      -770 |       121 |
|              Improvement %               |        28 |        26 |        26 |        26 |        25 |        24 |        26 |       121 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       374 |       358 |       356 |       354 |       351 |       345 |       335 |       352 |
|                  jbird                   |       524 |       488 |       484 |       477 |       465 |       456 |       450 |       473 |
|                    Δ                     |       150 |       130 |       128 |       123 |       114 |       111 |       115 |       121 |
|              Improvement %               |        40 |        36 |        36 |        35 |        32 |        32 |        34 |       121 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       152 |       279 |       410 |       482 |       530 |       536 |       352 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       473 |
|                    Δ                     |         3 |      -121 |      -248 |      -379 |      -451 |      -499 |      -505 |       121 |
|              Improvement %               |       -12 |        80 |        89 |        92 |        94 |        94 |        94 |       121 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       352 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       473 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       121 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       121 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       352 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        50 |       473 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -15 |       121 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        23 |       121 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       647 |       678 |       690 |       700 |       708 |       729 |       742 |      1382 |
|                  jbird                   |       464 |       504 |       510 |       525 |       530 |       544 |       616 |      1813 |
|                    Δ                     |      -183 |      -174 |      -180 |      -175 |      -178 |      -185 |      -126 |       431 |
|              Improvement %               |        28 |        26 |        26 |        25 |        25 |        25 |        17 |       431 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       649 |       680 |       692 |       701 |       710 |       729 |       743 |      1382 |
|                  jbird                   |       466 |       506 |       512 |       527 |       532 |       547 |       620 |      1813 |
|                    Δ                     |      -183 |      -174 |      -180 |      -174 |      -178 |      -182 |      -123 |       431 |
|              Improvement %               |        28 |        26 |        26 |        25 |        25 |        25 |        17 |       431 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1545 |      1476 |      1450 |      1430 |      1413 |      1373 |      1348 |      1382 |
|                  jbird                   |      2155 |      1983 |      1962 |      1905 |      1886 |      1839 |      1623 |      1813 |
|                    Δ                     |       610 |       507 |       512 |       475 |       473 |       466 |       275 |       431 |
|              Improvement %               |        39 |        34 |        35 |        33 |        33 |        34 |        20 |       431 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       149 |       276 |       402 |       484 |       528 |       535 |      1382 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1813 |
|                    Δ                     |         1 |      -122 |      -249 |      -375 |      -457 |      -501 |      -508 |       431 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       431 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1382 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1813 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       431 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       431 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1382 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1813 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       431 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       431 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       656 |       695 |       707 |       717 |       726 |       750 |       875 |      1349 |
|                  jbird                   |       475 |       511 |       516 |       525 |       534 |       553 |       597 |      1796 |
|                    Δ                     |      -181 |      -184 |      -191 |      -192 |      -192 |      -197 |      -278 |       447 |
|              Improvement %               |        28 |        26 |        27 |        27 |        26 |        26 |        32 |       447 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       658 |       697 |       709 |       719 |       728 |       748 |       862 |      1349 |
|                  jbird                   |       477 |       513 |       518 |       527 |       536 |       555 |       601 |      1796 |
|                    Δ                     |      -181 |      -184 |      -191 |      -192 |      -192 |      -193 |      -261 |       447 |
|              Improvement %               |        28 |        26 |        27 |        27 |        26 |        26 |        30 |       447 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1524 |      1439 |      1415 |      1394 |      1378 |      1333 |      1143 |      1349 |
|                  jbird                   |      2104 |      1958 |      1937 |      1905 |      1874 |      1808 |      1674 |      1796 |
|                    Δ                     |       580 |       519 |       522 |       511 |       496 |       475 |       531 |       447 |
|              Improvement %               |        38 |        36 |        37 |        37 |        36 |        36 |        46 |       447 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       147 |       269 |       398 |       472 |       516 |       523 |      1349 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1796 |
|                    Δ                     |         1 |      -120 |      -242 |      -371 |      -445 |      -489 |      -496 |       447 |
|              Improvement %               |        -4 |        82 |        90 |        93 |        94 |        95 |        95 |       447 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1349 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1796 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       447 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       447 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1349 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1796 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       447 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       447 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1274 |      1351 |      1365 |      1379 |      1394 |      1681 |      1714 |       710 |
|                  jbird                   |       941 |      1011 |      1020 |      1029 |      1038 |      1064 |      1136 |       945 |
|                    Δ                     |      -333 |      -340 |      -345 |      -350 |      -356 |      -617 |      -578 |       235 |
|              Improvement %               |        26 |        25 |        25 |        25 |        26 |        37 |        34 |       235 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1275 |      1353 |      1367 |      1381 |      1396 |      1683 |      1715 |       710 |
|                  jbird                   |       942 |      1013 |      1022 |      1031 |      1040 |      1067 |      1140 |       945 |
|                    Δ                     |      -333 |      -340 |      -345 |      -350 |      -356 |      -616 |      -575 |       235 |
|              Improvement %               |        26 |        25 |        25 |        25 |        26 |        37 |        34 |       235 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       785 |       740 |       733 |       725 |       718 |       595 |       584 |       710 |
|                  jbird                   |      1063 |       989 |       981 |       972 |       964 |       941 |       880 |       945 |
|                    Δ                     |       278 |       249 |       248 |       247 |       246 |       346 |       296 |       235 |
|              Improvement %               |        35 |        34 |        34 |        34 |        34 |        58 |        51 |       235 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       149 |       281 |       413 |       492 |       539 |       539 |       710 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       945 |
|                    Δ                     |         1 |      -121 |      -253 |      -385 |      -464 |      -511 |      -511 |       235 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       235 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       710 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       945 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       235 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       235 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       710 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       945 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |       235 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        22 |       235 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1324 |      1396 |      1410 |      1424 |      1439 |      1468 |      1507 |       692 |
|                  jbird                   |       955 |      1036 |      1055 |      1068 |      1076 |      1100 |      1198 |       917 |
|                    Δ                     |      -369 |      -360 |      -355 |      -356 |      -363 |      -368 |      -309 |       225 |
|              Improvement %               |        28 |        26 |        25 |        25 |        25 |        25 |        21 |       225 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1325 |      1398 |      1412 |      1426 |      1440 |      1474 |      1508 |       692 |
|                  jbird                   |       956 |      1037 |      1056 |      1070 |      1078 |      1102 |      1202 |       917 |
|                    Δ                     |      -369 |      -361 |      -356 |      -356 |      -362 |      -372 |      -306 |       225 |
|              Improvement %               |        28 |        26 |        25 |        25 |        25 |        25 |        20 |       225 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       755 |       717 |       709 |       702 |       695 |       681 |       664 |       692 |
|                  jbird                   |      1047 |       966 |       949 |       937 |       929 |       910 |       835 |       917 |
|                    Δ                     |       292 |       249 |       240 |       235 |       234 |       229 |       171 |       225 |
|              Improvement %               |        39 |        35 |        34 |        33 |        34 |        34 |        26 |       225 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       273 |       402 |       481 |       525 |       525 |       692 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       917 |
|                    Δ                     |         0 |      -119 |      -245 |      -374 |      -453 |      -497 |      -497 |       225 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       225 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       692 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       917 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       225 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       225 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       692 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       917 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       225 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       225 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        93 |
|                    Δ                     |        -3 |        -2 |        -3 |        -3 |        -3 |        -2 |        -2 |        19 |
|              Improvement %               |        23 |        15 |        21 |        21 |        21 |        14 |        14 |        19 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        93 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        19 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        14 |        14 |        19 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        74 |        73 |        73 |        73 |        72 |        72 |        74 |
|                  jbird                   |        99 |        95 |        94 |        93 |        90 |        86 |        86 |        93 |
|                    Δ                     |        23 |        21 |        21 |        20 |        17 |        14 |        14 |        19 |
|              Improvement %               |        30 |        28 |        29 |        27 |        23 |        19 |        19 |        19 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       170 |       296 |       433 |       513 |       566 |       566 |        74 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        93 |
|                    Δ                     |       -11 |      -118 |      -244 |      -381 |      -461 |      -514 |      -514 |        19 |
|              Improvement %               |        28 |        69 |        82 |        88 |        90 |        91 |        91 |        19 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        74 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        93 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        19 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        19 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       320 |       320 |       320 |       320 |       320 |       320 |        74 |
|                  jbird                   |       240 |       243 |       243 |       243 |       245 |       255 |       255 |        93 |
|                    Δ                     |       -79 |       -77 |       -77 |       -77 |       -75 |       -65 |       -65 |        19 |
|              Improvement %               |        25 |        24 |        24 |        24 |        23 |        20 |        20 |        19 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        20 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        14 |        14 |        20 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        12 |        12 |        91 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        20 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        14 |        14 |        20 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        72 |        71 |        71 |        70 |        70 |        70 |        71 |
|                  jbird                   |        97 |        93 |        93 |        92 |        90 |        84 |        84 |        91 |
|                    Δ                     |        23 |        21 |        22 |        21 |        20 |        14 |        14 |        20 |
|              Improvement %               |        31 |        29 |        31 |        30 |        29 |        20 |        20 |        20 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       156 |       292 |       418 |       490 |       542 |       542 |        71 |
|                  jbird                   |        28 |        52 |        52 |        52 |        53 |        53 |        53 |        91 |
|                    Δ                     |       -11 |      -104 |      -240 |      -366 |      -437 |      -489 |      -489 |        20 |
|              Improvement %               |        28 |        67 |        82 |        88 |        89 |        90 |        90 |        20 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        91 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        20 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        20 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        71 |
|                  jbird                   |       246 |       247 |       247 |       248 |       248 |       259 |       259 |        91 |
|                    Δ                     |       -78 |       -78 |       -78 |       -77 |       -77 |       -66 |       -66 |        20 |
|              Improvement %               |        24 |        24 |        24 |        24 |        24 |        20 |        20 |        20 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       162 |       172 |       179 |       187 |       192 |       205 |      6084 |      4600 |
|                  jbird                   |       116 |       121 |       128 |       132 |       133 |       142 |       184 |      6131 |
|                    Δ                     |       -46 |       -51 |       -51 |       -55 |       -59 |       -63 |     -5900 |      1531 |
|              Improvement %               |        28 |        30 |        28 |        29 |        31 |        31 |        97 |      1531 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       163 |       174 |       181 |       189 |       194 |       207 |       654 |      4600 |
|                  jbird                   |       118 |       123 |       130 |       133 |       135 |       144 |       188 |      6131 |
|                    Δ                     |       -45 |       -51 |       -51 |       -56 |       -59 |       -63 |      -466 |      1531 |
|              Improvement %               |        28 |        29 |        28 |        30 |        30 |        30 |        71 |      1531 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6189 |      5815 |      5599 |      5355 |      5219 |      4875 |       164 |      4600 |
|                  jbird                   |      8587 |      8255 |      7827 |      7607 |      7531 |      7035 |      5437 |      6131 |
|                    Δ                     |      2398 |      2440 |      2228 |      2252 |      2312 |      2160 |      5273 |      1531 |
|              Improvement %               |        39 |        42 |        40 |        42 |        44 |        44 |      3215 |      1531 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       137 |       243 |       360 |       428 |       466 |       472 |      4600 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6131 |
|                    Δ                     |         0 |      -112 |      -218 |      -335 |      -403 |      -441 |      -447 |      1531 |
|              Improvement %               |         0 |        82 |        90 |        93 |        94 |        95 |        95 |      1531 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4600 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6131 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1531 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1531 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4106 |      4114 |      4125 |      4133 |      4264 |      4287 |      4600 |
|                  jbird                   |      2967 |      2968 |      2968 |      2968 |      2970 |      3041 |      3118 |      6131 |
|                    Δ                     |     -1115 |     -1138 |     -1146 |     -1157 |     -1163 |     -1223 |     -1169 |      1531 |
|              Improvement %               |        27 |        28 |        28 |        28 |        28 |        29 |        27 |      1531 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       169 |       177 |       184 |       192 |       196 |       209 |       733 |      4530 |
|                  jbird                   |       118 |       125 |       130 |       134 |       136 |       144 |       180 |      6039 |
|                    Δ                     |       -51 |       -52 |       -54 |       -58 |       -60 |       -65 |      -553 |      1509 |
|              Improvement %               |        30 |        29 |        29 |        30 |        31 |        31 |        75 |      1509 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       171 |       179 |       185 |       194 |       198 |       211 |       496 |      4530 |
|                  jbird                   |       120 |       126 |       132 |       136 |       138 |       147 |       184 |      6039 |
|                    Δ                     |       -51 |       -53 |       -53 |       -58 |       -60 |       -64 |      -312 |      1509 |
|              Improvement %               |        30 |        30 |        29 |        30 |        30 |        30 |        63 |      1509 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5905 |      5651 |      5447 |      5211 |      5103 |      4787 |      1365 |      4530 |
|                  jbird                   |      8439 |      8035 |      7671 |      7475 |      7339 |      6931 |      5543 |      6039 |
|                    Δ                     |      2534 |      2384 |      2224 |      2264 |      2236 |      2144 |      4178 |      1509 |
|              Improvement %               |        43 |        42 |        41 |        43 |        44 |        45 |       306 |      1509 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       244 |       355 |       420 |       457 |       463 |      4530 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6039 |
|                    Δ                     |         0 |      -106 |      -219 |      -330 |      -395 |      -432 |      -438 |      1509 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |      1509 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4530 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6039 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1509 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1509 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4325 |      4761 |      4530 |
|                  jbird                   |      3025 |      3025 |      3027 |      3027 |      3027 |      3099 |      3176 |      6039 |
|                    Δ                     |     -1120 |     -1145 |     -1151 |     -1161 |     -1171 |     -1226 |     -1585 |      1509 |
|              Improvement %               |        27 |        27 |        28 |        28 |        28 |        28 |        33 |      1509 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       242 |       259 |       266 |       272 |       277 |       291 |       341 |      3353 |
|                  jbird                   |        88 |        94 |        99 |       101 |       103 |       110 |       162 |      7757 |
|                    Δ                     |      -154 |      -165 |      -167 |      -171 |      -174 |      -181 |      -179 |      4404 |
|              Improvement %               |        64 |        64 |        63 |        63 |        63 |        62 |        52 |      4404 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       244 |       261 |       268 |       274 |       279 |       292 |       315 |      3353 |
|                  jbird                   |        90 |        95 |       101 |       103 |       105 |       113 |       166 |      7757 |
|                    Δ                     |      -154 |      -166 |      -167 |      -171 |      -174 |      -179 |      -149 |      4404 |
|              Improvement %               |        63 |        64 |        62 |        62 |        62 |        61 |        47 |      4404 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4127 |      3861 |      3761 |      3679 |      3609 |      3433 |      2934 |      3353 |
|                  jbird                   |     11305 |     10703 |     10111 |      9927 |      9711 |      9111 |      6182 |      7757 |
|                    Δ                     |      7178 |      6842 |      6350 |      6248 |      6102 |      5678 |      3248 |      4404 |
|              Improvement %               |       174 |       177 |       169 |       170 |       169 |       165 |       111 |      4404 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        86 |       152 |       215 |       253 |       275 |       278 |      3353 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7757 |
|                    Δ                     |         0 |       -60 |      -126 |      -189 |      -227 |      -249 |      -252 |      4404 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        91 |        91 |      4404 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3353 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7757 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4404 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4404 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6959 |      6967 |      6971 |      6996 |      7000 |      7111 |      7144 |      3353 |
|                  jbird                   |      2558 |      2558 |      2558 |      2558 |      2558 |      2566 |      2784 |      7757 |
|                    Δ                     |     -4401 |     -4409 |     -4413 |     -4438 |     -4442 |     -4545 |     -4360 |      4404 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        64 |        61 |      4404 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       382 |       408 |       412 |       418 |       422 |       443 |       464 |      2244 |
|                  jbird                   |        56 |        61 |        64 |        66 |        68 |        74 |       144 |     10556 |
|                    Δ                     |      -326 |      -347 |      -348 |      -352 |      -354 |      -369 |      -320 |      8312 |
|              Improvement %               |        85 |        85 |        84 |        84 |        84 |        83 |        69 |      8312 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       384 |       410 |       414 |       420 |       424 |       445 |       467 |      2244 |
|                  jbird                   |        58 |        62 |        65 |        68 |        70 |        77 |       150 |     10556 |
|                    Δ                     |      -326 |      -348 |      -349 |      -352 |      -354 |      -368 |      -317 |      8312 |
|              Improvement %               |        85 |        85 |        84 |        84 |        83 |        83 |        68 |      8312 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2618 |      2451 |      2427 |      2395 |      2369 |      2257 |      2156 |      2244 |
|                  jbird                   |     17897 |     16527 |     15751 |     15175 |     14783 |     13439 |      6948 |     10556 |
|                    Δ                     |     15279 |     14076 |     13324 |     12780 |     12414 |     11182 |      4792 |      8312 |
|              Improvement %               |       584 |       574 |       549 |       534 |       524 |       495 |       222 |      8312 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        77 |       130 |       180 |       212 |       230 |       233 |      2244 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |     10556 |
|                    Δ                     |         0 |       -52 |      -104 |      -154 |      -186 |      -204 |      -207 |      8312 |
|              Improvement %               |         0 |        68 |        80 |        86 |        88 |        89 |        89 |      8312 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2244 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10556 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8312 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8312 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9069 |      9093 |      9101 |      9101 |      9110 |      9241 |      9265 |      2244 |
|                  jbird                   |      1572 |      1573 |      1573 |      1573 |      1573 |      1578 |      1703 |     10556 |
|                    Δ                     |     -7497 |     -7520 |     -7528 |     -7528 |     -7537 |     -7663 |     -7562 |      8312 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      8312 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       526 |       562 |       568 |       574 |       582 |       629 |       672 |      1646 |
|                  jbird                   |        73 |        79 |        85 |        90 |        97 |       105 |       193 |      8253 |
|                    Δ                     |      -453 |      -483 |      -483 |      -484 |      -485 |      -524 |      -479 |      6607 |
|              Improvement %               |        86 |        86 |        85 |        84 |        83 |        83 |        71 |      6607 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       528 |       564 |       570 |       576 |       585 |       630 |       674 |      1646 |
|                  jbird                   |        75 |        80 |        87 |        92 |        99 |       107 |       197 |      8253 |
|                    Δ                     |      -453 |      -484 |      -483 |      -484 |      -486 |      -523 |      -477 |      6607 |
|              Improvement %               |        86 |        86 |        85 |        84 |        83 |        83 |        71 |      6607 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1901 |      1779 |      1761 |      1743 |      1718 |      1591 |      1488 |      1646 |
|                  jbird                   |     13675 |     12719 |     11767 |     11079 |     10311 |      9527 |      5188 |      8253 |
|                    Δ                     |     11774 |     10940 |     10006 |      9336 |      8593 |      7936 |      3700 |      6607 |
|              Improvement %               |       619 |       615 |       568 |       536 |       500 |       499 |       249 |      6607 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        41 |        58 |        74 |        84 |        90 |        91 |      1646 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      8253 |
|                    Δ                     |         0 |       -16 |       -33 |       -49 |       -59 |       -65 |       -66 |      6607 |
|              Improvement %               |         0 |        39 |        57 |        66 |        70 |        72 |        73 |      6607 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1646 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      8253 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      6607 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6607 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1646 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      8253 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |      6607 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        93 |      6607 |

<p>
</details>

