# JBird vs. Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2614 |      2859 |      2912 |      2949 |      3000 |      3619 |      3746 |       338 |
|                  jbird                   |      1941 |      2111 |      2130 |      2148 |      2222 |      2785 |      3051 |       455 |
|                    Δ                     |      -673 |      -748 |      -782 |      -801 |      -778 |      -834 |      -695 |       117 |
|              Improvement %               |        26 |        26 |        27 |        27 |        26 |        23 |        19 |       117 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2615 |      2859 |      2914 |      2951 |      3002 |      3621 |      3750 |       338 |
|                  jbird                   |      1935 |      2114 |      2132 |      2150 |      2230 |      2787 |      3055 |       455 |
|                    Δ                     |      -680 |      -745 |      -782 |      -801 |      -772 |      -834 |      -695 |       117 |
|              Improvement %               |        26 |        26 |        27 |        27 |        26 |        23 |        19 |       117 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       383 |       350 |       343 |       339 |       333 |       276 |       267 |       338 |
|                  jbird                   |       515 |       474 |       470 |       466 |       450 |       359 |       328 |       455 |
|                    Δ                     |       132 |       124 |       127 |       127 |       117 |        83 |        61 |       117 |
|              Improvement %               |        34 |        35 |        37 |        37 |        35 |        30 |        23 |       117 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       272 |       393 |       466 |       510 |       516 |       338 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       455 |
|                    Δ                     |         3 |      -116 |      -241 |      -362 |      -435 |      -479 |      -485 |       117 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        93 |        94 |        94 |       117 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       338 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       455 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       117 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       117 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        64 |        64 |        64 |        64 |        64 |        64 |        64 |       338 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       455 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -14 |       117 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        22 |       117 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2739 |      2892 |      2920 |      2966 |      3011 |      3140 |      3535 |       337 |
|                  jbird                   |      1946 |      2101 |      2118 |      2134 |      2165 |      2220 |      2277 |       464 |
|                    Δ                     |      -793 |      -791 |      -802 |      -832 |      -846 |      -920 |     -1258 |       127 |
|              Improvement %               |        29 |        27 |        27 |        28 |        28 |        29 |        36 |       127 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2740 |      2892 |      2922 |      2963 |      3013 |      3148 |      3543 |       337 |
|                  jbird                   |      1943 |      2103 |      2118 |      2134 |      2169 |      2220 |      2269 |       464 |
|                    Δ                     |      -797 |      -789 |      -804 |      -829 |      -844 |      -928 |     -1274 |       127 |
|              Improvement %               |        29 |        27 |        28 |        28 |        28 |        29 |        36 |       127 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       365 |       346 |       343 |       337 |       332 |       319 |       283 |       337 |
|                  jbird                   |       514 |       476 |       472 |       469 |       462 |       451 |       439 |       464 |
|                    Δ                     |       149 |       130 |       129 |       132 |       130 |       132 |       156 |       127 |
|              Improvement %               |        41 |        38 |        38 |        39 |        39 |        41 |        55 |       127 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       147 |       270 |       389 |       468 |       510 |       516 |       337 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       464 |
|                    Δ                     |         3 |      -116 |      -239 |      -358 |      -437 |      -479 |      -485 |       127 |
|              Improvement %               |       -12 |        79 |        89 |        92 |        93 |        94 |        94 |       127 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       337 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       464 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       127 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       127 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       337 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       464 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -15 |       -14 |       127 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        22 |       127 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       671 |       711 |       726 |       741 |       755 |       790 |       824 |      1312 |
|                  jbird                   |       463 |       512 |       520 |       533 |       557 |       579 |       613 |      1778 |
|                    Δ                     |      -208 |      -199 |      -206 |      -208 |      -198 |      -211 |      -211 |       466 |
|              Improvement %               |        31 |        28 |        28 |        28 |        26 |        27 |        26 |       466 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       672 |       713 |       728 |       742 |       757 |       791 |       826 |      1312 |
|                  jbird                   |       464 |       514 |       522 |       535 |       558 |       582 |       614 |      1778 |
|                    Δ                     |      -208 |      -199 |      -206 |      -207 |      -199 |      -209 |      -212 |       466 |
|              Improvement %               |        31 |        28 |        28 |        28 |        26 |        26 |        26 |       466 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1491 |      1406 |      1378 |      1350 |      1324 |      1267 |      1213 |      1312 |
|                  jbird                   |      2160 |      1953 |      1922 |      1877 |      1798 |      1729 |      1632 |      1778 |
|                    Δ                     |       669 |       547 |       544 |       527 |       474 |       462 |       419 |       466 |
|              Improvement %               |        45 |        39 |        39 |        39 |        36 |        36 |        35 |       466 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       143 |       265 |       384 |       455 |       504 |       504 |      1312 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1778 |
|                    Δ                     |         1 |      -116 |      -238 |      -357 |      -428 |      -477 |      -477 |       466 |
|              Improvement %               |        -4 |        81 |        90 |        93 |        94 |        95 |        95 |       466 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1312 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1778 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       466 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       466 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1312 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1778 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -3 |       466 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        19 |       466 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       673 |       734 |       753 |       772 |       788 |       824 |       848 |      1268 |
|                  jbird                   |       470 |       518 |       526 |       536 |       545 |       568 |       658 |      1772 |
|                    Δ                     |      -203 |      -216 |      -227 |      -236 |      -243 |      -256 |      -190 |       504 |
|              Improvement %               |        30 |        29 |        30 |        31 |        31 |        31 |        22 |       504 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       674 |       735 |       753 |       773 |       790 |       824 |       849 |      1268 |
|                  jbird                   |       472 |       519 |       527 |       537 |       547 |       569 |       660 |      1772 |
|                    Δ                     |      -202 |      -216 |      -226 |      -236 |      -243 |      -255 |      -189 |       504 |
|              Improvement %               |        30 |        29 |        30 |        31 |        31 |        31 |        22 |       504 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1486 |      1364 |      1329 |      1296 |      1270 |      1214 |      1180 |      1268 |
|                  jbird                   |      2126 |      1931 |      1903 |      1868 |      1834 |      1761 |      1519 |      1772 |
|                    Δ                     |       640 |       567 |       574 |       572 |       564 |       547 |       339 |       504 |
|              Improvement %               |        43 |        42 |        43 |        44 |        44 |        45 |        29 |       504 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       138 |       259 |       372 |       444 |       484 |       489 |      1268 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1772 |
|                    Δ                     |         1 |      -111 |      -232 |      -345 |      -417 |      -457 |      -462 |       504 |
|              Improvement %               |        -4 |        80 |        90 |        93 |        94 |        94 |        94 |       504 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1268 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1772 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       504 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       504 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1268 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1772 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |        -4 |       504 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        29 |        24 |       504 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1318 |      1407 |      1442 |      1470 |      1517 |      1563 |      1604 |       676 |
|                  jbird                   |       948 |      1040 |      1052 |      1076 |      1094 |      1127 |      1271 |       913 |
|                    Δ                     |      -370 |      -367 |      -390 |      -394 |      -423 |      -436 |      -333 |       237 |
|              Improvement %               |        28 |        26 |        27 |        27 |        28 |        28 |        21 |       237 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1320 |      1408 |      1443 |      1473 |      1518 |      1564 |      1611 |       676 |
|                  jbird                   |       950 |      1042 |      1053 |      1076 |      1096 |      1133 |      1275 |       913 |
|                    Δ                     |      -370 |      -366 |      -390 |      -397 |      -422 |      -431 |      -336 |       237 |
|              Improvement %               |        28 |        26 |        27 |        27 |        28 |        28 |        21 |       237 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       759 |       711 |       694 |       680 |       660 |       640 |       624 |       676 |
|                  jbird                   |      1055 |       961 |       952 |       930 |       915 |       887 |       787 |       913 |
|                    Δ                     |       296 |       250 |       258 |       250 |       255 |       247 |       163 |       237 |
|              Improvement %               |        39 |        35 |        37 |        37 |        39 |        39 |        26 |       237 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       149 |       267 |       390 |       470 |       513 |       513 |       676 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       913 |
|                    Δ                     |         0 |      -121 |      -238 |      -361 |      -441 |      -484 |      -484 |       237 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |       237 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       676 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       913 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       237 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       237 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       676 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       913 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -7 |        -7 |       237 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        22 |        22 |       237 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1338 |      1438 |      1450 |      1461 |      1478 |      1520 |      1576 |       673 |
|                  jbird                   |       949 |      1038 |      1048 |      1064 |      1091 |      1146 |      1172 |       916 |
|                    Δ                     |      -389 |      -400 |      -402 |      -397 |      -387 |      -374 |      -404 |       243 |
|              Improvement %               |        29 |        28 |        28 |        27 |        26 |        25 |        26 |       243 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1339 |      1440 |      1451 |      1463 |      1479 |      1521 |      1569 |       673 |
|                  jbird                   |       951 |      1040 |      1050 |      1065 |      1091 |      1148 |      1175 |       916 |
|                    Δ                     |      -388 |      -400 |      -401 |      -398 |      -388 |      -373 |      -394 |       243 |
|              Improvement %               |        29 |        28 |        28 |        27 |        26 |        25 |        25 |       243 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       748 |       696 |       690 |       685 |       677 |       658 |       634 |       673 |
|                  jbird                   |      1054 |       963 |       954 |       940 |       918 |       873 |       853 |       916 |
|                    Δ                     |       306 |       267 |       264 |       255 |       241 |       215 |       219 |       243 |
|              Improvement %               |        41 |        38 |        38 |        37 |        36 |        33 |        35 |       243 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        26 |       144 |       269 |       389 |       464 |       511 |       511 |       673 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       916 |
|                    Δ                     |         0 |      -116 |      -240 |      -360 |      -435 |      -482 |      -482 |       243 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |       243 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       673 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       916 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       243 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       243 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       673 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       916 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -7 |       243 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        24 |        21 |       243 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        15 |        15 |        72 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -2 |        -3 |        -3 |        -2 |        -2 |        -3 |        -3 |        15 |
|              Improvement %               |        15 |        21 |        21 |        14 |        14 |        20 |        20 |        15 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        15 |        15 |        72 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -2 |        -3 |        -3 |        -2 |        -2 |        -3 |        -3 |        15 |
|              Improvement %               |        15 |        21 |        21 |        14 |        14 |        20 |        20 |        15 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        72 |        71 |        71 |        71 |        69 |        69 |        72 |
|                  jbird                   |        91 |        88 |        88 |        87 |        86 |        82 |        82 |        87 |
|                    Δ                     |        17 |        16 |        17 |        16 |        15 |        13 |        13 |        15 |
|              Improvement %               |        23 |        22 |        24 |        23 |        21 |        19 |        19 |        15 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       159 |       293 |       417 |       501 |       549 |       549 |        72 |
|                  jbird                   |        43 |        51 |        51 |        52 |        52 |        52 |        52 |        87 |
|                    Δ                     |         4 |      -108 |      -242 |      -365 |      -449 |      -497 |      -497 |        15 |
|              Improvement %               |       -10 |        68 |        83 |        88 |        90 |        91 |        91 |        15 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        72 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        15 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        15 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       319 |       319 |       320 |       320 |       320 |       320 |       320 |        72 |
|                  jbird                   |       250 |       250 |       250 |       250 |       251 |       255 |       255 |        87 |
|                    Δ                     |       -69 |       -69 |       -70 |       -70 |       -69 |       -65 |       -65 |        15 |
|              Improvement %               |        22 |        22 |        22 |        22 |        22 |        20 |        20 |        15 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        17 |        17 |        69 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -3 |        -3 |        -3 |        -4 |        -3 |        -5 |        -5 |        20 |
|              Improvement %               |        21 |        21 |        21 |        27 |        20 |        29 |        29 |        20 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        14 |        14 |        15 |        15 |        17 |        17 |        69 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -3 |        -3 |        -3 |        -4 |        -3 |        -5 |        -5 |        20 |
|              Improvement %               |        21 |        21 |        21 |        27 |        20 |        29 |        29 |        20 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        72 |        70 |        69 |        69 |        65 |        60 |        60 |        69 |
|                  jbird                   |        93 |        91 |        90 |        89 |        84 |        80 |        80 |        89 |
|                    Δ                     |        21 |        21 |        21 |        20 |        19 |        20 |        20 |        20 |
|              Improvement %               |        29 |        30 |        30 |        29 |        29 |        33 |        33 |        20 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        39 |       157 |       282 |       408 |       487 |       527 |       527 |        69 |
|                  jbird                   |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |         4 |      -105 |      -230 |      -356 |      -435 |      -475 |      -475 |        20 |
|              Improvement %               |       -10 |        67 |        82 |        87 |        89 |        90 |        90 |        20 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        69 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        20 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        20 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       324 |       325 |       325 |       325 |       325 |       325 |       325 |        69 |
|                  jbird                   |       250 |       250 |       250 |       251 |       251 |       258 |       258 |        89 |
|                    Δ                     |       -74 |       -75 |       -75 |       -74 |       -74 |       -67 |       -67 |        20 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        21 |        21 |        20 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       164 |       178 |       185 |       190 |       195 |       207 |       269 |      4533 |
|                  jbird                   |       116 |       128 |       131 |       133 |       136 |       151 |       175 |      5976 |
|                    Δ                     |       -48 |       -50 |       -54 |       -57 |       -59 |       -56 |       -94 |      1443 |
|              Improvement %               |        29 |        28 |        29 |        30 |        30 |        27 |        35 |      1443 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       165 |       179 |       186 |       191 |       196 |       209 |       261 |      4533 |
|                  jbird                   |       117 |       129 |       132 |       135 |       137 |       150 |       168 |      5976 |
|                    Δ                     |       -48 |       -50 |       -54 |       -56 |       -59 |       -59 |       -93 |      1443 |
|              Improvement %               |        29 |        28 |        29 |        29 |        30 |        28 |        36 |      1443 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6107 |      5623 |      5415 |      5267 |      5139 |      4823 |      3716 |      4533 |
|                  jbird                   |      8618 |      7835 |      7639 |      7507 |      7363 |      6607 |      5722 |      5976 |
|                    Δ                     |      2511 |      2212 |      2224 |      2240 |      2224 |      1784 |      2006 |      1443 |
|              Improvement %               |        41 |        39 |        41 |        43 |        43 |        37 |        54 |      1443 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       134 |       243 |       355 |       419 |       461 |       466 |      4533 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5976 |
|                    Δ                     |         0 |      -108 |      -217 |      -329 |      -393 |      -435 |      -440 |      1443 |
|              Improvement %               |         0 |        81 |        89 |        93 |        94 |        94 |        94 |      1443 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4533 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5976 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1443 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1443 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4082 |      4106 |      4114 |      4125 |      4133 |      4164 |      4290 |      4533 |
|                  jbird                   |      3020 |      3021 |      3021 |      3023 |      3023 |      3095 |      3166 |      5976 |
|                    Δ                     |     -1062 |     -1085 |     -1093 |     -1102 |     -1110 |     -1069 |     -1124 |      1443 |
|              Improvement %               |        26 |        26 |        27 |        27 |        27 |        26 |        26 |      1443 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       171 |       184 |       191 |       197 |       203 |       221 |       247 |      4395 |
|                  jbird                   |       118 |       129 |       133 |       134 |       138 |       152 |       182 |      5914 |
|                    Δ                     |       -53 |       -55 |       -58 |       -63 |       -65 |       -69 |       -65 |      1519 |
|              Improvement %               |        31 |        30 |        30 |        32 |        32 |        31 |        26 |      1519 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       172 |       186 |       193 |       199 |       204 |       222 |       243 |      4395 |
|                  jbird                   |       120 |       131 |       135 |       136 |       139 |       151 |       179 |      5914 |
|                    Δ                     |       -52 |       -55 |       -58 |       -63 |       -65 |       -71 |       -64 |      1519 |
|              Improvement %               |        30 |        30 |        30 |        32 |        32 |        32 |        26 |      1519 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5851 |      5435 |      5231 |      5079 |      4939 |      4527 |      4051 |      4395 |
|                  jbird                   |      8451 |      7731 |      7519 |      7447 |      7275 |      6563 |      5498 |      5914 |
|                    Δ                     |      2600 |      2296 |      2288 |      2368 |      2336 |      2036 |      1447 |      1519 |
|              Improvement %               |        44 |        42 |        44 |        47 |        47 |        45 |        36 |      1519 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       131 |       239 |       344 |       406 |       447 |       452 |      4395 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5914 |
|                    Δ                     |         0 |      -106 |      -213 |      -318 |      -380 |      -421 |      -426 |      1519 |
|              Improvement %               |         0 |        81 |        89 |        92 |        94 |        94 |        94 |      1519 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4395 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5914 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1519 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1519 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4145 |      4170 |      4180 |      4188 |      4198 |      4321 |      4365 |      4395 |
|                  jbird                   |      3058 |      3060 |      3060 |      3060 |      3062 |      3131 |      3210 |      5914 |
|                    Δ                     |     -1087 |     -1110 |     -1120 |     -1128 |     -1136 |     -1190 |     -1155 |      1519 |
|              Improvement %               |        26 |        27 |        27 |        27 |        27 |        28 |        26 |      1519 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        76 |        78 |        81 |        86 |        97 |       125 |      9150 |
|                  jbird                   |        48 |        49 |        54 |        54 |        55 |        65 |        87 |     11839 |
|                    Δ                     |       -27 |       -27 |       -24 |       -27 |       -31 |       -32 |       -38 |      2689 |
|              Improvement %               |        36 |        36 |        31 |        33 |        36 |        33 |        30 |      2689 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        78 |        79 |        83 |        87 |        99 |       121 |      9150 |
|                  jbird                   |        49 |        51 |        55 |        56 |        56 |        66 |        81 |     11839 |
|                    Δ                     |       -28 |       -27 |       -24 |       -27 |       -31 |       -33 |       -40 |      2689 |
|              Improvement %               |        36 |        35 |        30 |        33 |        36 |        33 |        33 |      2689 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        12 |        12 |        10 |         8 |      9150 |
|                  jbird                   |        21 |        20 |        19 |        18 |        18 |        15 |        11 |     11839 |
|                    Δ                     |         8 |         7 |         6 |         6 |         6 |         5 |         3 |      2689 |
|              Improvement %               |        62 |        54 |        46 |        50 |        50 |        50 |        38 |      2689 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        36 |        47 |        59 |        66 |        70 |        70 |      9150 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11839 |
|                    Δ                     |         0 |       -11 |       -22 |       -34 |       -41 |       -45 |       -45 |      2689 |
|              Improvement %               |         0 |        31 |        47 |        58 |        62 |        64 |        64 |      2689 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      9150 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11839 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      2689 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      2689 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1148 |      1149 |      1150 |      1156 |      1160 |      1167 |      1184 |      9150 |
|                  jbird                   |      1318 |      1319 |      1319 |      1319 |      1319 |      1348 |      1373 |     11839 |
|                    Δ                     |       170 |       170 |       169 |       163 |       159 |       181 |       189 |      2689 |
|              Improvement %               |       -15 |       -15 |       -15 |       -14 |       -14 |       -16 |       -16 |      2689 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       243 |       266 |       272 |       278 |       284 |       303 |       396 |      3279 |
|                  jbird                   |        87 |        97 |        99 |       100 |       103 |       116 |       159 |      7688 |
|                    Δ                     |      -156 |      -169 |      -173 |      -178 |      -181 |      -187 |      -237 |      4409 |
|              Improvement %               |        64 |        64 |        64 |        64 |        64 |        62 |        60 |      4409 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       244 |       267 |       274 |       280 |       285 |       305 |       398 |      3279 |
|                  jbird                   |        89 |        98 |       100 |       102 |       105 |       116 |       163 |      7688 |
|                    Δ                     |      -155 |      -169 |      -174 |      -178 |      -180 |      -189 |      -235 |      4409 |
|              Improvement %               |        64 |        63 |        64 |        64 |        63 |        62 |        59 |      4409 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4113 |      3765 |      3677 |      3599 |      3525 |      3307 |      2522 |      3279 |
|                  jbird                   |     11450 |     10367 |     10135 |      9999 |      9679 |      8631 |      6288 |      7688 |
|                    Δ                     |      7337 |      6602 |      6458 |      6400 |      6154 |      5324 |      3766 |      4409 |
|              Improvement %               |       178 |       175 |       176 |       178 |       175 |       161 |       149 |      4409 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        86 |       148 |       212 |       250 |       271 |       274 |      3279 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7688 |
|                    Δ                     |         0 |       -60 |      -122 |      -186 |      -224 |      -245 |      -248 |      4409 |
|              Improvement %               |         0 |        70 |        82 |        88 |        90 |        90 |        91 |      4409 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3279 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7688 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4409 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4409 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6959 |      6967 |      6971 |      6988 |      7000 |      7029 |      7140 |      3279 |
|                  jbird                   |      2638 |      2638 |      2638 |      2640 |      2640 |      2654 |      2869 |      7688 |
|                    Δ                     |     -4321 |     -4329 |     -4333 |     -4348 |     -4360 |     -4375 |     -4271 |      4409 |
|              Improvement %               |        62 |        62 |        62 |        62 |        62 |        62 |        60 |      4409 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       380 |       415 |       420 |       425 |       431 |       453 |       490 |      2206 |
|                  jbird                   |        51 |        57 |        58 |        59 |        61 |        70 |       130 |     11185 |
|                    Δ                     |      -329 |      -358 |      -362 |      -366 |      -370 |      -383 |      -360 |      8979 |
|              Improvement %               |        87 |        86 |        86 |        86 |        86 |        85 |        73 |      8979 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       381 |       417 |       421 |       426 |       433 |       455 |       494 |      2206 |
|                  jbird                   |        52 |        59 |        59 |        60 |        62 |        72 |       133 |     11185 |
|                    Δ                     |      -329 |      -358 |      -362 |      -366 |      -371 |      -383 |      -361 |      8979 |
|              Improvement %               |        86 |        86 |        86 |        86 |        86 |        84 |        73 |      8979 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2632 |      2411 |      2385 |      2355 |      2321 |      2209 |      2039 |      2206 |
|                  jbird                   |     19544 |     17471 |     17343 |     17055 |     16479 |     14295 |      7722 |     11185 |
|                    Δ                     |     16912 |     15060 |     14958 |     14700 |     14158 |     12086 |      5683 |      8979 |
|              Improvement %               |       643 |       625 |       627 |       624 |       610 |       547 |       279 |      8979 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |        77 |       126 |       178 |       208 |       229 |       229 |      2206 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11185 |
|                    Δ                     |         0 |       -51 |      -100 |      -152 |      -182 |      -203 |      -203 |      8979 |
|              Improvement %               |         0 |        66 |        79 |        85 |        88 |        89 |        89 |      8979 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2206 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11185 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8979 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8979 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      9063 |      9093 |      9101 |      9101 |      9110 |      9241 |      9263 |      2206 |
|                  jbird                   |      1611 |      1612 |      1612 |      1612 |      1612 |      1620 |      1735 |     11185 |
|                    Δ                     |     -7452 |     -7481 |     -7489 |     -7489 |     -7498 |     -7621 |     -7528 |      8979 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |      8979 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        73 |        80 |        84 |        88 |        91 |       102 |       139 |      8445 |
|                  jbird                   |        28 |        30 |        31 |        31 |        32 |        39 |        67 |     15357 |
|                    Δ                     |       -45 |       -50 |       -53 |       -57 |       -59 |       -63 |       -72 |      6912 |
|              Improvement %               |        62 |        62 |        63 |        65 |        65 |        62 |        52 |      6912 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        81 |        86 |        90 |        93 |       103 |       140 |      8445 |
|                  jbird                   |        29 |        32 |        32 |        33 |        33 |        41 |        65 |     15357 |
|                    Δ                     |       -46 |       -49 |       -54 |       -57 |       -60 |       -62 |       -75 |      6912 |
|              Improvement %               |        61 |        60 |        63 |        63 |        65 |        60 |        54 |      6912 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        12 |        12 |        11 |        11 |        10 |         7 |      8445 |
|                  jbird                   |        36 |        33 |        32 |        32 |        32 |        25 |        15 |     15357 |
|                    Δ                     |        22 |        21 |        20 |        21 |        21 |        15 |         8 |      6912 |
|              Improvement %               |       157 |       175 |       167 |       191 |       191 |       150 |       114 |      6912 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        25 |       152 |       289 |       417 |       500 |       545 |       552 |      8445 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15357 |
|                    Δ                     |         0 |      -127 |      -264 |      -392 |      -475 |      -520 |      -527 |      6912 |
|              Improvement %               |         0 |        84 |        91 |        94 |        95 |        95 |        95 |      6912 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8445 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15357 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      6912 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      6912 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1891 |      1907 |      1912 |      1918 |      1924 |      2043 |      2098 |      8445 |
|                  jbird                   |       878 |       879 |       879 |       880 |       880 |       885 |       937 |     15357 |
|                    Δ                     |     -1013 |     -1028 |     -1033 |     -1038 |     -1044 |     -1158 |     -1161 |      6912 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        57 |        55 |      6912 |

<p>
</details>

