
# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2550 |      2761 |      2796 |      2828 |      2855 |      3375 |      4135 |       351 |
|                  jbird                   |      1877 |      2000 |      2017 |      2039 |      2076 |      2212 |      2336 |       485 |
|                    Δ                     |      -673 |      -761 |      -779 |      -789 |      -779 |     -1163 |     -1799 |       134 |
|              Improvement %               |        26 |        28 |        28 |        28 |        27 |        34 |        44 |       134 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2552 |      2763 |      2798 |      2830 |      2859 |      3377 |      4141 |       351 |
|                  jbird                   |      1879 |      2001 |      2019 |      2041 |      2080 |      2218 |      2338 |       485 |
|                    Δ                     |      -673 |      -762 |      -779 |      -789 |      -779 |     -1159 |     -1803 |       134 |
|              Improvement %               |        26 |        28 |        28 |        28 |        27 |        34 |        44 |       134 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       392 |       362 |       358 |       354 |       350 |       296 |       242 |       351 |
|                  jbird                   |       533 |       500 |       496 |       491 |       482 |       452 |       428 |       485 |
|                    Δ                     |       141 |       138 |       138 |       137 |       132 |       156 |       186 |       134 |
|              Improvement %               |        36 |        38 |        39 |        39 |        38 |        53 |        77 |       134 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       152 |       281 |       408 |       483 |       527 |       533 |       351 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       485 |
|                    Δ                     |         3 |      -121 |      -250 |      -377 |      -452 |      -496 |      -502 |       134 |
|              Improvement %               |       -12 |        80 |        89 |        92 |        94 |        94 |        94 |       134 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       351 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       485 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       134 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       134 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        65 |       351 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        49 |       485 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -16 |       134 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        25 |       134 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2699 |      2869 |      2894 |      2929 |      2966 |      3013 |      3044 |       341 |
|                  jbird                   |      1905 |      2035 |      2066 |      2101 |      2134 |      2175 |      2333 |       475 |
|                    Δ                     |      -794 |      -834 |      -828 |      -828 |      -832 |      -838 |      -711 |       134 |
|              Improvement %               |        29 |        29 |        29 |        28 |        28 |        28 |        23 |       134 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2700 |      2871 |      2896 |      2933 |      2966 |      3015 |      3046 |       341 |
|                  jbird                   |      1910 |      2037 |      2068 |      2103 |      2136 |      2173 |      2334 |       475 |
|                    Δ                     |      -790 |      -834 |      -828 |      -830 |      -830 |      -842 |      -712 |       134 |
|              Improvement %               |        29 |        29 |        29 |        28 |        28 |        28 |        23 |       134 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       371 |       349 |       346 |       342 |       337 |       332 |       329 |       341 |
|                  jbird                   |       525 |       491 |       484 |       476 |       469 |       460 |       429 |       475 |
|                    Δ                     |       154 |       142 |       138 |       134 |       132 |       128 |       100 |       134 |
|              Improvement %               |        42 |        41 |        40 |        39 |        39 |        39 |        30 |       134 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       146 |       275 |       395 |       469 |       513 |       519 |       341 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       475 |
|                    Δ                     |         3 |      -115 |      -244 |      -364 |      -438 |      -482 |      -488 |       134 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        93 |        94 |        94 |       134 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       341 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       475 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       134 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       134 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        66 |       341 |
|                  jbird                   |        48 |        48 |        48 |        48 |        49 |        50 |        50 |       475 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -16 |       -15 |       -16 |       134 |
|              Improvement %               |        26 |        26 |        26 |        26 |        25 |        23 |        24 |       134 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       638 |       695 |       705 |       714 |       726 |       779 |       862 |      1348 |
|                  jbird                   |       461 |       496 |       504 |       517 |       525 |       538 |       633 |      1840 |
|                    Δ                     |      -177 |      -199 |      -201 |      -197 |      -201 |      -241 |      -229 |       492 |
|              Improvement %               |        28 |        29 |        29 |        28 |        28 |        31 |        27 |       492 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       640 |       696 |       707 |       716 |       728 |       780 |       844 |      1348 |
|                  jbird                   |       462 |       497 |       506 |       519 |       527 |       540 |       619 |      1840 |
|                    Δ                     |      -178 |      -199 |      -201 |      -197 |      -201 |      -240 |      -225 |       492 |
|              Improvement %               |        28 |        29 |        28 |        28 |        28 |        31 |        27 |       492 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1567 |      1440 |      1419 |      1400 |      1379 |      1284 |      1160 |      1348 |
|                  jbird                   |      2171 |      2018 |      1983 |      1934 |      1905 |      1860 |      1581 |      1840 |
|                    Δ                     |       604 |       578 |       564 |       534 |       526 |       576 |       421 |       492 |
|              Improvement %               |        39 |        40 |        40 |        38 |        38 |        45 |        36 |       492 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       274 |       396 |       471 |       514 |       519 |      1348 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1840 |
|                    Δ                     |         1 |      -118 |      -247 |      -369 |      -444 |      -487 |      -492 |       492 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       492 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1348 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1840 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       492 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       492 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1348 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1840 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |       492 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        29 |       492 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       667 |       721 |       730 |       739 |       748 |       775 |       873 |      1307 |
|                  jbird                   |       474 |       507 |       518 |       547 |       560 |       575 |       667 |      1776 |
|                    Δ                     |      -193 |      -214 |      -212 |      -192 |      -188 |      -200 |      -206 |       469 |
|              Improvement %               |        29 |        30 |        29 |        26 |        25 |        26 |        24 |       469 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       668 |       722 |       731 |       740 |       750 |       770 |       845 |      1307 |
|                  jbird                   |       475 |       508 |       520 |       549 |       561 |       577 |       668 |      1776 |
|                    Δ                     |      -193 |      -214 |      -211 |      -191 |      -189 |      -193 |      -177 |       469 |
|              Improvement %               |        29 |        30 |        29 |        26 |        25 |        25 |        21 |       469 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1499 |      1387 |      1371 |      1354 |      1337 |      1290 |      1146 |      1307 |
|                  jbird                   |      2112 |      1974 |      1931 |      1828 |      1788 |      1740 |      1500 |      1776 |
|                    Δ                     |       613 |       587 |       560 |       474 |       451 |       450 |       354 |       469 |
|              Improvement %               |        41 |        42 |        41 |        35 |        34 |        35 |        31 |       469 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       145 |       265 |       385 |       458 |       501 |       501 |      1307 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1776 |
|                    Δ                     |         1 |      -118 |      -238 |      -358 |      -431 |      -474 |      -474 |       469 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       469 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1307 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1776 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       469 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       469 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1307 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1776 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       469 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       469 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1301 |      1401 |      1412 |      1424 |      1437 |      1499 |      1570 |       691 |
|                  jbird                   |       929 |      1002 |      1032 |      1060 |      1079 |      1152 |      1196 |       932 |
|                    Δ                     |      -372 |      -399 |      -380 |      -364 |      -358 |      -347 |      -374 |       241 |
|              Improvement %               |        29 |        28 |        27 |        26 |        25 |        23 |        24 |       241 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1305 |      1402 |      1413 |      1426 |      1439 |      1500 |      1571 |       691 |
|                  jbird                   |       930 |      1004 |      1034 |      1062 |      1081 |      1155 |      1197 |       932 |
|                    Δ                     |      -375 |      -398 |      -379 |      -364 |      -358 |      -345 |      -374 |       241 |
|              Improvement %               |        29 |        28 |        27 |        26 |        25 |        23 |        24 |       241 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       769 |       714 |       709 |       703 |       696 |       667 |       637 |       691 |
|                  jbird                   |      1077 |       998 |       969 |       943 |       927 |       868 |       836 |       932 |
|                    Δ                     |       308 |       284 |       260 |       240 |       231 |       201 |       199 |       241 |
|              Improvement %               |        40 |        40 |        37 |        34 |        33 |        30 |        31 |       241 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       278 |       402 |       478 |       523 |       530 |       691 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       932 |
|                    Δ                     |         0 |      -119 |      -250 |      -374 |      -450 |      -495 |      -502 |       241 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       241 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       691 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       932 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       241 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       241 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        34 |       691 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        24 |        25 |       932 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |       241 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        26 |       241 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1328 |      1433 |      1445 |      1456 |      1467 |      1514 |      1785 |       676 |
|                  jbird                   |       941 |      1013 |      1023 |      1038 |      1051 |      1075 |      1109 |       941 |
|                    Δ                     |      -387 |      -420 |      -422 |      -418 |      -416 |      -439 |      -676 |       265 |
|              Improvement %               |        29 |        29 |        29 |        29 |        28 |        29 |        38 |       265 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1329 |      1434 |      1447 |      1458 |      1469 |      1517 |      1746 |       676 |
|                  jbird                   |       943 |      1015 |      1025 |      1040 |      1052 |      1077 |      1113 |       941 |
|                    Δ                     |      -386 |      -419 |      -422 |      -418 |      -417 |      -440 |      -633 |       265 |
|              Improvement %               |        29 |        29 |        29 |        29 |        28 |        29 |        36 |       265 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       753 |       698 |       692 |       687 |       682 |       660 |       560 |       676 |
|                  jbird                   |      1062 |       987 |       977 |       963 |       953 |       930 |       902 |       941 |
|                    Δ                     |       309 |       289 |       285 |       276 |       271 |       270 |       342 |       265 |
|              Improvement %               |        41 |        41 |        41 |        40 |        40 |        41 |        61 |       265 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       269 |       396 |       470 |       510 |       516 |       676 |
|                  jbird                   |        26 |        28 |        28 |        28 |        28 |        28 |        28 |       941 |
|                    Δ                     |         0 |      -121 |      -241 |      -368 |      -442 |      -482 |      -488 |       265 |
|              Improvement %               |         0 |        81 |        90 |        93 |        94 |        95 |        95 |       265 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       676 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       941 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       265 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       265 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       676 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       941 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |       265 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        24 |       265 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        18 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        14 |        14 |        18 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        14 |        14 |        71 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -2 |        -3 |        -3 |        -3 |        -3 |        -2 |        -2 |        18 |
|              Improvement %               |        15 |        21 |        21 |        21 |        21 |        14 |        14 |        18 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        72 |        71 |        70 |        70 |        70 |        70 |        71 |
|                  jbird                   |        94 |        91 |        90 |        89 |        88 |        87 |        87 |        89 |
|                    Δ                     |        19 |        19 |        19 |        19 |        18 |        17 |        17 |        18 |
|              Improvement %               |        25 |        26 |        27 |        27 |        26 |        24 |        24 |        18 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       156 |       292 |       419 |       490 |       543 |       543 |        71 |
|                  jbird                   |        28 |        52 |        52 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |       -11 |      -104 |      -240 |      -367 |      -438 |      -491 |      -491 |        18 |
|              Improvement %               |        28 |        67 |        82 |        88 |        89 |        90 |        90 |        18 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        18 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        18 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       320 |       320 |       320 |       320 |       320 |        71 |
|                  jbird                   |       246 |       247 |       247 |       247 |       247 |       255 |       255 |        89 |
|                    Δ                     |       -73 |       -72 |       -73 |       -73 |       -73 |       -65 |       -65 |        18 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        20 |        20 |        18 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        17 |        17 |        68 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        13 |        13 |        87 |
|                    Δ                     |        -3 |        -4 |        -4 |        -4 |        -3 |        -4 |        -4 |        19 |
|              Improvement %               |        21 |        27 |        27 |        27 |        20 |        24 |        24 |        19 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        17 |        17 |        68 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        13 |        13 |        87 |
|                    Δ                     |        -3 |        -4 |        -4 |        -4 |        -3 |        -4 |        -4 |        19 |
|              Improvement %               |        21 |        27 |        27 |        27 |        20 |        24 |        24 |        19 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        71 |        69 |        68 |        68 |        67 |        57 |        57 |        68 |
|                  jbird                   |        94 |        89 |        88 |        87 |        85 |        80 |        80 |        87 |
|                    Δ                     |        23 |        20 |        20 |        19 |        18 |        23 |        23 |        19 |
|              Improvement %               |        32 |        29 |        29 |        28 |        27 |        40 |        40 |        19 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       150 |       278 |       398 |       480 |       522 |       522 |        68 |
|                  jbird                   |        43 |        51 |        52 |        52 |        52 |        52 |        52 |        87 |
|                    Δ                     |         4 |       -99 |      -226 |      -346 |      -428 |      -470 |      -470 |        19 |
|              Improvement %               |       -10 |        66 |        81 |        87 |        89 |        90 |        90 |        19 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        68 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        19 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        19 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        68 |
|                  jbird                   |       251 |       252 |       252 |       252 |       252 |       261 |       261 |        87 |
|                    Δ                     |       -73 |       -73 |       -73 |       -73 |       -73 |       -64 |       -64 |        19 |
|              Improvement %               |        23 |        22 |        22 |        22 |        22 |        20 |        20 |        19 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       178 |       185 |       189 |       193 |       208 |       301 |      4533 |
|                  jbird                   |       116 |       123 |       129 |       134 |       139 |       159 |       272 |      6039 |
|                    Δ                     |       -48 |       -55 |       -56 |       -55 |       -54 |       -49 |       -29 |      1506 |
|              Improvement %               |        29 |        31 |        30 |        29 |        28 |        24 |        10 |      1506 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       180 |       186 |       190 |       195 |       211 |       292 |      4533 |
|                  jbird                   |       118 |       125 |       131 |       135 |       140 |       159 |       229 |      6039 |
|                    Δ                     |       -48 |       -55 |       -55 |       -55 |       -55 |       -52 |       -63 |      1506 |
|              Improvement %               |        29 |        31 |        30 |        29 |        28 |        25 |        22 |      1506 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6090 |      5607 |      5415 |      5295 |      5187 |      4819 |      3327 |      4533 |
|                  jbird                   |      8599 |      8107 |      7743 |      7475 |      7219 |      6307 |      3681 |      6039 |
|                    Δ                     |      2509 |      2500 |      2328 |      2180 |      2032 |      1488 |       354 |      1506 |
|              Improvement %               |        41 |        45 |        43 |        41 |        39 |        31 |        11 |      1506 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       244 |       354 |       419 |       457 |       463 |      4533 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      6039 |
|                    Δ                     |         0 |      -106 |      -218 |      -328 |      -393 |      -431 |      -437 |      1506 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1506 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4533 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6039 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1506 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1506 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4079 |      4106 |      4114 |      4125 |      4133 |      4159 |      4358 |      4533 |
|                  jbird                   |      2967 |      2968 |      2968 |      2968 |      2970 |      3041 |      3138 |      6039 |
|                    Δ                     |     -1112 |     -1138 |     -1146 |     -1157 |     -1163 |     -1118 |     -1220 |      1506 |
|              Improvement %               |        27 |        28 |        28 |        28 |        28 |        27 |        28 |      1506 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       170 |       185 |       192 |       197 |       201 |       213 |       247 |      4392 |
|                  jbird                   |       117 |       122 |       129 |       133 |       137 |       156 |       197 |      6074 |
|                    Δ                     |       -53 |       -63 |       -63 |       -64 |       -64 |       -57 |       -50 |      1682 |
|              Improvement %               |        31 |        34 |        33 |        32 |        32 |        27 |        20 |      1682 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       187 |       193 |       199 |       203 |       214 |       254 |      4392 |
|                  jbird                   |       119 |       123 |       130 |       135 |       138 |       158 |       187 |      6074 |
|                    Δ                     |       -53 |       -64 |       -63 |       -64 |       -65 |       -56 |       -67 |      1682 |
|              Improvement %               |        31 |        34 |        33 |        32 |        32 |        26 |        26 |      1682 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5875 |      5407 |      5215 |      5083 |      4967 |      4703 |      4047 |      4392 |
|                  jbird                   |      8526 |      8223 |      7771 |      7515 |      7319 |      6415 |      5080 |      6074 |
|                    Δ                     |      2651 |      2816 |      2556 |      2432 |      2352 |      1712 |      1033 |      1682 |
|              Improvement %               |        45 |        52 |        49 |        48 |        47 |        36 |        26 |      1682 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       130 |       237 |       345 |       411 |       446 |       451 |      4392 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      6074 |
|                    Δ                     |         0 |      -104 |      -211 |      -319 |      -385 |      -420 |      -425 |      1682 |
|              Improvement %               |         0 |        80 |        89 |        92 |        94 |        94 |        94 |      1682 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4392 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6074 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1682 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1682 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4178 |      4188 |      4198 |      4223 |      4352 |      4392 |
|                  jbird                   |      3022 |      3023 |      3023 |      3023 |      3027 |      3097 |      3227 |      6074 |
|                    Δ                     |     -1123 |     -1147 |     -1155 |     -1165 |     -1171 |     -1126 |     -1125 |      1682 |
|              Improvement %               |        27 |        28 |        28 |        28 |        28 |        27 |        26 |      1682 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        78 |        84 |        86 |        96 |       129 |      9077 |
|                  jbird                   |        57 |        59 |        63 |        65 |        66 |        77 |        94 |     10642 |
|                    Δ                     |       -18 |       -17 |       -15 |       -19 |       -20 |       -19 |       -35 |      1565 |
|              Improvement %               |        24 |        22 |        19 |        23 |        23 |        20 |        27 |      1565 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        78 |        79 |        85 |        88 |        97 |       130 |      9077 |
|                  jbird                   |        58 |        60 |        64 |        67 |        68 |        79 |        96 |     10642 |
|                    Δ                     |       -18 |       -18 |       -15 |       -18 |       -20 |       -18 |       -34 |      1565 |
|              Improvement %               |        24 |        23 |        19 |        21 |        23 |        19 |        26 |      1565 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         8 |      9077 |
|                  jbird                   |        18 |        17 |        16 |        15 |        15 |        13 |        11 |     10642 |
|                    Δ                     |         5 |         4 |         3 |         3 |         3 |         3 |         3 |      1565 |
|              Improvement %               |        38 |        31 |        23 |        25 |        25 |        30 |        38 |      1565 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        47 |        59 |        66 |        70 |        70 |      9077 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10642 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -41 |       -45 |       -45 |      1565 |
|              Improvement %               |         0 |        31 |        47 |        58 |        62 |        64 |        64 |      1565 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9077 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     10642 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      1565 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      1565 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1168 |      1285 |      9077 |
|                  jbird                   |      1606 |      1607 |      1607 |      1607 |      1607 |      1635 |      1714 |     10642 |
|                    Δ                     |       458 |       458 |       457 |       451 |       447 |       467 |       429 |      1565 |
|              Improvement %               |       -40 |       -40 |       -40 |       -39 |       -39 |       -40 |       -33 |      1565 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       241 |       266 |       271 |       275 |       280 |       294 |       326 |      3291 |
|                  jbird                   |        86 |        93 |        98 |       101 |       105 |       117 |       277 |      7757 |
|                    Δ                     |      -155 |      -173 |      -173 |      -174 |      -175 |      -177 |       -49 |      4466 |
|              Improvement %               |        64 |        65 |        64 |        63 |        62 |        60 |        15 |      4466 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       242 |       268 |       272 |       277 |       282 |       295 |       327 |      3291 |
|                  jbird                   |        87 |        95 |       100 |       103 |       106 |       118 |       170 |      7757 |
|                    Δ                     |      -155 |      -173 |      -172 |      -174 |      -176 |      -177 |      -157 |      4466 |
|              Improvement %               |        64 |        65 |        63 |        63 |        62 |        60 |        48 |      4466 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4150 |      3761 |      3697 |      3637 |      3571 |      3401 |      3071 |      3291 |
|                  jbird                   |     11690 |     10727 |     10191 |      9895 |      9535 |      8567 |      3615 |      7757 |
|                    Δ                     |      7540 |      6966 |      6494 |      6258 |      5964 |      5166 |       544 |      4466 |
|              Improvement %               |       182 |       185 |       176 |       172 |       167 |       152 |        18 |      4466 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        87 |       150 |       210 |       248 |       270 |       273 |      3291 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7757 |
|                    Δ                     |         0 |       -61 |      -124 |      -184 |      -222 |      -244 |      -247 |      4466 |
|              Improvement %               |         0 |        70 |        83 |        88 |        90 |        90 |        90 |      4466 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3291 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7757 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4466 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4466 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6960 |      6967 |      6971 |      6984 |      7000 |      7016 |      7339 |      3291 |
|                  jbird                   |      2558 |      2560 |      2560 |      2560 |      2560 |      2574 |      2777 |      7757 |
|                    Δ                     |     -4402 |     -4407 |     -4411 |     -4424 |     -4440 |     -4442 |     -4562 |      4466 |
|              Improvement %               |        63 |        63 |        63 |        63 |        63 |        63 |        62 |      4466 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       380 |       417 |       422 |       428 |       434 |       452 |       492 |      2191 |
|                  jbird                   |        55 |        59 |        63 |        64 |        65 |        74 |       170 |     10766 |
|                    Δ                     |      -325 |      -358 |      -359 |      -364 |      -369 |      -378 |      -322 |      8575 |
|              Improvement %               |        86 |        86 |        85 |        85 |        85 |        84 |        65 |      8575 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       381 |       419 |       424 |       430 |       435 |       453 |       490 |      2191 |
|                  jbird                   |        57 |        60 |        64 |        65 |        66 |        76 |       156 |     10766 |
|                    Δ                     |      -324 |      -359 |      -360 |      -365 |      -369 |      -377 |      -334 |      8575 |
|              Improvement %               |        85 |        86 |        85 |        85 |        85 |        83 |        68 |      8575 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2633 |      2399 |      2369 |      2337 |      2305 |      2213 |      2033 |      2191 |
|                  jbird                   |     18059 |     17071 |     15919 |     15679 |     15407 |     13455 |      5888 |     10766 |
|                    Δ                     |     15426 |     14672 |     13550 |     13342 |     13102 |     11242 |      3855 |      8575 |
|              Improvement %               |       586 |       612 |       572 |       571 |       568 |       508 |       190 |      8575 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        76 |       127 |       176 |       209 |       227 |       229 |      2191 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     10766 |
|                    Δ                     |         0 |       -50 |      -101 |      -150 |      -183 |      -201 |      -203 |      8575 |
|              Improvement %               |         0 |        66 |        80 |        85 |        88 |        89 |        89 |      8575 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2191 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10766 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8575 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8575 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9072 |      9093 |      9101 |      9101 |      9110 |      9241 |      9650 |      2191 |
|                  jbird                   |      1572 |      1573 |      1573 |      1573 |      1573 |      1578 |      1696 |     10766 |
|                    Δ                     |     -7500 |     -7520 |     -7528 |     -7528 |     -7537 |     -7663 |     -7954 |      8575 |
|              Improvement %               |        83 |        83 |        83 |        83 |        83 |        83 |        82 |      8575 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       521 |       574 |       580 |       592 |       603 |       653 |       691 |      1606 |
|                  jbird                   |        74 |        78 |        83 |        86 |        91 |       103 |       172 |      8413 |
|                    Δ                     |      -447 |      -496 |      -497 |      -506 |      -512 |      -550 |      -519 |      6807 |
|              Improvement %               |        86 |        86 |        86 |        85 |        85 |        84 |        75 |      6807 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       522 |       575 |       581 |       594 |       605 |       654 |       693 |      1606 |
|                  jbird                   |        76 |        79 |        85 |        87 |        93 |       105 |       178 |      8413 |
|                    Δ                     |      -446 |      -496 |      -496 |      -507 |      -512 |      -549 |      -515 |      6807 |
|              Improvement %               |        85 |        86 |        85 |        85 |        85 |        84 |        74 |      6807 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1920 |      1743 |      1726 |      1689 |      1658 |      1532 |      1446 |      1606 |
|                  jbird                   |     13460 |     12879 |     12047 |     11647 |     10999 |      9687 |      5807 |      8413 |
|                    Δ                     |     11540 |     11136 |     10321 |      9958 |      9341 |      8155 |      4361 |      6807 |
|              Improvement %               |       601 |       639 |       598 |       590 |       563 |       532 |       302 |      6807 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        41 |        57 |        73 |        83 |        89 |        89 |      1606 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      8413 |
|                    Δ                     |         0 |       -16 |       -32 |       -48 |       -58 |       -64 |       -64 |      6807 |
|              Improvement %               |         0 |        39 |        56 |        66 |        70 |        72 |        72 |      6807 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5756 |      5757 |      5757 |      5757 |      5757 |      5757 |      5757 |      1606 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        49 |        49 |      8413 |
|                    Δ                     |     -5707 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |     -5708 |      6807 |
|              Improvement %               |        99 |        99 |        99 |        99 |        99 |        99 |        99 |      6807 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      1606 |
|                  jbird                   |         1 |         1 |         1 |         1 |         1 |         1 |         2 |      8413 |
|                    Δ                     |       -13 |       -13 |       -13 |       -13 |       -13 |       -13 |       -12 |      6807 |
|              Improvement %               |        93 |        93 |        93 |        93 |        93 |        93 |        86 |      6807 |

<p>
</details>

