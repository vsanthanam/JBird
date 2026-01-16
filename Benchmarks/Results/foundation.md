## JBird vs Foundation

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2642 |      2834 |      2869 |      2908 |      2939 |      3047 |      3077 |       343 |
|                  jbird                   |      1927 |      2023 |      2051 |      2076 |      2103 |      2255 |      2290 |       477 |
|                    Δ                     |      -715 |      -811 |      -818 |      -832 |      -836 |      -792 |      -787 |       134 |
|              Improvement %               |        27 |        29 |        29 |        29 |        28 |        26 |        26 |       134 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2644 |      2836 |      2873 |      2912 |      2943 |      3037 |      3086 |       343 |
|                  jbird                   |      1928 |      2026 |      2054 |      2079 |      2105 |      2247 |      2292 |       477 |
|                    Δ                     |      -716 |      -810 |      -819 |      -833 |      -838 |      -790 |      -794 |       134 |
|              Improvement %               |        27 |        29 |        29 |        29 |        28 |        26 |        26 |       134 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       378 |       353 |       349 |       344 |       340 |       328 |       325 |       343 |
|                  jbird                   |       519 |       494 |       488 |       482 |       476 |       443 |       437 |       477 |
|                    Δ                     |       141 |       141 |       139 |       138 |       136 |       115 |       112 |       134 |
|              Improvement %               |        37 |        40 |        40 |        40 |        40 |        35 |        34 |       134 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |       154 |       283 |       405 |       478 |       522 |       528 |       343 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       477 |
|                    Δ                     |         3 |      -116 |      -245 |      -367 |      -440 |      -484 |      -490 |       134 |
|              Improvement %               |        -9 |        75 |        87 |        91 |        92 |        93 |        93 |       134 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       343 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       477 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       134 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       134 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       343 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        47 |        48 |       477 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       -17 |       134 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        28 |        26 |       134 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2744 |      2939 |      2957 |      2976 |      3017 |      3148 |      3192 |       333 |
|                  jbird                   |      1914 |      2044 |      2059 |      2090 |      2116 |      2245 |      2316 |       474 |
|                    Δ                     |      -830 |      -895 |      -898 |      -886 |      -901 |      -903 |      -876 |       141 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        29 |        27 |       141 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2750 |      2943 |      2959 |      2978 |      3019 |      3154 |      3194 |       333 |
|                  jbird                   |      1920 |      2046 |      2062 |      2092 |      2120 |      2241 |      2325 |       474 |
|                    Δ                     |      -830 |      -897 |      -897 |      -886 |      -899 |      -913 |      -869 |       141 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        29 |        27 |       141 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       364 |       340 |       338 |       336 |       332 |       318 |       313 |       333 |
|                  jbird                   |       522 |       489 |       486 |       479 |       473 |       446 |       432 |       474 |
|                    Δ                     |       158 |       149 |       148 |       143 |       141 |       128 |       119 |       141 |
|              Improvement %               |        43 |        44 |        44 |        43 |        42 |        40 |        38 |       141 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |       155 |       273 |       393 |       465 |       513 |       513 |       333 |
|                  jbird                   |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       474 |
|                    Δ                     |         3 |      -117 |      -235 |      -355 |      -427 |      -475 |      -475 |       141 |
|              Improvement %               |        -9 |        75 |        86 |        90 |        92 |        93 |        93 |       141 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        15 |        15 |        15 |        15 |        15 |        15 |        15 |       333 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       474 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       141 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |       141 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        66 |        66 |        66 |        66 |        66 |        66 |        66 |       333 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       474 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       141 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        27 |       141 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       652 |       720 |       727 |       735 |       746 |       791 |       894 |      1306 |
|                  jbird                   |       449 |       505 |       510 |       515 |       523 |       564 |     18615 |      1784 |
|                    Δ                     |      -203 |      -215 |      -217 |      -220 |      -223 |      -227 |     17721 |       478 |
|              Improvement %               |        31 |        30 |        30 |        30 |        30 |        29 |     -1982 |       478 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       654 |       721 |       729 |       736 |       749 |       793 |       896 |      1306 |
|                  jbird                   |       450 |       506 |       511 |       517 |       525 |       566 |       624 |      1784 |
|                    Δ                     |      -204 |      -215 |      -218 |      -219 |      -224 |      -227 |      -272 |       478 |
|              Improvement %               |        31 |        30 |        30 |        30 |        30 |        29 |        30 |       478 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1533 |      1390 |      1376 |      1362 |      1341 |      1265 |      1118 |      1306 |
|                  jbird                   |      2227 |      1982 |      1962 |      1943 |      1912 |      1773 |        54 |      1784 |
|                    Δ                     |       694 |       592 |       586 |       581 |       571 |       508 |     -1064 |       478 |
|              Improvement %               |        45 |        43 |        43 |        43 |        43 |        40 |       -95 |       478 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       147 |       272 |       388 |       465 |       509 |       509 |      1306 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1784 |
|                    Δ                     |         0 |      -114 |      -239 |      -355 |      -432 |      -476 |      -476 |       478 |
|              Improvement %               |         0 |        78 |        88 |        91 |        93 |        94 |        94 |       478 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1306 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1784 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       478 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       478 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1306 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1784 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -5 |       478 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        29 |       478 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       674 |       740 |       747 |       755 |       769 |       836 |       956 |      1270 |
|                  jbird                   |       459 |       510 |       515 |       522 |       532 |       604 |       661 |      1790 |
|                    Δ                     |      -215 |      -230 |      -232 |      -233 |      -237 |      -232 |      -295 |       520 |
|              Improvement %               |        32 |        31 |        31 |        31 |        31 |        28 |        31 |       520 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       675 |       742 |       749 |       757 |       772 |       839 |       958 |      1270 |
|                  jbird                   |       461 |       512 |       517 |       524 |       534 |       606 |       663 |      1790 |
|                    Δ                     |      -214 |      -230 |      -232 |      -233 |      -238 |      -233 |      -295 |       520 |
|              Improvement %               |        32 |        31 |        31 |        31 |        31 |        28 |        31 |       520 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1484 |      1351 |      1339 |      1325 |      1300 |      1196 |      1046 |      1270 |
|                  jbird                   |      2177 |      1960 |      1941 |      1915 |      1881 |      1656 |      1512 |      1790 |
|                    Δ                     |       693 |       609 |       602 |       590 |       581 |       460 |       466 |       520 |
|              Improvement %               |        47 |        45 |        45 |        45 |        45 |        38 |        45 |       520 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       148 |       263 |       378 |       449 |       495 |       495 |      1270 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      1790 |
|                    Δ                     |         0 |      -115 |      -230 |      -345 |      -416 |      -462 |      -462 |       520 |
|              Improvement %               |         0 |        78 |        87 |        91 |        93 |        93 |        93 |       520 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3753 |      3753 |      3753 |      3753 |      3753 |      3753 |      3754 |      1270 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1790 |
|                    Δ                     |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1117 |     -1118 |       520 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        30 |        30 |       520 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        16 |        16 |        17 |        17 |        17 |        17 |        17 |      1270 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1790 |
|                    Δ                     |        -4 |        -4 |        -5 |        -5 |        -5 |        -5 |        -5 |       520 |
|              Improvement %               |        25 |        25 |        29 |        29 |        29 |        29 |        29 |       520 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1303 |      1419 |      1433 |      1445 |      1461 |      1516 |      1614 |       680 |
|                  jbird                   |       918 |      1008 |      1021 |      1032 |      1048 |      1119 |      1193 |       940 |
|                    Δ                     |      -385 |      -411 |      -412 |      -413 |      -413 |      -397 |      -421 |       260 |
|              Improvement %               |        30 |        29 |        29 |        29 |        28 |        26 |        26 |       260 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1305 |      1421 |      1435 |      1447 |      1464 |      1520 |      1616 |       680 |
|                  jbird                   |       920 |      1010 |      1023 |      1034 |      1050 |      1120 |      1191 |       940 |
|                    Δ                     |      -385 |      -411 |      -412 |      -413 |      -414 |      -400 |      -425 |       260 |
|              Improvement %               |        30 |        29 |        29 |        29 |        28 |        26 |        26 |       260 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       767 |       705 |       698 |       692 |       684 |       660 |       619 |       680 |
|                  jbird                   |      1090 |       992 |       979 |       969 |       954 |       894 |       838 |       940 |
|                    Δ                     |       323 |       287 |       281 |       277 |       270 |       234 |       219 |       260 |
|              Improvement %               |        42 |        41 |        40 |        40 |        39 |        35 |        35 |       260 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       155 |       278 |       402 |       478 |       520 |       527 |       680 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       940 |
|                    Δ                     |         1 |      -120 |      -243 |      -367 |      -443 |      -485 |      -492 |       260 |
|              Improvement %               |        -3 |        77 |        87 |        91 |        93 |        93 |        93 |       260 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       680 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       940 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       260 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       260 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       680 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       940 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |       -10 |        -9 |       260 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        30 |        27 |       260 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1334 |      1453 |      1470 |      1485 |      1503 |      1619 |      1700 |       662 |
|                  jbird                   |       934 |      1020 |      1029 |      1039 |      1056 |      1144 |      1187 |       931 |
|                    Δ                     |      -400 |      -433 |      -441 |      -446 |      -447 |      -475 |      -513 |       269 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        29 |        30 |       269 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1339 |      1455 |      1471 |      1487 |      1504 |      1620 |      1702 |       662 |
|                  jbird                   |       935 |      1022 |      1031 |      1041 |      1057 |      1146 |      1189 |       931 |
|                    Δ                     |      -404 |      -433 |      -440 |      -446 |      -447 |      -474 |      -513 |       269 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        29 |        30 |       269 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       750 |       688 |       680 |       674 |       666 |       618 |       588 |       662 |
|                  jbird                   |      1071 |       980 |       973 |       963 |       948 |       875 |       842 |       931 |
|                    Δ                     |       321 |       292 |       293 |       289 |       282 |       257 |       254 |       269 |
|              Improvement %               |        43 |        42 |        43 |        43 |        42 |        42 |        43 |       269 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       150 |       271 |       392 |       466 |       508 |       514 |       662 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       931 |
|                    Δ                     |         1 |      -115 |      -236 |      -357 |      -431 |      -473 |      -479 |       269 |
|              Improvement %               |        -3 |        77 |        87 |        91 |        92 |        93 |        93 |       269 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      7438 |      7439 |      7439 |      7439 |      7439 |      7439 |      7439 |       662 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       931 |
|                    Δ                     |     -2168 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |     -2169 |       269 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        29 |       269 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       662 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        24 |        24 |       931 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -9 |       269 |
|              Improvement %               |        30 |        30 |        30 |        30 |        30 |        27 |        27 |       269 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        15 |        15 |        71 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -4 |        -4 |        22 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        27 |        27 |        22 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        14 |        14 |        14 |        14 |        15 |        15 |        71 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        93 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -4 |        -4 |        22 |
|              Improvement %               |        23 |        21 |        21 |        21 |        21 |        27 |        27 |        22 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        71 |        70 |        70 |        69 |        68 |        68 |        71 |
|                  jbird                   |        98 |        95 |        94 |        93 |        92 |        90 |        90 |        93 |
|                    Δ                     |        24 |        24 |        24 |        23 |        23 |        22 |        22 |        22 |
|              Improvement %               |        32 |        34 |        34 |        33 |        33 |        32 |        32 |        22 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        45 |       166 |       294 |       423 |       499 |       549 |       549 |        71 |
|                  jbird                   |        35 |        60 |        60 |        60 |        60 |        60 |        60 |        93 |
|                    Δ                     |       -10 |      -106 |      -234 |      -363 |      -439 |      -489 |      -489 |        22 |
|              Improvement %               |        22 |        64 |        80 |        86 |        88 |        89 |        89 |        22 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        71 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        93 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        22 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        22 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       322 |       322 |       322 |       322 |       323 |       323 |       323 |        71 |
|                  jbird                   |       232 |       236 |       236 |       236 |       236 |       244 |       244 |        93 |
|                    Δ                     |       -90 |       -86 |       -86 |       -86 |       -87 |       -79 |       -79 |        22 |
|              Improvement %               |        28 |        27 |        27 |        27 |        27 |        24 |        24 |        22 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        15 |        15 |        68 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -3 |        -4 |        -4 |        -4 |        -4 |        -3 |        -3 |        21 |
|              Improvement %               |        21 |        27 |        27 |        27 |        27 |        20 |        20 |        21 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        14 |        15 |        15 |        15 |        15 |        15 |        15 |        68 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        12 |        12 |        89 |
|                    Δ                     |        -3 |        -4 |        -4 |        -4 |        -4 |        -3 |        -3 |        21 |
|              Improvement %               |        21 |        27 |        27 |        27 |        27 |        20 |        20 |        21 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        70 |        68 |        68 |        67 |        67 |        66 |        66 |        68 |
|                  jbird                   |        93 |        91 |        90 |        89 |        88 |        83 |        83 |        89 |
|                    Δ                     |        23 |        23 |        22 |        22 |        21 |        17 |        17 |        21 |
|              Improvement %               |        33 |        34 |        32 |        33 |        31 |        26 |        26 |        21 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        45 |       159 |       284 |       403 |       487 |       528 |       528 |        68 |
|                  jbird                   |        35 |        58 |        58 |        58 |        58 |        58 |        58 |        89 |
|                    Δ                     |       -10 |      -101 |      -226 |      -345 |      -429 |      -470 |      -470 |        21 |
|              Improvement %               |        22 |        64 |        80 |        86 |        88 |        89 |        89 |        21 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        74 |        74 |        74 |        74 |        74 |        74 |        74 |        68 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |       -21 |        21 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        28 |        21 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       327 |       327 |       327 |       327 |       327 |       329 |       329 |        68 |
|                  jbird                   |       244 |       244 |       244 |       244 |       244 |       249 |       249 |        89 |
|                    Δ                     |       -83 |       -83 |       -83 |       -83 |       -83 |       -80 |       -80 |        21 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        24 |        24 |        21 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       166 |       186 |       189 |       191 |       196 |       226 |       256 |      4402 |
|                  jbird                   |       112 |       126 |       127 |       128 |       132 |       152 |       182 |      6055 |
|                    Δ                     |       -54 |       -60 |       -62 |       -63 |       -64 |       -74 |       -74 |      1653 |
|              Improvement %               |        33 |        32 |        33 |        33 |        33 |        33 |        29 |      1653 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       188 |       190 |       193 |       198 |       228 |       257 |      4402 |
|                  jbird                   |       114 |       127 |       128 |       130 |       134 |       154 |       173 |      6055 |
|                    Δ                     |       -53 |       -61 |       -62 |       -63 |       -64 |       -74 |       -84 |      1653 |
|              Improvement %               |        32 |        32 |        33 |        33 |        32 |        32 |        33 |      1653 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6041 |      5379 |      5303 |      5231 |      5095 |      4423 |      3902 |      4402 |
|                  jbird                   |      8889 |      7947 |      7879 |      7799 |      7579 |      6567 |      5505 |      6055 |
|                    Δ                     |      2848 |      2568 |      2576 |      2568 |      2484 |      2144 |      1603 |      1653 |
|              Improvement %               |        47 |        48 |        49 |        49 |        49 |        48 |        41 |      1653 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       138 |       242 |       353 |       412 |       455 |       460 |      4402 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        32 |      6055 |
|                    Δ                     |         1 |      -106 |      -210 |      -321 |      -380 |      -423 |      -428 |      1653 |
|              Improvement %               |        -3 |        77 |        87 |        91 |        92 |        93 |        93 |      1653 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4402 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6055 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1653 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1653 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4116 |      4145 |      4153 |      4162 |      4170 |      4190 |      4216 |      4402 |
|                  jbird                   |      2887 |      2888 |      2888 |      2888 |      2890 |      2912 |      3064 |      6055 |
|                    Δ                     |     -1229 |     -1257 |     -1265 |     -1274 |     -1280 |     -1278 |     -1152 |      1653 |
|              Improvement %               |        30 |        30 |        30 |        31 |        31 |        31 |        27 |      1653 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       173 |       193 |       195 |       198 |       203 |       215 |     18620 |      4213 |
|                  jbird                   |       116 |       129 |       130 |       131 |       134 |       150 |       185 |      5964 |
|                    Δ                     |       -57 |       -64 |       -65 |       -67 |       -69 |       -65 |    -18435 |      1751 |
|              Improvement %               |        33 |        33 |        33 |        34 |        34 |        30 |        99 |      1751 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       174 |       194 |       197 |       200 |       205 |       217 |       318 |      4213 |
|                  jbird                   |       117 |       130 |       131 |       133 |       136 |       151 |       193 |      5964 |
|                    Δ                     |       -57 |       -64 |       -66 |       -67 |       -69 |       -66 |      -125 |      1751 |
|              Improvement %               |        33 |        33 |        34 |        34 |        34 |        30 |        39 |      1751 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      5786 |      5199 |      5127 |      5055 |      4931 |      4659 |        54 |      4213 |
|                  jbird                   |      8649 |      7775 |      7711 |      7619 |      7447 |      6683 |      5394 |      5964 |
|                    Δ                     |      2863 |      2576 |      2584 |      2564 |      2516 |      2024 |      5340 |      1751 |
|              Improvement %               |        49 |        50 |        50 |        51 |        51 |        43 |      9889 |      1751 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       131 |       234 |       338 |       401 |       438 |       438 |      4213 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      5964 |
|                    Δ                     |         0 |       -99 |      -202 |      -306 |      -369 |      -406 |      -406 |      1751 |
|              Improvement %               |         0 |        76 |        86 |        91 |        92 |        93 |        93 |      1751 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       986 |       986 |       986 |       986 |       986 |       986 |       987 |      4213 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5964 |
|                    Δ                     |      -324 |      -324 |      -324 |      -324 |      -324 |      -324 |      -325 |      1751 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        33 |        33 |      1751 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4180 |      4211 |      4219 |      4223 |      4235 |      4256 |      4458 |      4213 |
|                  jbird                   |      2933 |      2933 |      2933 |      2935 |      2935 |      2957 |      3110 |      5964 |
|                    Δ                     |     -1247 |     -1278 |     -1286 |     -1288 |     -1300 |     -1299 |     -1348 |      1751 |
|              Improvement %               |        30 |        30 |        30 |        30 |        31 |        31 |        30 |      1751 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       285 |       321 |       324 |       332 |       346 |       384 |       471 |      2761 |
|                  jbird                   |       114 |       128 |       130 |       132 |       136 |       151 |     21862 |      5995 |
|                    Δ                     |      -171 |      -193 |      -194 |      -200 |      -210 |      -233 |     21391 |      3234 |
|              Improvement %               |        60 |        60 |        60 |        60 |        61 |        61 |     -4542 |      3234 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       287 |       322 |       325 |       334 |       348 |       385 |       468 |      2761 |
|                  jbird                   |       116 |       129 |       132 |       133 |       137 |       153 |       278 |      5995 |
|                    Δ                     |      -171 |      -193 |      -193 |      -201 |      -211 |      -232 |      -190 |      3234 |
|              Improvement %               |        60 |        60 |        59 |        60 |        61 |        60 |        41 |      3234 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      3504 |      3123 |      3091 |      3015 |      2891 |      2609 |      2124 |      2761 |
|                  jbird                   |      8750 |      7815 |      7667 |      7603 |      7379 |      6647 |        46 |      5995 |
|                    Δ                     |      5246 |      4692 |      4576 |      4588 |      4488 |      4038 |     -2078 |      3234 |
|              Improvement %               |       150 |       150 |       148 |       152 |       155 |       155 |       -98 |      3234 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        99 |       164 |       231 |       271 |       295 |       299 |      2761 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      5995 |
|                    Δ                     |         1 |       -66 |      -131 |      -198 |      -238 |      -262 |      -266 |      3234 |
|              Improvement %               |        -3 |        67 |        80 |        86 |        88 |        89 |        89 |      3234 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        13 |        13 |        13 |        13 |        14 |      2761 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      5995 |
|                    Δ                     |        15 |        15 |        15 |        15 |        15 |        15 |        14 |      3234 |
|              Improvement %               |      -115 |      -115 |      -115 |      -115 |      -115 |      -115 |      -100 |      3234 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8645 |      8659 |      8659 |      8667 |      8675 |      8692 |      9040 |      2761 |
|                  jbird                   |      3876 |      3877 |      3877 |      3877 |      3877 |      3893 |      4347 |      5995 |
|                    Δ                     |     -4769 |     -4782 |     -4782 |     -4790 |     -4798 |     -4799 |     -4693 |      3234 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        52 |      3234 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        13 |        13 |        13 |        14 |        14 |        79 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       177 |
|                    Δ                     |        -7 |        -6 |        -7 |        -7 |        -7 |        -8 |        -8 |        98 |
|              Improvement %               |        58 |        50 |        54 |        54 |        54 |        57 |        57 |        98 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        12 |        12 |        13 |        13 |        13 |        14 |        14 |        79 |
|                  jbird                   |         5 |         6 |         6 |         6 |         6 |         6 |         6 |       177 |
|                    Δ                     |        -7 |        -6 |        -7 |        -7 |        -7 |        -8 |        -8 |        98 |
|              Improvement %               |        58 |        50 |        54 |        54 |        54 |        57 |        57 |        98 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        82 |        80 |        79 |        79 |        78 |        74 |        74 |        79 |
|                  jbird                   |       189 |       182 |       180 |       178 |       176 |       171 |       171 |       177 |
|                    Δ                     |       107 |       102 |       101 |        99 |        98 |        97 |        97 |        98 |
|              Improvement %               |       130 |       128 |       128 |       125 |       126 |       131 |       131 |        98 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        43 |       155 |       272 |       394 |       465 |       505 |       505 |        79 |
|                  jbird                   |        33 |        52 |        52 |        52 |        52 |        52 |        52 |       177 |
|                    Δ                     |       -10 |      -103 |      -220 |      -342 |      -413 |      -453 |      -453 |        98 |
|              Improvement %               |        23 |        66 |        81 |        87 |        89 |        90 |        90 |        98 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       167 |       167 |       167 |       167 |       167 |       167 |       167 |        79 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       177 |
|                    Δ                     |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |      -111 |        98 |
|              Improvement %               |        66 |        66 |        66 |        66 |        66 |        66 |        66 |        98 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       309 |       309 |       309 |       309 |       309 |       313 |       313 |        79 |
|                  jbird                   |       146 |       146 |       146 |       146 |       147 |       147 |       151 |       177 |
|                    Δ                     |      -163 |      -163 |      -163 |      -163 |      -162 |      -166 |      -162 |        98 |
|              Improvement %               |        53 |        53 |        53 |        53 |        52 |        53 |        52 |        98 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        75 |        78 |        84 |        86 |        87 |        97 |       117 |      8790 |
|                  jbird                   |        47 |        53 |        53 |        53 |        55 |        63 |        89 |     11706 |
|                    Δ                     |       -28 |       -25 |       -31 |       -33 |       -32 |       -34 |       -28 |      2916 |
|              Improvement %               |        37 |        32 |        37 |        38 |        37 |        35 |        24 |      2916 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        79 |        85 |        87 |        89 |       100 |       118 |      8790 |
|                  jbird                   |        49 |        54 |        55 |        55 |        56 |        65 |        88 |     11706 |
|                    Δ                     |       -28 |       -25 |       -30 |       -32 |       -33 |       -35 |       -30 |      2916 |
|              Improvement %               |        36 |        32 |        35 |        37 |        37 |        35 |        25 |      2916 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        13 |        12 |        12 |        11 |        10 |         9 |      8790 |
|                  jbird                   |        21 |        19 |        19 |        19 |        18 |        16 |        11 |     11706 |
|                    Δ                     |         8 |         6 |         7 |         7 |         7 |         6 |         2 |      2916 |
|              Improvement %               |        62 |        46 |        58 |        58 |        64 |        60 |        22 |      2916 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        42 |        53 |        64 |        71 |        75 |        75 |      8790 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     11706 |
|                    Δ                     |         0 |       -10 |       -21 |       -32 |       -39 |       -43 |       -43 |      2916 |
|              Improvement %               |         0 |        24 |        40 |        50 |        55 |        57 |        57 |      2916 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       154 |       154 |       154 |       154 |       154 |       154 |       155 |      8790 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11706 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |      2916 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      2916 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1147 |      1148 |      1149 |      1155 |      1159 |      1166 |      1188 |      8790 |
|                  jbird                   |      1308 |      1309 |      1309 |      1309 |      1309 |      1326 |      1379 |     11706 |
|                    Δ                     |       161 |       161 |       160 |       154 |       150 |       160 |       191 |      2916 |
|              Improvement %               |       -14 |       -14 |       -14 |       -13 |       -13 |       -14 |       -16 |      2916 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       237 |       267 |       271 |       278 |       289 |       331 |       388 |      3235 |
|                  jbird                   |        87 |        97 |        98 |        99 |       102 |       117 |       143 |      7621 |
|                    Δ                     |      -150 |      -170 |      -173 |      -179 |      -187 |      -214 |      -245 |      4386 |
|              Improvement %               |        63 |        64 |        64 |        64 |        65 |        65 |        63 |      4386 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       238 |       268 |       273 |       280 |       291 |       333 |       371 |      3235 |
|                  jbird                   |        88 |        99 |       100 |       101 |       104 |       119 |       147 |      7621 |
|                    Δ                     |      -150 |      -169 |      -173 |      -179 |      -187 |      -214 |      -224 |      4386 |
|              Improvement %               |        63 |        63 |        63 |        64 |        64 |        64 |        60 |      4386 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      4222 |      3753 |      3693 |      3603 |      3459 |      3019 |      2576 |      3235 |
|                  jbird                   |     11467 |     10263 |     10207 |     10095 |      9791 |      8535 |      6991 |      7621 |
|                    Δ                     |      7245 |      6510 |      6514 |      6492 |      6332 |      5516 |      4415 |      4386 |
|              Improvement %               |       172 |       173 |       176 |       180 |       183 |       183 |       171 |      4386 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        93 |       154 |       215 |       251 |       275 |       275 |      3235 |
|                  jbird                   |        32 |        33 |        33 |        33 |        33 |        33 |        33 |      7621 |
|                    Δ                     |         1 |       -60 |      -121 |      -182 |      -218 |      -242 |      -242 |      4386 |
|              Improvement %               |        -3 |        65 |        79 |        85 |        87 |        88 |        88 |      4386 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       812 |       812 |       812 |       812 |       812 |       812 |       813 |      3235 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7621 |
|                    Δ                     |      -794 |      -794 |      -794 |      -794 |      -794 |      -794 |      -795 |      4386 |
|              Improvement %               |        98 |        98 |        98 |        98 |        98 |        98 |        98 |      4386 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6935 |      6943 |      6943 |      6971 |      6975 |      7004 |      7058 |      3235 |
|                  jbird                   |      2673 |      2675 |      2675 |      2675 |      2675 |      2689 |      2879 |      7621 |
|                    Δ                     |     -4262 |     -4268 |     -4268 |     -4296 |     -4300 |     -4315 |     -4179 |      4386 |
|              Improvement %               |        61 |        61 |        61 |        62 |        62 |        62 |        59 |      4386 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       373 |       418 |       421 |       424 |       428 |       460 |       584 |      2190 |
|                  jbird                   |        54 |        61 |        62 |        62 |        65 |        76 |       130 |     10593 |
|                    Δ                     |      -319 |      -357 |      -359 |      -362 |      -363 |      -384 |      -454 |      8403 |
|              Improvement %               |        86 |        85 |        85 |        85 |        85 |        83 |        78 |      8403 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       375 |       420 |       423 |       426 |       430 |       458 |       578 |      2190 |
|                  jbird                   |        56 |        63 |        63 |        64 |        66 |        78 |       132 |     10593 |
|                    Δ                     |      -319 |      -357 |      -360 |      -362 |      -364 |      -380 |      -446 |      8403 |
|              Improvement %               |        85 |        85 |        85 |        85 |        85 |        83 |        77 |      8403 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2678 |      2391 |      2373 |      2359 |      2337 |      2175 |      1712 |      2190 |
|                  jbird                   |     18349 |     16351 |     16239 |     16119 |     15511 |     13119 |      7695 |     10593 |
|                    Δ                     |     15671 |     13960 |     13866 |     13760 |     13174 |     10944 |      5983 |      8403 |
|              Improvement %               |       585 |       584 |       584 |       583 |       564 |       503 |       349 |      8403 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |        82 |       132 |       184 |       215 |       233 |       235 |      2190 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     10593 |
|                    Δ                     |         0 |       -50 |      -100 |      -152 |      -183 |      -201 |      -203 |      8403 |
|              Improvement %               |         0 |        61 |        76 |        83 |        85 |        86 |        86 |      8403 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      2967 |      2967 |      2967 |      2967 |      2967 |      2967 |      2968 |      2190 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     10593 |
|                    Δ                     |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2957 |     -2958 |      8403 |
|              Improvement %               |       100 |       100 |       100 |       100 |       100 |       100 |       100 |      8403 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      8906 |      8937 |      8946 |      8946 |      8954 |      9052 |      9284 |      2190 |
|                  jbird                   |      1612 |      1614 |      1614 |      1614 |      1614 |      1624 |      1732 |     10593 |
|                    Δ                     |     -7294 |     -7323 |     -7332 |     -7332 |     -7340 |     -7428 |     -7552 |      8403 |
|              Improvement %               |        82 |        82 |        82 |        82 |        82 |        82 |        81 |      8403 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        76 |        84 |        87 |        88 |        91 |       101 |       141 |      8223 |
|                  jbird                   |        27 |        30 |        30 |        32 |        33 |        39 |        73 |     15165 |
|                    Δ                     |       -49 |       -54 |       -57 |       -56 |       -58 |       -62 |       -68 |      6942 |
|              Improvement %               |        64 |        64 |        66 |        64 |        64 |        61 |        48 |      6942 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        77 |        85 |        88 |        90 |        93 |       103 |       133 |      8223 |
|                  jbird                   |        28 |        32 |        32 |        34 |        34 |        41 |        65 |     15165 |
|                    Δ                     |       -49 |       -53 |       -56 |       -56 |       -59 |       -62 |       -68 |      6942 |
|              Improvement %               |        64 |        62 |        64 |        62 |        63 |        60 |        51 |      6942 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        13 |        12 |        12 |        11 |        11 |        10 |         7 |      8223 |
|                  jbird                   |        38 |        33 |        33 |        31 |        30 |        26 |        14 |     15165 |
|                    Δ                     |        25 |        21 |        21 |        20 |        19 |        16 |         7 |      6942 |
|              Improvement %               |       192 |       175 |       175 |       182 |       173 |       160 |       100 |      6942 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        31 |       159 |       286 |       417 |       494 |       541 |       548 |      8223 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |     15165 |
|                    Δ                     |         0 |      -127 |      -254 |      -385 |      -462 |      -509 |      -516 |      6942 |
|              Improvement %               |         0 |        80 |        89 |        92 |        94 |        94 |        94 |      6942 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        84 |        84 |        84 |        84 |        84 |        84 |        85 |      8223 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15165 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -8 |      6942 |
|              Improvement %               |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      6942 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1893 |      1909 |      1916 |      1922 |      1928 |      1945 |      2095 |      8223 |
|                  jbird                   |       859 |       859 |       859 |       860 |       860 |       864 |       935 |     15165 |
|                    Δ                     |     -1034 |     -1050 |     -1057 |     -1062 |     -1068 |     -1081 |     -1160 |      6942 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        56 |        55 |      6942 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1945 |      2079 |      2092 |      2107 |      2132 |      2261 |      2321 |       469 |
|                  jbird                   |      1518 |      1641 |      1652 |      1670 |      1704 |      1832 |      1882 |       588 |
|                    Δ                     |      -427 |      -438 |      -440 |      -437 |      -428 |      -429 |      -439 |       119 |
|              Improvement %               |        22 |        21 |        21 |        21 |        20 |        19 |        19 |       119 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      1946 |      2080 |      2093 |      2109 |      2134 |      2263 |      2322 |       469 |
|                  jbird                   |      1519 |      1644 |      1654 |      1673 |      1706 |      1836 |      1876 |       588 |
|                    Δ                     |      -427 |      -436 |      -439 |      -436 |      -428 |      -427 |      -446 |       119 |
|              Improvement %               |        22 |        21 |        21 |        21 |        20 |        19 |        19 |       119 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |       514 |       481 |       478 |       475 |       469 |       443 |       431 |       469 |
|                  jbird                   |       659 |       609 |       606 |       599 |       587 |       546 |       531 |       588 |
|                    Δ                     |       145 |       128 |       128 |       124 |       118 |       103 |       100 |       119 |
|              Improvement %               |        28 |        27 |        27 |        26 |        25 |        23 |        23 |       119 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        32 |       117 |       200 |       281 |       334 |       364 |       368 |       469 |
|                  jbird                   |        34 |        37 |        37 |        37 |        37 |        37 |        37 |       588 |
|                    Δ                     |         2 |       -80 |      -163 |      -244 |      -297 |      -327 |      -331 |       119 |
|              Improvement %               |        -6 |        68 |        82 |        87 |        89 |        90 |        90 |       119 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |      6636 |      6637 |      6637 |      6637 |      6637 |      6637 |      6637 |       469 |
|                  jbird                   |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |      7995 |       588 |
|                    Δ                     |      1359 |      1358 |      1358 |      1358 |      1358 |      1358 |      1358 |       119 |
|              Improvement %               |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       119 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                foundation                |        44 |        44 |        44 |        44 |        44 |        44 |        45 |       469 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        34 |        35 |       588 |
|                    Δ                     |       -11 |       -11 |       -11 |       -11 |       -11 |       -10 |       -10 |       119 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        23 |        22 |       119 |

<p>
</details>

