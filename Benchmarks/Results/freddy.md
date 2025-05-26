# JBird vs. Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2990 |      3193 |      3232 |      3287 |      3410 |      4168 |      4800 |       302 |
|                  jbird                   |      1941 |      2111 |      2130 |      2148 |      2222 |      2785 |      3051 |       455 |
|                    Δ                     |     -1049 |     -1082 |     -1102 |     -1139 |     -1188 |     -1383 |     -1749 |       153 |
|              Improvement %               |        35 |        34 |        34 |        35 |        35 |        33 |        36 |       153 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2983 |      3189 |      3234 |      3291 |      3410 |      4170 |      4807 |       302 |
|                  jbird                   |      1935 |      2114 |      2132 |      2150 |      2230 |      2787 |      3055 |       455 |
|                    Δ                     |     -1048 |     -1075 |     -1102 |     -1141 |     -1180 |     -1383 |     -1752 |       153 |
|              Improvement %               |        35 |        34 |        34 |        35 |        35 |        33 |        36 |       153 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       334 |       313 |       309 |       304 |       293 |       240 |       208 |       302 |
|                  jbird                   |       515 |       474 |       470 |       466 |       450 |       359 |       328 |       455 |
|                    Δ                     |       181 |       161 |       161 |       162 |       157 |       119 |       120 |       153 |
|              Improvement %               |        54 |        51 |        52 |        53 |        54 |        50 |        58 |       153 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       302 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       455 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       153 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       153 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       302 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       455 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       153 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       153 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        66 |        68 |       302 |
|                  jbird                   |        48 |        48 |        48 |        48 |        48 |        49 |        50 |       455 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -17 |       -18 |       153 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        26 |       153 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2990 |      3185 |      3230 |      3258 |      3281 |      3332 |      3552 |       307 |
|                  jbird                   |      1946 |      2101 |      2118 |      2134 |      2165 |      2220 |      2277 |       464 |
|                    Δ                     |     -1044 |     -1084 |     -1112 |     -1124 |     -1116 |     -1112 |     -1275 |       157 |
|              Improvement %               |        35 |        34 |        34 |        34 |        34 |        33 |        36 |       157 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2991 |      3187 |      3232 |      3258 |      3285 |      3332 |      3542 |       307 |
|                  jbird                   |      1943 |      2103 |      2118 |      2134 |      2169 |      2220 |      2269 |       464 |
|                    Δ                     |     -1048 |     -1084 |     -1114 |     -1124 |     -1116 |     -1112 |     -1273 |       157 |
|              Improvement %               |        35 |        34 |        34 |        34 |        34 |        33 |        36 |       157 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       334 |       314 |       310 |       307 |       305 |       300 |       282 |       307 |
|                  jbird                   |       514 |       476 |       472 |       469 |       462 |       451 |       439 |       464 |
|                    Δ                     |       180 |       162 |       162 |       162 |       157 |       151 |       157 |       157 |
|              Improvement %               |        54 |        52 |        52 |        53 |        51 |        50 |        56 |       157 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        27 |        29 |        29 |        29 |        29 |        29 |        29 |       307 |
|                  jbird                   |        29 |        31 |        31 |        31 |        31 |        31 |        31 |       464 |
|                    Δ                     |         2 |         2 |         2 |         2 |         2 |         2 |         2 |       157 |
|              Improvement %               |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |        -7 |       157 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       307 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       464 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       157 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       157 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        67 |        67 |        68 |        68 |        68 |        69 |       307 |
|                  jbird                   |        49 |        49 |        49 |        49 |        49 |        50 |        51 |       464 |
|                    Δ                     |       -18 |       -18 |       -18 |       -19 |       -19 |       -18 |       -18 |       157 |
|              Improvement %               |        27 |        27 |        27 |        28 |        28 |        26 |        26 |       157 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       719 |       784 |       795 |       806 |       830 |       861 |       913 |      1197 |
|                  jbird                   |       463 |       512 |       520 |       533 |       557 |       579 |       613 |      1778 |
|                    Δ                     |      -256 |      -272 |      -275 |      -273 |      -273 |      -282 |      -300 |       581 |
|              Improvement %               |        36 |        35 |        35 |        34 |        33 |        33 |        33 |       581 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       721 |       785 |       796 |       808 |       833 |       863 |       914 |      1197 |
|                  jbird                   |       464 |       514 |       522 |       535 |       558 |       582 |       614 |      1778 |
|                    Δ                     |      -257 |      -271 |      -274 |      -273 |      -275 |      -281 |      -300 |       581 |
|              Improvement %               |        36 |        35 |        34 |        34 |        33 |        33 |        33 |       581 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1390 |      1276 |      1259 |      1241 |      1204 |      1162 |      1095 |      1197 |
|                  jbird                   |      2160 |      1953 |      1922 |      1877 |      1798 |      1729 |      1632 |      1778 |
|                    Δ                     |       770 |       677 |       663 |       636 |       594 |       567 |       537 |       581 |
|              Improvement %               |        55 |        53 |        53 |        51 |        49 |        49 |        49 |       581 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1197 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1778 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       581 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       581 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1197 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1778 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       581 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       581 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1197 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1778 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       581 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       581 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       736 |       794 |       809 |       821 |       846 |       877 |       925 |      1179 |
|                  jbird                   |       470 |       518 |       526 |       536 |       545 |       568 |       658 |      1772 |
|                    Δ                     |      -266 |      -276 |      -283 |      -285 |      -301 |      -309 |      -267 |       593 |
|              Improvement %               |        36 |        35 |        35 |        35 |        36 |        35 |        29 |       593 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       737 |       795 |       810 |       822 |       847 |       879 |       926 |      1179 |
|                  jbird                   |       472 |       519 |       527 |       537 |       547 |       569 |       660 |      1772 |
|                    Δ                     |      -265 |      -276 |      -283 |      -285 |      -300 |      -310 |      -266 |       593 |
|              Improvement %               |        36 |        35 |        35 |        35 |        35 |        35 |        29 |       593 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1359 |      1260 |      1237 |      1219 |      1182 |      1140 |      1081 |      1179 |
|                  jbird                   |      2126 |      1931 |      1903 |      1868 |      1834 |      1761 |      1519 |      1772 |
|                    Δ                     |       767 |       671 |       666 |       649 |       652 |       621 |       438 |       593 |
|              Improvement %               |        56 |        53 |        54 |        53 |        55 |        54 |        41 |       593 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      1179 |
|                  jbird                   |        26 |        27 |        27 |        27 |        27 |        27 |        27 |      1772 |
|                    Δ                     |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       593 |
|              Improvement %               |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       593 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1179 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1772 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       593 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       593 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1179 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        13 |      1772 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -4 |       593 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        29 |        24 |       593 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1490 |      1588 |      1609 |      1629 |      1677 |      1731 |      1756 |       606 |
|                  jbird                   |       948 |      1040 |      1052 |      1076 |      1094 |      1127 |      1271 |       913 |
|                    Δ                     |      -542 |      -548 |      -557 |      -553 |      -583 |      -604 |      -485 |       307 |
|              Improvement %               |        36 |        35 |        35 |        34 |        35 |        35 |        28 |       307 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1489 |      1588 |      1610 |      1631 |      1678 |      1732 |      1757 |       606 |
|                  jbird                   |       950 |      1042 |      1053 |      1076 |      1096 |      1133 |      1275 |       913 |
|                    Δ                     |      -539 |      -546 |      -557 |      -555 |      -582 |      -599 |      -482 |       307 |
|              Improvement %               |        36 |        34 |        35 |        34 |        35 |        35 |        27 |       307 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       671 |       630 |       622 |       614 |       596 |       578 |       570 |       606 |
|                  jbird                   |      1055 |       961 |       952 |       930 |       915 |       887 |       787 |       913 |
|                    Δ                     |       384 |       331 |       330 |       316 |       319 |       309 |       217 |       307 |
|              Improvement %               |        57 |        53 |        53 |        51 |        54 |        53 |        38 |       307 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       606 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       913 |
|                    Δ                     |         0 |         1 |         2 |         1 |         1 |         1 |         1 |       307 |
|              Improvement %               |         0 |        -4 |        -7 |        -4 |        -4 |        -4 |        -4 |       307 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       606 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       913 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       307 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       307 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       606 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       913 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       307 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        26 |        26 |       307 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1498 |      1610 |      1633 |      1656 |      1699 |      1741 |      1788 |       597 |
|                  jbird                   |       949 |      1038 |      1048 |      1064 |      1091 |      1146 |      1172 |       916 |
|                    Δ                     |      -549 |      -572 |      -585 |      -592 |      -608 |      -595 |      -616 |       319 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        34 |        34 |       319 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1500 |      1610 |      1635 |      1658 |      1700 |      1743 |      1789 |       597 |
|                  jbird                   |       951 |      1040 |      1050 |      1065 |      1091 |      1148 |      1175 |       916 |
|                    Δ                     |      -549 |      -570 |      -585 |      -593 |      -609 |      -595 |      -614 |       319 |
|              Improvement %               |        37 |        35 |        36 |        36 |        36 |        34 |        34 |       319 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       667 |       621 |       612 |       604 |       589 |       575 |       559 |       597 |
|                  jbird                   |      1054 |       963 |       954 |       940 |       918 |       873 |       853 |       916 |
|                    Δ                     |       387 |       342 |       342 |       336 |       329 |       298 |       294 |       319 |
|              Improvement %               |        58 |        55 |        56 |        56 |        56 |        52 |        53 |       319 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        26 |        27 |        27 |        28 |        28 |        28 |        28 |       597 |
|                  jbird                   |        26 |        28 |        29 |        29 |        29 |        29 |        29 |       916 |
|                    Δ                     |         0 |         1 |         2 |         1 |         1 |         1 |         1 |       319 |
|              Improvement %               |         0 |        -4 |        -7 |        -4 |        -4 |        -4 |        -4 |       319 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       597 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       916 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       319 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        34 |        34 |        34 |        34 |        34 |        34 |       597 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        26 |       916 |
|                    Δ                     |       -10 |       -10 |       -10 |       -10 |       -10 |        -9 |        -8 |       319 |
|              Improvement %               |        29 |        29 |        29 |        29 |        29 |        26 |        24 |       319 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        17 |        18 |        18 |        62 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -4 |        -5 |        -5 |        -4 |        -5 |        -6 |        -6 |        25 |
|              Improvement %               |        27 |        31 |        31 |        25 |        29 |        33 |        33 |        25 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        17 |        18 |        18 |        62 |
|                  jbird                   |        11 |        11 |        11 |        12 |        12 |        12 |        12 |        87 |
|                    Δ                     |        -4 |        -5 |        -5 |        -4 |        -5 |        -6 |        -6 |        25 |
|              Improvement %               |        27 |        31 |        31 |        25 |        29 |        33 |        33 |        25 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        63 |        62 |        61 |        59 |        56 |        56 |        62 |
|                  jbird                   |        91 |        88 |        88 |        87 |        86 |        82 |        82 |        87 |
|                    Δ                     |        26 |        25 |        26 |        26 |        27 |        26 |        26 |        25 |
|              Improvement %               |        40 |        40 |        42 |        43 |        46 |        46 |        46 |        25 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        35 |        43 |        43 |        43 |        43 |        43 |        43 |        62 |
|                  jbird                   |        43 |        51 |        51 |        52 |        52 |        52 |        52 |        87 |
|                    Δ                     |         8 |         8 |         8 |         9 |         9 |         9 |         9 |        25 |
|              Improvement %               |       -23 |       -19 |       -19 |       -21 |       -21 |       -21 |       -21 |        25 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        62 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        87 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        25 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        25 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       333 |       333 |       333 |       333 |       338 |       338 |        62 |
|                  jbird                   |       250 |       250 |       250 |       250 |       251 |       255 |       255 |        87 |
|                    Δ                     |       -82 |       -83 |       -83 |       -83 |       -82 |       -83 |       -83 |        25 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |        25 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        -5 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        29 |        29 |        29 |        28 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        17 |        17 |        17 |        61 |
|                  jbird                   |        11 |        11 |        11 |        11 |        12 |        12 |        12 |        89 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -5 |        -5 |        -5 |        28 |
|              Improvement %               |        31 |        31 |        31 |        35 |        29 |        29 |        29 |        28 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        62 |        61 |        60 |        59 |        58 |        58 |        61 |
|                  jbird                   |        93 |        91 |        90 |        89 |        84 |        80 |        80 |        89 |
|                    Δ                     |        30 |        29 |        29 |        29 |        25 |        22 |        22 |        28 |
|              Improvement %               |        48 |        47 |        48 |        48 |        42 |        38 |        38 |        28 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        34 |        45 |        45 |        45 |        45 |        45 |        45 |        61 |
|                  jbird                   |        43 |        52 |        52 |        52 |        52 |        52 |        52 |        89 |
|                    Δ                     |         9 |         7 |         7 |         7 |         7 |         7 |         7 |        28 |
|              Improvement %               |       -26 |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |        28 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        61 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        89 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        28 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        28 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       338 |       338 |       338 |       338 |       339 |       343 |       343 |        61 |
|                  jbird                   |       250 |       250 |       250 |       251 |       251 |       258 |       258 |        89 |
|                    Δ                     |       -88 |       -88 |       -88 |       -87 |       -88 |       -85 |       -85 |        28 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        25 |        25 |        28 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       183 |       196 |       203 |       209 |       214 |       227 |       246 |      4168 |
|                  jbird                   |       116 |       128 |       131 |       133 |       136 |       151 |       175 |      5976 |
|                    Δ                     |       -67 |       -68 |       -72 |       -76 |       -78 |       -76 |       -71 |      1808 |
|              Improvement %               |        37 |        35 |        35 |        36 |        36 |        33 |        29 |      1808 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       197 |       204 |       210 |       216 |       228 |       250 |      4168 |
|                  jbird                   |       117 |       129 |       132 |       135 |       137 |       150 |       168 |      5976 |
|                    Δ                     |       -67 |       -68 |       -72 |       -75 |       -79 |       -78 |       -82 |      1808 |
|              Improvement %               |        36 |        35 |        35 |        36 |        37 |        34 |        33 |      1808 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5462 |      5111 |      4927 |      4787 |      4671 |      4399 |      4062 |      4168 |
|                  jbird                   |      8618 |      7835 |      7639 |      7507 |      7363 |      6607 |      5722 |      5976 |
|                    Δ                     |      3156 |      2724 |      2712 |      2720 |      2692 |      2208 |      1660 |      1808 |
|              Improvement %               |        58 |        53 |        55 |        57 |        58 |        50 |        41 |      1808 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4168 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      5976 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1808 |
|              Improvement %               |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |      1808 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4168 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5976 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1808 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1808 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4155 |      4157 |      4157 |      4157 |      4157 |      4223 |      4235 |      4168 |
|                  jbird                   |      3020 |      3021 |      3021 |      3023 |      3023 |      3095 |      3166 |      5976 |
|                    Δ                     |     -1135 |     -1136 |     -1136 |     -1134 |     -1134 |     -1128 |     -1069 |      1808 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        25 |      1808 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       185 |       197 |       205 |       211 |       215 |       228 |       255 |      4141 |
|                  jbird                   |       118 |       129 |       133 |       134 |       138 |       152 |       182 |      5914 |
|                    Δ                     |       -67 |       -68 |       -72 |       -77 |       -77 |       -76 |       -73 |      1773 |
|              Improvement %               |        36 |        35 |        35 |        36 |        36 |        33 |        29 |      1773 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       186 |       199 |       206 |       212 |       217 |       228 |       256 |      4141 |
|                  jbird                   |       120 |       131 |       135 |       136 |       139 |       151 |       179 |      5914 |
|                    Δ                     |       -66 |       -68 |       -71 |       -76 |       -78 |       -77 |       -77 |      1773 |
|              Improvement %               |        35 |        34 |        34 |        36 |        36 |        34 |        30 |      1773 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5401 |      5071 |      4887 |      4743 |      4651 |      4387 |      3921 |      4141 |
|                  jbird                   |      8451 |      7731 |      7519 |      7447 |      7275 |      6563 |      5498 |      5914 |
|                    Δ                     |      3050 |      2660 |      2632 |      2704 |      2624 |      2176 |      1577 |      1773 |
|              Improvement %               |        56 |        52 |        54 |        57 |        56 |        50 |        40 |      1773 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      4141 |
|                  jbird                   |        25 |        25 |        26 |        26 |        26 |        26 |        26 |      5914 |
|                    Δ                     |         0 |         0 |         1 |         1 |         1 |         1 |         1 |      1773 |
|              Improvement %               |         0 |         0 |        -4 |        -4 |        -4 |        -4 |        -4 |      1773 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4141 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      5914 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      1773 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      1773 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4231 |      4235 |      4235 |      4235 |      4235 |      4297 |      4311 |      4141 |
|                  jbird                   |      3058 |      3060 |      3060 |      3060 |      3062 |      3131 |      3210 |      5914 |
|                    Δ                     |     -1173 |     -1175 |     -1175 |     -1175 |     -1173 |     -1166 |     -1101 |      1773 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        26 |      1773 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        58 |        63 |        63 |        65 |        75 |       148 |     10519 |
|                  jbird                   |        48 |        49 |        54 |        54 |        55 |        65 |        87 |     11839 |
|                    Δ                     |        -6 |        -9 |        -9 |        -9 |       -10 |       -10 |       -61 |      1320 |
|              Improvement %               |        11 |        16 |        14 |        14 |        15 |        13 |        41 |      1320 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        59 |        64 |        65 |        66 |        76 |       150 |     10519 |
|                  jbird                   |        49 |        51 |        55 |        56 |        56 |        66 |        81 |     11839 |
|                    Δ                     |        -7 |        -8 |        -9 |        -9 |       -10 |       -10 |       -69 |      1320 |
|              Improvement %               |        12 |        14 |        14 |        14 |        15 |        13 |        46 |      1320 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        18 |        17 |        16 |        16 |        15 |        13 |         7 |     10519 |
|                  jbird                   |        21 |        20 |        19 |        18 |        18 |        15 |        11 |     11839 |
|                    Δ                     |         3 |         3 |         3 |         2 |         3 |         2 |         4 |      1320 |
|              Improvement %               |        17 |        18 |        19 |        12 |        20 |        15 |        57 |      1320 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     10519 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     11839 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1320 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1320 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     10519 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     11839 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1320 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1320 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1615 |      1616 |      1616 |      1616 |      1616 |      1649 |      1673 |     10519 |
|                  jbird                   |      1318 |      1319 |      1319 |      1319 |      1319 |      1348 |      1373 |     11839 |
|                    Δ                     |      -297 |      -297 |      -297 |      -297 |      -297 |      -301 |      -300 |      1320 |
|              Improvement %               |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      1320 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |        96 |       101 |       104 |       106 |       121 |       156 |      7383 |
|                  jbird                   |        87 |        97 |        99 |       100 |       103 |       116 |       159 |      7688 |
|                    Δ                     |        -3 |         1 |        -2 |        -4 |        -3 |        -5 |         3 |       305 |
|              Improvement %               |         3 |        -1 |         2 |         4 |         3 |         4 |        -2 |       305 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        92 |        97 |       103 |       105 |       108 |       121 |       160 |      7383 |
|                  jbird                   |        89 |        98 |       100 |       102 |       105 |       116 |       163 |      7688 |
|                    Δ                     |        -3 |         1 |        -3 |        -3 |        -3 |        -5 |         3 |       305 |
|              Improvement %               |         3 |        -1 |         3 |         3 |         3 |         4 |        -2 |       305 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11080 |     10431 |      9863 |      9639 |      9415 |      8279 |      6407 |      7383 |
|                  jbird                   |     11450 |     10367 |     10135 |      9999 |      9679 |      8631 |      6288 |      7688 |
|                    Δ                     |       370 |       -64 |       272 |       360 |       264 |       352 |      -119 |       305 |
|              Improvement %               |         3 |        -1 |         3 |         4 |         3 |         4 |        -2 |       305 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7383 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      7688 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       305 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       305 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7383 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7688 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       305 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       305 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2662 |      2662 |      2662 |      2662 |      2664 |      2685 |      2836 |      7383 |
|                  jbird                   |      2638 |      2638 |      2638 |      2640 |      2640 |      2654 |      2869 |      7688 |
|                    Δ                     |       -24 |       -24 |       -24 |       -22 |       -24 |       -31 |        33 |       305 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |        -1 |       305 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        86 |        92 |        95 |        98 |       110 |       143 |      8010 |
|                  jbird                   |        51 |        57 |        58 |        59 |        61 |        70 |       130 |     11185 |
|                    Δ                     |       -33 |       -29 |       -34 |       -36 |       -37 |       -40 |       -13 |      3175 |
|              Improvement %               |        39 |        34 |        37 |        38 |        38 |        36 |         9 |      3175 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        86 |        88 |        93 |        97 |        99 |       109 |       146 |      8010 |
|                  jbird                   |        52 |        59 |        59 |        60 |        62 |        72 |       133 |     11185 |
|                    Δ                     |       -34 |       -29 |       -34 |       -37 |       -37 |       -37 |       -13 |      3175 |
|              Improvement %               |        40 |        33 |        37 |        38 |        37 |        34 |         9 |      3175 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        11 |        10 |        10 |         9 |         7 |      8010 |
|                  jbird                   |        20 |        17 |        17 |        17 |        16 |        14 |         8 |     11185 |
|                    Δ                     |         8 |         5 |         6 |         7 |         6 |         5 |         1 |      3175 |
|              Improvement %               |        67 |        42 |        55 |        70 |        60 |        56 |        14 |      3175 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        26 |        26 |        26 |        26 |        26 |        26 |      8010 |
|                  jbird                   |        25 |        26 |        26 |        26 |        26 |        26 |        26 |     11185 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3175 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      3175 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8010 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11185 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      3175 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      3175 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1800 |      1801 |      1801 |      1801 |      1801 |      1816 |      1876 |      8010 |
|                  jbird                   |      1611 |      1612 |      1612 |      1612 |      1612 |      1620 |      1735 |     11185 |
|                    Δ                     |      -189 |      -189 |      -189 |      -189 |      -189 |      -196 |      -141 |      3175 |
|              Improvement %               |        10 |        10 |        10 |        10 |        10 |        11 |         8 |      3175 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       102 |       111 |       118 |       122 |       124 |       136 |       155 |      6539 |
|                  jbird                   |        28 |        30 |        31 |        31 |        32 |        39 |        67 |     15357 |
|                    Δ                     |       -74 |       -81 |       -87 |       -91 |       -92 |       -97 |       -88 |      8818 |
|              Improvement %               |        73 |        73 |        74 |        75 |        74 |        71 |        57 |      8818 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       103 |       112 |       119 |       123 |       126 |       138 |       153 |      6539 |
|                  jbird                   |        29 |        32 |        32 |        33 |        33 |        41 |        65 |     15357 |
|                    Δ                     |       -74 |       -80 |       -87 |       -90 |       -93 |       -97 |       -88 |      8818 |
|              Improvement %               |        72 |        71 |        73 |        73 |        74 |        70 |        58 |      8818 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9812 |      9023 |      8479 |      8231 |      8051 |      7339 |      6450 |      6539 |
|                  jbird                   |     36308 |     33151 |     32223 |     32015 |     31631 |     25487 |     14833 |     15357 |
|                    Δ                     |     26496 |     24128 |     23744 |     23784 |     23580 |     18148 |      8383 |      8818 |
|              Improvement %               |       270 |       267 |       280 |       289 |       293 |       247 |       130 |      8818 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        25 |        25 |        25 |        25 |        25 |        25 |        25 |      6539 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |     15357 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8818 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8818 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6539 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15357 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      8818 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      8818 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2104 |      2105 |      2105 |      2105 |      2105 |      2120 |      2149 |      6539 |
|                  jbird                   |       878 |       879 |       879 |       880 |       880 |       885 |       937 |     15357 |
|                    Δ                     |     -1226 |     -1226 |     -1226 |     -1225 |     -1225 |     -1235 |     -1212 |      8818 |
|              Improvement %               |        58 |        58 |        58 |        58 |        58 |        58 |        56 |      8818 |

<p>
</details>

