
# JBird vs. Freddy

```
Host 'Varuns-MacBook-Pro.local' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 25.0.0: Mon Aug 25 21:17:54 PDT 2025; root:xnu-12377.1.9~3/RELEASE_ARM64_T6041
```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2883 |      3058 |      3084 |      3103 |      3170 |      4563 |     20896 |       306 |
|                  jbird                   |      1817 |      1920 |      1933 |      1947 |      1974 |      2114 |     20013 |       498 |
|                    Δ                     |     -1066 |     -1138 |     -1151 |     -1156 |     -1196 |     -2449 |      -883 |       192 |
|              Improvement %               |        37 |        37 |        37 |        37 |        38 |        54 |         4 |       192 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2885 |      3062 |      3088 |      3105 |      3172 |      4127 |      4902 |       306 |
|                  jbird                   |      1818 |      1922 |      1934 |      1949 |      1974 |      2116 |      2220 |       498 |
|                    Δ                     |     -1067 |     -1140 |     -1154 |     -1156 |     -1198 |     -2011 |     -2682 |       192 |
|              Improvement %               |        37 |        37 |        37 |        37 |        38 |        49 |        55 |       192 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       347 |       327 |       324 |       322 |       316 |       219 |        48 |       306 |
|                  jbird                   |       550 |       521 |       518 |       514 |       507 |       473 |        50 |       498 |
|                    Δ                     |       203 |       194 |       194 |       192 |       191 |       254 |         2 |       192 |
|              Improvement %               |        59 |        59 |        60 |        60 |        60 |       116 |         4 |       192 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       306 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       498 |
|                    Δ                     |         2 |         3 |         3 |         3 |         3 |         3 |         3 |       192 |
|              Improvement %               |        -7 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       192 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       306 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       498 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       192 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       192 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        63 |        64 |        64 |        64 |        64 |        64 |       306 |
|                  jbird                   |        46 |        46 |        46 |        46 |        46 |        46 |        47 |       498 |
|                    Δ                     |       -17 |       -17 |       -18 |       -18 |       -18 |       -18 |       -17 |       192 |
|              Improvement %               |        27 |        27 |        28 |        28 |        28 |        28 |        27 |       192 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2923 |      3103 |      3127 |      3150 |      3168 |      3418 |     21416 |       311 |
|                  jbird                   |      1834 |      1947 |      1961 |      1977 |      1999 |      2132 |     19549 |       492 |
|                    Δ                     |     -1089 |     -1156 |     -1166 |     -1173 |     -1169 |     -1286 |     -1867 |       181 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        38 |         9 |       181 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2925 |      3107 |      3129 |      3154 |      3172 |      3424 |      3559 |       311 |
|                  jbird                   |      1835 |      1948 |      1963 |      1979 |      2001 |      2134 |      2212 |       492 |
|                    Δ                     |     -1090 |     -1159 |     -1166 |     -1175 |     -1171 |     -1290 |     -1347 |       181 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        38 |        38 |       181 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       342 |       322 |       320 |       318 |       316 |       293 |        47 |       311 |
|                  jbird                   |       545 |       514 |       510 |       506 |       500 |       469 |        51 |       492 |
|                    Δ                     |       203 |       192 |       190 |       188 |       184 |       176 |         4 |       181 |
|              Improvement %               |        59 |        60 |        59 |        59 |        58 |        60 |         9 |       181 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       311 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       492 |
|                    Δ                     |         2 |         3 |         3 |         3 |         3 |         3 |         3 |       181 |
|              Improvement %               |        -7 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       181 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       311 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       492 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       181 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       181 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        65 |        65 |       311 |
|                  jbird                   |        47 |        47 |        47 |        47 |        47 |        47 |        48 |       492 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       -17 |       181 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        26 |       181 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       711 |       760 |       769 |       777 |       788 |       855 |     19694 |      1212 |
|                  jbird                   |       445 |       478 |       484 |       489 |       496 |       525 |     16396 |      1887 |
|                    Δ                     |      -266 |      -282 |      -285 |      -288 |      -292 |      -330 |     -3298 |       675 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        39 |        17 |       675 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       713 |       761 |       771 |       779 |       790 |       857 |       957 |      1212 |
|                  jbird                   |       446 |       480 |       486 |       491 |       497 |       526 |       679 |      1887 |
|                    Δ                     |      -267 |      -281 |      -285 |      -288 |      -293 |      -331 |      -278 |       675 |
|              Improvement %               |        37 |        37 |        37 |        37 |        37 |        39 |        29 |       675 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1406 |      1317 |      1301 |      1287 |      1269 |      1171 |        51 |      1212 |
|                  jbird                   |      2249 |      2091 |      2067 |      2043 |      2019 |      1907 |        61 |      1887 |
|                    Δ                     |       843 |       774 |       766 |       756 |       750 |       736 |        10 |       675 |
|              Improvement %               |        60 |        59 |        59 |        59 |        59 |        63 |        20 |       675 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1212 |
|                  jbird                   |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1887 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1212 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1887 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       675 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       675 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1212 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1887 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       675 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       675 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       704 |       759 |       769 |       776 |       785 |       802 |       840 |      1240 |
|                  jbird                   |       447 |       484 |       490 |       498 |       505 |       520 |       557 |      1895 |
|                    Δ                     |      -257 |      -275 |      -279 |      -278 |      -280 |      -282 |      -283 |       655 |
|              Improvement %               |        37 |        36 |        36 |        36 |        36 |        35 |        34 |       655 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       705 |       760 |       770 |       778 |       787 |       804 |       842 |      1240 |
|                  jbird                   |       448 |       485 |       492 |       500 |       507 |       523 |       559 |      1895 |
|                    Δ                     |      -257 |      -275 |      -278 |      -278 |      -280 |      -281 |      -283 |       655 |
|              Improvement %               |        36 |        36 |        36 |        36 |        36 |        35 |        34 |       655 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1421 |      1318 |      1302 |      1289 |      1274 |      1247 |      1191 |      1240 |
|                  jbird                   |      2238 |      2069 |      2041 |      2008 |      1979 |      1922 |      1796 |      1895 |
|                    Δ                     |       817 |       751 |       739 |       719 |       705 |       675 |       605 |       655 |
|              Improvement %               |        57 |        57 |        57 |        56 |        55 |        54 |        51 |       655 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1240 |
|                  jbird                   |        29 |        30 |        30 |        30 |        30 |        30 |        30 |      1895 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       655 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       655 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1240 |
|                  jbird                   |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      2636 |      1895 |
|                    Δ                     |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       -14 |       655 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |       655 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1240 |
|                  jbird                   |        12 |        12 |        12 |        12 |        12 |        12 |        12 |      1895 |
|                    Δ                     |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |        -4 |       655 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       655 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1417 |      1523 |      1531 |      1537 |      1547 |      1586 |      1618 |       638 |
|                  jbird                   |       893 |       962 |       969 |       978 |       987 |      1016 |      1043 |       993 |
|                    Δ                     |      -524 |      -561 |      -562 |      -559 |      -560 |      -570 |      -575 |       355 |
|              Improvement %               |        37 |        37 |        37 |        36 |        36 |        36 |        36 |       355 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1419 |      1525 |      1532 |      1539 |      1550 |      1588 |      1620 |       638 |
|                  jbird                   |       894 |       963 |       971 |       979 |       989 |      1018 |      1046 |       993 |
|                    Δ                     |      -525 |      -562 |      -561 |      -560 |      -561 |      -570 |      -574 |       355 |
|              Improvement %               |        37 |        37 |        37 |        36 |        36 |        36 |        35 |       355 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       706 |       657 |       654 |       651 |       646 |       631 |       618 |       638 |
|                  jbird                   |      1120 |      1040 |      1032 |      1023 |      1014 |       984 |       959 |       993 |
|                    Δ                     |       414 |       383 |       378 |       372 |       368 |       353 |       341 |       355 |
|              Improvement %               |        59 |        58 |        58 |        57 |        57 |        56 |        55 |       355 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        29 |        30 |        30 |        31 |        31 |        31 |        31 |       638 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       993 |
|                    Δ                     |         1 |         2 |         2 |         1 |         1 |         1 |         1 |       355 |
|              Improvement %               |        -3 |        -7 |        -7 |        -3 |        -3 |        -3 |        -3 |       355 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       638 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       993 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       355 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       355 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       638 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       993 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |       355 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        28 |        25 |       355 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1414 |      1530 |      1550 |      1564 |      1576 |      1613 |      1638 |       631 |
|                  jbird                   |       901 |       971 |       980 |       988 |       997 |      1021 |      1054 |       984 |
|                    Δ                     |      -513 |      -559 |      -570 |      -576 |      -579 |      -592 |      -584 |       353 |
|              Improvement %               |        36 |        37 |        37 |        37 |        37 |        37 |        36 |       353 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1416 |      1531 |      1552 |      1565 |      1577 |      1614 |      1644 |       631 |
|                  jbird                   |       902 |       972 |       982 |       990 |       998 |      1024 |      1057 |       984 |
|                    Δ                     |      -514 |      -559 |      -570 |      -575 |      -579 |      -590 |      -587 |       353 |
|              Improvement %               |        36 |        37 |        37 |        37 |        37 |        37 |        36 |       353 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       707 |       654 |       645 |       640 |       635 |       620 |       610 |       631 |
|                  jbird                   |      1110 |      1030 |      1020 |      1012 |      1003 |       979 |       949 |       984 |
|                    Δ                     |       403 |       376 |       375 |       372 |       368 |       359 |       339 |       353 |
|              Improvement %               |        57 |        57 |        58 |        58 |        58 |        58 |        56 |       353 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        29 |        30 |        31 |        31 |        31 |        31 |        31 |       631 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |       984 |
|                    Δ                     |         1 |         2 |         1 |         1 |         1 |         1 |         1 |       353 |
|              Improvement %               |        -3 |        -7 |        -3 |        -3 |        -3 |        -3 |        -3 |       353 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       631 |
|                  jbird                   |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |      5270 |       984 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       353 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       353 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       631 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        24 |        24 |       984 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        -9 |       353 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        25 |        27 |       353 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        16 |        16 |        16 |        16 |        65 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -6 |        -5 |        -5 |        32 |
|              Improvement %               |        33 |        33 |        33 |        38 |        38 |        31 |        31 |        32 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        15 |        16 |        16 |        16 |        16 |        65 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        11 |        11 |        97 |
|                    Δ                     |        -5 |        -5 |        -5 |        -6 |        -6 |        -5 |        -5 |        32 |
|              Improvement %               |        33 |        33 |        33 |        38 |        38 |        31 |        31 |        32 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        65 |        65 |        64 |        64 |        64 |        64 |        65 |
|                  jbird                   |       102 |        98 |        98 |        97 |        97 |        92 |        92 |        97 |
|                    Δ                     |        35 |        33 |        33 |        33 |        33 |        28 |        28 |        32 |
|              Improvement %               |        52 |        51 |        51 |        52 |        52 |        44 |        44 |        32 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        39 |        42 |        42 |        42 |        42 |        42 |        42 |        65 |
|                  jbird                   |        31 |        55 |        55 |        55 |        55 |        55 |        55 |        97 |
|                    Δ                     |        -8 |        13 |        13 |        13 |        13 |        13 |        13 |        32 |
|              Improvement %               |        21 |       -31 |       -31 |       -31 |       -31 |       -31 |       -31 |        32 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        65 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        97 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        32 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        32 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       318 |       319 |       319 |       319 |       319 |       324 |       324 |        65 |
|                  jbird                   |       236 |       236 |       236 |       237 |       237 |       245 |       245 |        97 |
|                    Δ                     |       -82 |       -83 |       -83 |       -82 |       -82 |       -79 |       -79 |        32 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        24 |        24 |        32 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ms) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        30 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        31 |        31 |        30 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (ms) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        11 |        11 |        94 |
|                    Δ                     |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        -5 |        30 |
|              Improvement %               |        33 |        31 |        31 |        31 |        31 |        31 |        31 |        30 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        64 |        64 |        63 |        63 |        62 |        62 |        64 |
|                  jbird                   |        98 |        95 |        94 |        94 |        93 |        92 |        92 |        94 |
|                    Δ                     |        31 |        31 |        30 |        31 |        30 |        30 |        30 |        30 |
|              Improvement %               |        46 |        48 |        47 |        49 |        48 |        48 |        48 |        30 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        40 |        42 |        42 |        42 |        42 |        42 |        42 |        64 |
|                  jbird                   |        31 |        55 |        55 |        55 |        55 |        55 |        55 |        94 |
|                    Δ                     |        -9 |        13 |        13 |        13 |        13 |        13 |        13 |        30 |
|              Improvement %               |        22 |       -31 |       -31 |       -31 |       -31 |       -31 |       -31 |        30 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        94 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        30 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       323 |       324 |       324 |       324 |       324 |       328 |       328 |        64 |
|                  jbird                   |       240 |       244 |       244 |       244 |       244 |       249 |       249 |        94 |
|                    Δ                     |       -83 |       -80 |       -80 |       -80 |       -80 |       -79 |       -79 |        30 |
|              Improvement %               |        26 |        25 |        25 |        25 |        25 |        24 |        24 |        30 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       187 |       194 |       200 |       202 |       211 |       237 |      4339 |
|                  jbird                   |       112 |       114 |       121 |       126 |       127 |       135 |       186 |      6404 |
|                    Δ                     |       -66 |       -73 |       -73 |       -74 |       -75 |       -76 |       -51 |      2065 |
|              Improvement %               |        37 |        39 |        38 |        37 |        37 |        36 |        22 |      2065 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       188 |       195 |       202 |       204 |       213 |       239 |      4339 |
|                  jbird                   |       113 |       116 |       123 |       127 |       128 |       137 |       178 |      6404 |
|                    Δ                     |       -67 |       -72 |       -72 |       -75 |       -76 |       -76 |       -61 |      2065 |
|              Improvement %               |        37 |        38 |        37 |        37 |        37 |        36 |        26 |      2065 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5610 |      5359 |      5159 |      4995 |      4943 |      4743 |      4214 |      4339 |
|                  jbird                   |      8959 |      8743 |      8255 |      7955 |      7879 |      7419 |      5386 |      6404 |
|                    Δ                     |      3349 |      3384 |      3096 |      2960 |      2936 |      2676 |      1172 |      2065 |
|              Improvement %               |        60 |        63 |        60 |        59 |        59 |        56 |        28 |      2065 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      4339 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      6404 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2065 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2065 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4339 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6404 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      2065 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      2065 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3973 |      3975 |      3975 |      3975 |      3975 |      3992 |      4006 |      4339 |
|                  jbird                   |      2884 |      2886 |      2886 |      2886 |      2886 |      2908 |      2991 |      6404 |
|                    Δ                     |     -1089 |     -1089 |     -1089 |     -1089 |     -1089 |     -1084 |     -1015 |      2065 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        25 |      2065 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       189 |       196 |       203 |       205 |       215 |       231 |      4299 |
|                  jbird                   |       112 |       116 |       123 |       127 |       129 |       137 |       158 |      6347 |
|                    Δ                     |       -68 |       -73 |       -73 |       -76 |       -76 |       -78 |       -73 |      2048 |
|              Improvement %               |        38 |        39 |        37 |        37 |        37 |        36 |        32 |      2048 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       181 |       190 |       197 |       204 |       206 |       218 |       232 |      4299 |
|                  jbird                   |       113 |       118 |       124 |       128 |       130 |       140 |       160 |      6347 |
|                    Δ                     |       -68 |       -72 |       -73 |       -76 |       -76 |       -78 |       -72 |      2048 |
|              Improvement %               |        38 |        38 |        37 |        37 |        37 |        36 |        31 |      2048 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5554 |      5303 |      5107 |      4939 |      4883 |      4643 |      4338 |      4299 |
|                  jbird                   |      8929 |      8615 |      8131 |      7895 |      7783 |      7275 |      6329 |      6347 |
|                    Δ                     |      3375 |      3312 |      3024 |      2956 |      2900 |      2632 |      1991 |      2048 |
|              Improvement %               |        61 |        62 |        59 |        60 |        59 |        57 |        46 |      2048 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      4299 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      6347 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2048 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2048 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4299 |
|                  jbird                   |       662 |       662 |       662 |       662 |       662 |       662 |       662 |      6347 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      2048 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |         2 |      2048 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4042 |      4043 |      4045 |      4045 |      4045 |      4059 |      4078 |      4299 |
|                  jbird                   |      2929 |      2931 |      2931 |      2931 |      2931 |      2953 |      3037 |      6347 |
|                    Δ                     |     -1113 |     -1112 |     -1114 |     -1114 |     -1114 |     -1106 |     -1041 |      2048 |
|              Improvement %               |        28 |        28 |        28 |        28 |        28 |        27 |        26 |      2048 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        51 |        54 |        58 |        60 |        60 |        67 |        80 |     11047 |
|                  jbird                   |        47 |        48 |        48 |        53 |        53 |        60 |        74 |     12402 |
|                    Δ                     |        -4 |        -6 |       -10 |        -7 |        -7 |        -7 |        -6 |      1355 |
|              Improvement %               |         8 |        11 |        17 |        12 |        12 |        10 |         8 |      1355 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        52 |        55 |        59 |        61 |        62 |        69 |        80 |     11047 |
|                  jbird                   |        48 |        49 |        50 |        54 |        55 |        61 |        78 |     12402 |
|                    Δ                     |        -4 |        -6 |        -9 |        -7 |        -7 |        -8 |        -2 |      1355 |
|              Improvement %               |         8 |        11 |        15 |        11 |        11 |        12 |         2 |      1355 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        20 |        19 |        17 |        17 |        17 |        15 |        12 |     11047 |
|                  jbird                   |        21 |        21 |        21 |        19 |        19 |        17 |        13 |     12402 |
|                    Δ                     |         1 |         2 |         4 |         2 |         2 |         2 |         1 |      1355 |
|              Improvement %               |         5 |        11 |        24 |        12 |        12 |        13 |         8 |      1355 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        28 |        28 |        29 |        29 |        29 |        29 |        29 |     11047 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     12402 |
|                    Δ                     |         0 |         1 |         0 |         0 |         0 |         0 |         0 |      1355 |
|              Improvement %               |         0 |        -4 |         0 |         0 |         0 |         0 |         0 |      1355 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     11047 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       153 |       153 |     12402 |
|                    Δ                     |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      -155 |      1355 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      1355 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1531 |      1532 |      1532 |      1533 |      1533 |      1542 |      1567 |     11047 |
|                  jbird                   |      1307 |      1308 |      1308 |      1308 |      1308 |      1325 |      1351 |     12402 |
|                    Δ                     |      -224 |      -224 |      -224 |      -225 |      -225 |      -217 |      -216 |      1355 |
|              Improvement %               |        15 |        15 |        15 |        15 |        15 |        14 |        14 |      1355 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        88 |        93 |        99 |       100 |       101 |       109 |       156 |      7600 |
|                  jbird                   |        86 |        90 |        96 |        98 |        99 |       107 |       155 |      7964 |
|                    Δ                     |        -2 |        -3 |        -3 |        -2 |        -2 |        -2 |        -1 |       364 |
|              Improvement %               |         2 |         3 |         3 |         2 |         2 |         2 |         1 |       364 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        94 |       100 |       101 |       102 |       111 |       149 |      7600 |
|                  jbird                   |        87 |        91 |        98 |       100 |       100 |       109 |       159 |      7964 |
|                    Δ                     |        -2 |        -3 |        -2 |        -1 |        -2 |        -2 |        10 |       364 |
|              Improvement %               |         2 |         3 |         2 |         1 |         2 |         2 |        -7 |       364 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        10 |        10 |        10 |         9 |         6 |      7600 |
|                  jbird                   |        12 |        11 |        10 |        10 |        10 |         9 |         6 |      7964 |
|                    Δ                     |         1 |         0 |         0 |         0 |         0 |         0 |         0 |       364 |
|              Improvement %               |         9 |         0 |         0 |         0 |         0 |         0 |         0 |       364 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        28 |        29 |        30 |        30 |        30 |        30 |        30 |      7600 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      7964 |
|                    Δ                     |         0 |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |       364 |
|              Improvement %               |         0 |         0 |         3 |         3 |         3 |         3 |         3 |       364 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      7600 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      7964 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       364 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       364 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2681 |      2683 |      2683 |      2683 |      2683 |      2695 |      2866 |      7600 |
|                  jbird                   |      2683 |      2683 |      2683 |      2683 |      2683 |      2691 |      2915 |      7964 |
|                    Δ                     |         2 |         0 |         0 |         0 |         0 |        -4 |        49 |       364 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -2 |       364 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        70 |        75 |        77 |        78 |        85 |       123 |      9313 |
|                  jbird                   |        51 |        54 |        58 |        59 |        59 |        66 |       134 |     11397 |
|                    Δ                     |       -16 |       -16 |       -17 |       -18 |       -19 |       -19 |        11 |      2084 |
|              Improvement %               |        24 |        23 |        23 |        23 |        24 |        22 |        -9 |      2084 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        69 |        71 |        77 |        78 |        80 |        87 |       127 |      9313 |
|                  jbird                   |        52 |        55 |        60 |        60 |        61 |        69 |       137 |     11397 |
|                    Δ                     |       -17 |       -16 |       -17 |       -18 |       -19 |       -18 |        10 |      2084 |
|              Improvement %               |        25 |        23 |        22 |        23 |        24 |        21 |        -8 |      2084 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        14 |        13 |        13 |        13 |        12 |         8 |      9313 |
|                  jbird                   |        20 |        19 |        17 |        17 |        17 |        15 |         7 |     11397 |
|                    Δ                     |         5 |         5 |         4 |         4 |         4 |         3 |        -1 |      2084 |
|              Improvement %               |        33 |        36 |        31 |        31 |        31 |        25 |       -12 |      2084 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      9313 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     11397 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2084 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2084 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9313 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11397 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      2084 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      2084 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1657 |      1658 |      1658 |      1658 |      1658 |      1665 |      1742 |      9313 |
|                  jbird                   |      1631 |      1631 |      1631 |      1631 |      1631 |      1637 |      1767 |     11397 |
|                    Δ                     |       -26 |       -27 |       -27 |       -27 |       -27 |       -28 |        25 |      2084 |
|              Improvement %               |         2 |         2 |         2 |         2 |         2 |         2 |        -1 |      2084 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       101 |       109 |       116 |       120 |       122 |       130 |       147 |      6612 |
|                  jbird                   |        27 |        27 |        30 |        30 |        33 |        36 |        59 |     15886 |
|                    Δ                     |       -74 |       -82 |       -86 |       -90 |       -89 |       -94 |       -88 |      9274 |
|              Improvement %               |        73 |        75 |        74 |        75 |        73 |        72 |        60 |      9274 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       103 |       111 |       118 |       121 |       124 |       131 |       150 |      6612 |
|                  jbird                   |        28 |        29 |        31 |        32 |        34 |        37 |        59 |     15886 |
|                    Δ                     |       -75 |       -82 |       -87 |       -89 |       -90 |       -94 |       -91 |      9274 |
|              Improvement %               |        73 |        74 |        74 |        74 |        73 |        72 |        61 |      9274 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      9877 |      9143 |      8615 |      8343 |      8191 |      7723 |      6785 |      6612 |
|                  jbird                   |     37500 |     36767 |     33343 |     33119 |     30543 |     28143 |     16985 |     15886 |
|                    Δ                     |     27623 |     27624 |     24728 |     24776 |     22352 |     20420 |     10200 |      9274 |
|              Improvement %               |       280 |       302 |       287 |       297 |       273 |       264 |       150 |      9274 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        28 |        29 |        29 |        29 |        29 |        29 |        29 |      6612 |
|                  jbird                   |        28 |        29 |        29 |        29 |        29 |        29 |        29 |     15886 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9274 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9274 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      6612 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     15886 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |      9274 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |      9274 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2078 |      2079 |      2079 |      2080 |      2080 |      2093 |      2116 |      6612 |
|                  jbird                   |       859 |       859 |       859 |       859 |       859 |       860 |       914 |     15886 |
|                    Δ                     |     -1219 |     -1220 |     -1220 |     -1221 |     -1221 |     -1233 |     -1202 |      9274 |
|              Improvement %               |        59 |        59 |        59 |        59 |        59 |        59 |        57 |      9274 |

<p>
</details>

