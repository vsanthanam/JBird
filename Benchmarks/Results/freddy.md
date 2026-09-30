## JBird vs Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2866 |      3117 |      3138 |      3166 |      3193 |      3342 |      3743 |       319 |
|                  jbird                   |      1270 |      1388 |      1405 |      1422 |      1442 |      1681 |      2112 |       708 |
|                    Δ                     |     -1596 |     -1729 |     -1733 |     -1744 |     -1751 |     -1661 |     -1631 |       389 |
|              Improvement %               |        56 |        55 |        55 |        55 |        55 |        50 |        44 |       389 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2869 |      3115 |      3140 |      3168 |      3195 |      3344 |      3747 |       319 |
|                  jbird                   |      1271 |      1390 |      1406 |      1424 |      1444 |      1683 |      2117 |       708 |
|                    Δ                     |     -1598 |     -1725 |     -1734 |     -1744 |     -1751 |     -1661 |     -1630 |       389 |
|              Improvement %               |        56 |        55 |        55 |        55 |        55 |        50 |        44 |       389 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       349 |       321 |       319 |       316 |       313 |       299 |       267 |       319 |
|                  jbird                   |       787 |       721 |       712 |       703 |       694 |       595 |       474 |       708 |
|                    Δ                     |       438 |       400 |       393 |       387 |       381 |       296 |       207 |       389 |
|              Improvement %               |       126 |       125 |       123 |       122 |       122 |        99 |        78 |       389 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       319 |
|                  jbird                   |        34 |        36 |        39 |        39 |        39 |        39 |        39 |       708 |
|                    Δ                     |         1 |         3 |         6 |         6 |         6 |         6 |         6 |       389 |
|              Improvement %               |        -3 |        -9 |       -18 |       -18 |       -18 |       -18 |       -18 |       389 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       708 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       319 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       708 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       319 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       708 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       319 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       708 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       389 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       389 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       319 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        31 |        33 |       708 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -35 |       -33 |       389 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       389 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       319 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       708 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       389 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2935 |      3131 |      3160 |      3183 |      3205 |      3256 |      3290 |       318 |
|                  jbird                   |      1333 |      1461 |      1476 |      1491 |      1509 |      1545 |      1600 |       677 |
|                    Δ                     |     -1602 |     -1670 |     -1684 |     -1692 |     -1696 |     -1711 |     -1690 |       359 |
|              Improvement %               |        55 |        53 |        53 |        53 |        53 |        53 |        51 |       359 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2930 |      3133 |      3162 |      3185 |      3209 |      3258 |      3291 |       318 |
|                  jbird                   |      1335 |      1462 |      1478 |      1493 |      1511 |      1550 |      1601 |       677 |
|                    Δ                     |     -1595 |     -1671 |     -1684 |     -1692 |     -1698 |     -1708 |     -1690 |       359 |
|              Improvement %               |        54 |        53 |        53 |        53 |        53 |        52 |        51 |       359 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       341 |       320 |       316 |       314 |       312 |       307 |       304 |       318 |
|                  jbird                   |       750 |       685 |       678 |       671 |       663 |       647 |       625 |       677 |
|                    Δ                     |       409 |       365 |       362 |       357 |       351 |       340 |       321 |       359 |
|              Improvement %               |       120 |       114 |       115 |       114 |       112 |       111 |       106 |       359 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       318 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       677 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       359 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       359 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       318 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       677 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       318 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       677 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       318 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       677 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       318 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       677 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       359 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       359 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        67 |        67 |        67 |       318 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        33 |        34 |       677 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -35 |       -34 |       -33 |       359 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        51 |        49 |       359 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       318 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       677 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       359 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       707 |       781 |       787 |       796 |       806 |       835 |       891 |      1261 |
|                  jbird                   |       320 |       353 |       357 |       363 |       370 |       384 |       456 |      2766 |
|                    Δ                     |      -387 |      -428 |      -430 |      -433 |      -436 |      -451 |      -435 |      1505 |
|              Improvement %               |        55 |        55 |        55 |        54 |        54 |        54 |        49 |      1505 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       708 |       783 |       790 |       798 |       808 |       837 |       892 |      1261 |
|                  jbird                   |       321 |       354 |       359 |       365 |       372 |       386 |       434 |      2766 |
|                    Δ                     |      -387 |      -429 |      -431 |      -433 |      -436 |      -451 |      -458 |      1505 |
|              Improvement %               |        55 |        55 |        55 |        54 |        54 |        54 |        51 |      1505 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1415 |      1281 |      1270 |      1257 |      1241 |      1198 |      1123 |      1261 |
|                  jbird                   |      3128 |      2839 |      2801 |      2755 |      2707 |      2603 |      2195 |      2766 |
|                    Δ                     |      1713 |      1558 |      1531 |      1498 |      1466 |      1405 |      1072 |      1505 |
|              Improvement %               |       121 |       122 |       121 |       119 |       118 |       117 |        95 |      1505 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1261 |
|                  jbird                   |        31 |        32 |        33 |        33 |        33 |        33 |        33 |      2766 |
|                    Δ                     |         0 |         1 |         2 |         2 |         2 |         2 |         2 |      1505 |
|              Improvement %               |         0 |        -3 |        -6 |        -6 |        -6 |        -6 |        -6 |      1505 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1261 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2766 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1505 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1505 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1261 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2766 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1505 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1505 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1261 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2766 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1505 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1505 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1261 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2766 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1505 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1505 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1261 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2766 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1505 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1505 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1261 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2766 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1505 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1505 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       704 |       782 |       789 |       796 |       805 |       828 |       864 |      1262 |
|                  jbird                   |       334 |       368 |       373 |       378 |       385 |       401 |       463 |      2652 |
|                    Δ                     |      -370 |      -414 |      -416 |      -418 |      -420 |      -427 |      -401 |      1390 |
|              Improvement %               |        53 |        53 |        53 |        53 |        52 |        52 |        46 |      1390 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       706 |       783 |       791 |       798 |       807 |       831 |       865 |      1262 |
|                  jbird                   |       336 |       370 |       375 |       380 |       387 |       402 |       467 |      2652 |
|                    Δ                     |      -370 |      -413 |      -416 |      -418 |      -420 |      -429 |      -398 |      1390 |
|              Improvement %               |        52 |        53 |        53 |        52 |        52 |        52 |        46 |      1390 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1420 |      1279 |      1268 |      1256 |      1243 |      1207 |      1158 |      1262 |
|                  jbird                   |      2991 |      2717 |      2683 |      2647 |      2601 |      2495 |      2161 |      2652 |
|                    Δ                     |      1571 |      1438 |      1415 |      1391 |      1358 |      1288 |      1003 |      1390 |
|              Improvement %               |       111 |       112 |       112 |       111 |       109 |       107 |        87 |      1390 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1262 |
|                  jbird                   |        31 |        32 |        32 |        32 |        33 |        33 |        33 |      2652 |
|                    Δ                     |         0 |         1 |         1 |         1 |         2 |         2 |         2 |      1390 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -6 |        -6 |        -6 |      1390 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2652 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1262 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2652 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1262 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2652 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1390 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1262 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2652 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1390 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1390 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1262 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2652 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |      1390 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        47 |      1390 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1262 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2652 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1390 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1426 |      1561 |      1572 |      1586 |      1598 |      1640 |      1728 |       635 |
|                  jbird                   |       640 |       701 |       712 |       722 |       732 |       755 |       827 |      1401 |
|                    Δ                     |      -786 |      -860 |      -860 |      -864 |      -866 |      -885 |      -901 |       766 |
|              Improvement %               |        55 |        55 |        55 |        54 |        54 |        54 |        52 |       766 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1427 |      1562 |      1574 |      1588 |      1602 |      1642 |      1730 |       635 |
|                  jbird                   |       642 |       703 |       713 |       724 |       733 |       758 |       829 |      1401 |
|                    Δ                     |      -785 |      -859 |      -861 |      -864 |      -869 |      -884 |      -901 |       766 |
|              Improvement %               |        55 |        55 |        55 |        54 |        54 |        54 |        52 |       766 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       701 |       641 |       636 |       631 |       626 |       610 |       579 |       635 |
|                  jbird                   |      1562 |      1426 |      1405 |      1385 |      1367 |      1326 |      1209 |      1401 |
|                    Δ                     |       861 |       785 |       769 |       754 |       741 |       716 |       630 |       766 |
|              Improvement %               |       123 |       122 |       121 |       119 |       118 |       117 |       109 |       766 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       635 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1401 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       766 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       766 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       635 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1401 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       766 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       766 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       635 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1401 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       766 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       766 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       635 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1401 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       766 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       766 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       635 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1401 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       766 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       766 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       635 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        16 |      1401 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       766 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |       766 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       635 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1401 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       766 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       766 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1443 |      1580 |      1593 |      1607 |      1621 |      1677 |      1726 |       627 |
|                  jbird                   |       672 |       736 |       744 |       753 |       763 |       792 |       821 |      1340 |
|                    Δ                     |      -771 |      -844 |      -849 |      -854 |      -858 |      -885 |      -905 |       713 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        52 |       713 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1445 |      1582 |      1594 |      1609 |      1624 |      1681 |      1733 |       627 |
|                  jbird                   |       673 |       737 |       745 |       754 |       764 |       791 |       822 |      1340 |
|                    Δ                     |      -772 |      -845 |      -849 |      -855 |      -860 |      -890 |      -911 |       713 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       713 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       693 |       633 |       628 |       623 |       617 |       596 |       579 |       627 |
|                  jbird                   |      1489 |      1360 |      1344 |      1328 |      1311 |      1263 |      1218 |      1340 |
|                    Δ                     |       796 |       727 |       716 |       705 |       694 |       667 |       639 |       713 |
|              Improvement %               |       115 |       115 |       114 |       113 |       112 |       112 |       110 |       713 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       627 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1340 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       713 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       713 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       627 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1340 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       713 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       713 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       627 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1340 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       713 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       713 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       627 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1340 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       713 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       713 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       627 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1340 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       713 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       713 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       627 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1340 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       713 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       713 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       627 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1340 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       713 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       713 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       143 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        79 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        56 |        56 |        79 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       143 |
|                    Δ                     |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        79 |
|              Improvement %               |        53 |        53 |        56 |        56 |        56 |        56 |        56 |        79 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        67 |        64 |        64 |        64 |        63 |        62 |        62 |        64 |
|                  jbird                   |       150 |       144 |       142 |       141 |       140 |       138 |       136 |       143 |
|                    Δ                     |        83 |        80 |        78 |        77 |        77 |        76 |        74 |        79 |
|              Improvement %               |       124 |       125 |       122 |       120 |       122 |       123 |       119 |        79 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        56 |        58 |        58 |        58 |        58 |        58 |        58 |       143 |
|                    Δ                     |        12 |        13 |        13 |        13 |        13 |        13 |        13 |        79 |
|              Improvement %               |       -27 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |        79 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       143 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       143 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       143 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       143 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        79 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        79 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       326 |       326 |       326 |       326 |       327 |       328 |       328 |        64 |
|                  jbird                   |       156 |       156 |       156 |       156 |       156 |       157 |       158 |       143 |
|                    Δ                     |      -170 |      -170 |      -170 |      -170 |      -171 |      -171 |      -170 |        79 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |        79 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       143 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        79 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         8 |         8 |         8 |       135 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -8 |        -8 |        -8 |        71 |
|              Improvement %               |        53 |        56 |        56 |        56 |        50 |        50 |        50 |        71 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         8 |         8 |         8 |       135 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -8 |        -8 |        -8 |        71 |
|              Improvement %               |        53 |        56 |        56 |        56 |        50 |        50 |        50 |        71 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        64 |        63 |        63 |        63 |        62 |        62 |        64 |
|                  jbird                   |       143 |       136 |       135 |       134 |       133 |       132 |       131 |       135 |
|                    Δ                     |        77 |        72 |        72 |        71 |        70 |        70 |        69 |        71 |
|              Improvement %               |       117 |       112 |       114 |       113 |       111 |       113 |       111 |        71 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        56 |        58 |        71 |        73 |        73 |        73 |        73 |       135 |
|                    Δ                     |        12 |        13 |        26 |        28 |        28 |        28 |        28 |        71 |
|              Improvement %               |       -27 |       -29 |       -58 |       -62 |       -62 |       -62 |       -62 |        71 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       135 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       135 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       135 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       135 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        71 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        71 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       332 |       332 |       332 |       332 |       333 |       333 |        64 |
|                  jbird                   |       162 |       162 |       162 |       162 |       162 |       164 |       166 |       135 |
|                    Δ                     |      -170 |      -170 |      -170 |      -170 |      -170 |      -169 |      -167 |        71 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        50 |        71 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       135 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       174 |       190 |       195 |       197 |       203 |       216 |       250 |      5055 |
|                  jbird                   |        81 |        86 |        91 |        92 |        95 |       108 |       133 |     10717 |
|                    Δ                     |       -93 |      -104 |      -104 |      -105 |      -108 |      -108 |      -117 |      5662 |
|              Improvement %               |        53 |        55 |        53 |        53 |        53 |        50 |        47 |      5662 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       175 |       192 |       197 |       199 |       205 |       217 |       252 |      5055 |
|                  jbird                   |        82 |        88 |        92 |        94 |        96 |       108 |       130 |     10717 |
|                    Δ                     |       -93 |      -104 |      -105 |      -105 |      -109 |      -109 |      -122 |      5662 |
|              Improvement %               |        53 |        54 |        53 |        53 |        53 |        50 |        48 |      5662 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5747 |      5255 |      5131 |      5083 |      4923 |      4635 |      3993 |      5055 |
|                  jbird                   |     12384 |     11583 |     11023 |     10879 |     10575 |      9239 |      7533 |     10717 |
|                    Δ                     |      6637 |      6328 |      5892 |      5796 |      5652 |      4604 |      3540 |      5662 |
|              Improvement %               |       115 |       120 |       115 |       114 |       115 |        99 |        89 |      5662 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      5055 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10717 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5662 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5662 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5055 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10717 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5662 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5662 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5055 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10717 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5662 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5662 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5055 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10717 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5662 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5662 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      5055 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10717 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5662 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5662 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4063 |      4065 |      4067 |      4067 |      4082 |      4125 |      4141 |      5055 |
|                  jbird                   |      1956 |      1958 |      1958 |      1958 |      1962 |      1976 |      2096 |     10717 |
|                    Δ                     |     -2107 |     -2107 |     -2109 |     -2109 |     -2120 |     -2149 |     -2045 |      5662 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        49 |      5662 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5055 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10717 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5662 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5662 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       175 |       194 |       198 |       200 |       206 |       220 |       247 |      4987 |
|                  jbird                   |        85 |        91 |        95 |        96 |        99 |       113 |       137 |     10221 |
|                    Δ                     |       -90 |      -103 |      -103 |      -104 |      -107 |      -107 |      -110 |      5234 |
|              Improvement %               |        51 |        53 |        52 |        52 |        52 |        49 |        45 |      5234 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       177 |       195 |       199 |       202 |       207 |       219 |       246 |      4987 |
|                  jbird                   |        86 |        92 |        97 |        98 |       101 |       112 |       132 |     10221 |
|                    Δ                     |       -91 |      -103 |      -102 |      -104 |      -106 |      -107 |      -114 |      5234 |
|              Improvement %               |        51 |        53 |        51 |        51 |        51 |        49 |        46 |      5234 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5705 |      5171 |      5059 |      4999 |      4851 |      4551 |      4042 |      4987 |
|                  jbird                   |     11788 |     11031 |     10503 |     10375 |     10071 |      8863 |      7288 |     10221 |
|                    Δ                     |      6083 |      5860 |      5444 |      5376 |      5220 |      4312 |      3246 |      5234 |
|              Improvement %               |       107 |       113 |       108 |       108 |       108 |        95 |        80 |      5234 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4987 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10221 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5234 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5234 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4987 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10221 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5234 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5234 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4987 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10221 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5234 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5234 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4987 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10221 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5234 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5234 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4987 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10221 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5234 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5234 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4133 |      4135 |      4137 |      4137 |      4151 |      4194 |      4211 |      4987 |
|                  jbird                   |      2025 |      2026 |      2028 |      2028 |      2031 |      2047 |      2144 |     10221 |
|                    Δ                     |     -2108 |     -2109 |     -2109 |     -2109 |     -2120 |     -2147 |     -2067 |      5234 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        49 |      5234 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4987 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10221 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5234 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5234 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        80 |        99 |       100 |       104 |       110 |       117 |       136 |      9579 |
|                  jbird                   |       100 |       111 |       112 |       116 |       119 |       129 |       177 |      8507 |
|                    Δ                     |        20 |        12 |        12 |        12 |         9 |        12 |        41 |     -1072 |
|              Improvement %               |       -25 |       -12 |       -12 |       -12 |        -8 |       -10 |       -30 |     -1072 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        82 |       100 |       102 |       106 |       111 |       118 |       134 |      9579 |
|                  jbird                   |       101 |       113 |       114 |       118 |       121 |       131 |       181 |      8507 |
|                    Δ                     |        19 |        13 |        12 |        12 |        10 |        13 |        47 |     -1072 |
|              Improvement %               |       -23 |       -13 |       -12 |       -11 |        -9 |       -11 |       -35 |     -1072 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     12480 |     10143 |     10007 |      9583 |      9127 |      8591 |      7351 |      9579 |
|                  jbird                   |     10025 |      8975 |      8911 |      8591 |      8423 |      7767 |      5642 |      8507 |
|                    Δ                     |     -2455 |     -1168 |     -1096 |      -992 |      -704 |      -824 |     -1709 |     -1072 |
|              Improvement %               |       -20 |       -12 |       -11 |       -10 |        -8 |       -10 |       -23 |     -1072 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9579 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      8507 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |     -1072 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |     -1072 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9579 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1072 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1072 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9579 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8507 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1072 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1072 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      9579 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8507 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -1072 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -1072 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       507 |       507 |       507 |       507 |       507 |       507 |       507 |      9579 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8507 |
|                    Δ                     |       651 |       651 |       651 |       651 |       651 |       651 |       651 |     -1072 |
|              Improvement %               |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |     -1072 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2646 |      2646 |      2646 |      2646 |      2646 |      2662 |      2853 |      9579 |
|                  jbird                   |      3329 |      3330 |      3330 |      3330 |      3332 |      3344 |      3767 |      8507 |
|                    Δ                     |       683 |       684 |       684 |       684 |       686 |       682 |       914 |     -1072 |
|              Improvement %               |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |       -32 |     -1072 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      9579 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8507 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -1072 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -1072 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8273 |      8487 |      8577 |      8643 |      8905 |      8970 |      8981 |       117 |
|                  jbird                   |      5512 |      5792 |      5837 |      5890 |      5947 |      5997 |      5997 |       172 |
|                    Δ                     |     -2761 |     -2695 |     -2740 |     -2753 |     -2958 |     -2973 |     -2984 |        55 |
|              Improvement %               |        33 |        32 |        32 |        32 |        33 |        33 |        33 |        55 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8280 |      8487 |      8569 |      8651 |      8905 |      8978 |      8987 |       117 |
|                  jbird                   |      5506 |      5788 |      5837 |      5890 |      5951 |      6001 |      6002 |       172 |
|                    Δ                     |     -2774 |     -2699 |     -2732 |     -2761 |     -2954 |     -2977 |     -2985 |        55 |
|              Improvement %               |        34 |        32 |        32 |        32 |        33 |        33 |        33 |        55 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       121 |       118 |       117 |       116 |       112 |       112 |       111 |       117 |
|                  jbird                   |       181 |       173 |       171 |       170 |       168 |       167 |       167 |       172 |
|                    Δ                     |        60 |        55 |        54 |        54 |        56 |        55 |        56 |        55 |
|              Improvement %               |        50 |        47 |        46 |        47 |        50 |        49 |        50 |        55 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       117 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       172 |
|                    Δ                     |        12 |        14 |        14 |        14 |        14 |        14 |        14 |        55 |
|              Improvement %               |       -33 |       -37 |       -37 |       -37 |       -37 |       -37 |       -37 |        55 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       117 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       117 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       172 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       117 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       172 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        55 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        55 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       117 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       172 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |        55 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        55 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       209 |       209 |       209 |       209 |       209 |       210 |       211 |       117 |
|                  jbird                   |       157 |       157 |       157 |       158 |       158 |       158 |       159 |       172 |
|                    Δ                     |       -52 |       -52 |       -52 |       -51 |       -51 |       -52 |       -52 |        55 |
|              Improvement %               |        25 |        25 |        25 |        24 |        24 |        25 |        25 |        55 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       117 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       172 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        55 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        55 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        52 |        59 |        60 |        62 |        62 |        70 |        89 |     15751 |
|                  jbird                   |        29 |        30 |        33 |        33 |        33 |        41 |        58 |     28321 |
|                    Δ                     |       -23 |       -29 |       -27 |       -29 |       -29 |       -29 |       -31 |     12570 |
|              Improvement %               |        44 |        49 |        45 |        47 |        47 |        41 |        35 |     12570 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        54 |        61 |        61 |        63 |        64 |        72 |        90 |     15751 |
|                  jbird                   |        30 |        31 |        34 |        34 |        35 |        43 |        53 |     28321 |
|                    Δ                     |       -24 |       -30 |       -27 |       -29 |       -29 |       -29 |       -37 |     12570 |
|              Improvement %               |        44 |        49 |        44 |        46 |        45 |        40 |        41 |     12570 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        19 |        17 |        17 |        16 |        16 |        14 |        11 |     15751 |
|                  jbird                   |        35 |        33 |        31 |        30 |        30 |        24 |        17 |     28321 |
|                    Δ                     |        16 |        16 |        14 |        14 |        14 |        10 |         6 |     12570 |
|              Improvement %               |        84 |        94 |        82 |        88 |        88 |        71 |        55 |     12570 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     15751 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     28321 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12570 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12570 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     15751 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     28321 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12570 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12570 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     15751 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     28321 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12570 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12570 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     15751 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     28321 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |     12570 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     12570 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        36 |        36 |        36 |        36 |        36 |        36 |     15751 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     28321 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     12570 |
|              Improvement %               |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |     12570 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1576 |      1576 |      1576 |      1576 |      1576 |      1593 |      1642 |     15751 |
|                  jbird                   |       733 |       733 |       733 |       733 |       733 |       751 |       796 |     28321 |
|                    Δ                     |      -843 |      -843 |      -843 |      -843 |      -843 |      -842 |      -846 |     12570 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        52 |     12570 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     15751 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     28321 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |     12570 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     12570 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        94 |        95 |        96 |        99 |       107 |       130 |     10151 |
|                  jbird                   |        86 |        94 |        96 |        97 |       100 |       113 |       132 |     10064 |
|                    Δ                     |         2 |         0 |         1 |         1 |         1 |         6 |         2 |       -87 |
|              Improvement %               |        -2 |         0 |        -1 |        -1 |        -1 |        -6 |        -2 |       -87 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        96 |        96 |        98 |       101 |       109 |       133 |     10151 |
|                  jbird                   |        88 |        95 |        98 |        99 |       102 |       113 |       134 |     10064 |
|                    Δ                     |         3 |        -1 |         2 |         1 |         1 |         4 |         1 |       -87 |
|              Improvement %               |        -4 |         1 |        -2 |        -1 |        -1 |        -4 |        -1 |       -87 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        11 |        10 |        10 |         9 |         8 |     10151 |
|                  jbird                   |        12 |        11 |        10 |        10 |        10 |         9 |         8 |     10064 |
|                    Δ                     |         0 |         0 |        -1 |         0 |         0 |         0 |         0 |       -87 |
|              Improvement %               |         0 |         0 |        -9 |         0 |         0 |         0 |         0 |       -87 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10151 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10064 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -87 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -87 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10151 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -87 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -87 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10151 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -87 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -87 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10151 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |     10064 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       -87 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       -87 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       522 |       522 |       522 |       522 |       522 |       522 |       522 |     10151 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |     10064 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       139 |       -87 |
|              Improvement %               |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -87 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2560 |      2562 |      2562 |      2562 |      2562 |      2605 |      2760 |     10151 |
|                  jbird                   |      2575 |      2576 |      2576 |      2576 |      2576 |      2591 |      2814 |     10064 |
|                    Δ                     |        15 |        14 |        14 |        14 |        14 |       -14 |        54 |       -87 |
|              Improvement %               |        -1 |        -1 |        -1 |        -1 |        -1 |         1 |        -2 |       -87 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10151 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |     10064 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       -87 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       -87 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        70 |        72 |        73 |        75 |        85 |       109 |     13372 |
|                  jbird                   |        56 |        62 |        64 |        65 |        67 |        80 |       118 |     14956 |
|                    Δ                     |        -7 |        -8 |        -8 |        -8 |        -8 |        -5 |         9 |      1584 |
|              Improvement %               |        11 |        11 |        11 |        11 |        11 |         6 |        -8 |      1584 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        71 |        73 |        74 |        76 |        87 |       107 |     13372 |
|                  jbird                   |        58 |        63 |        65 |        67 |        69 |        79 |       119 |     14956 |
|                    Δ                     |        -7 |        -8 |        -8 |        -7 |        -7 |        -8 |        12 |      1584 |
|              Improvement %               |        11 |        11 |        11 |         9 |         9 |         9 |       -11 |      1584 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        14 |        14 |        14 |        13 |        12 |         9 |     13372 |
|                  jbird                   |        18 |        16 |        16 |        15 |        15 |        13 |         8 |     14956 |
|                    Δ                     |         2 |         2 |         2 |         1 |         2 |         1 |        -1 |      1584 |
|              Improvement %               |        12 |        14 |        14 |         7 |        15 |         8 |       -11 |      1584 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     13372 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     14956 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1584 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1584 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13372 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14956 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1584 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1584 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13372 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14956 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1584 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1584 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13372 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14956 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1584 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      1584 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       245 |       245 |       245 |       245 |       245 |       245 |       245 |     13372 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     14956 |
|                    Δ                     |        84 |        84 |        84 |        84 |        84 |        84 |        84 |      1584 |
|              Improvement %               |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |      1584 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1552 |      1553 |      1553 |      1553 |      1553 |      1560 |      1628 |     13372 |
|                  jbird                   |      1588 |      1588 |      1588 |      1588 |      1588 |      1601 |      1722 |     14956 |
|                    Δ                     |        36 |        35 |        35 |        35 |        35 |        41 |        94 |      1584 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -3 |        -6 |      1584 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13372 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14956 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1584 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      1584 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        95 |       106 |       108 |       109 |       113 |       122 |       151 |      9012 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        38 |     74899 |
|                    Δ                     |       -86 |       -96 |       -98 |       -99 |      -103 |      -109 |      -113 |     65887 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        89 |        75 |     65887 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        97 |       107 |       109 |       111 |       114 |       124 |       153 |      9012 |
|                  jbird                   |        10 |        12 |        12 |        12 |        12 |        15 |        32 |     74899 |
|                    Δ                     |       -87 |       -95 |       -97 |       -99 |      -102 |      -109 |      -121 |     65887 |
|              Improvement %               |        90 |        89 |        89 |        89 |        89 |        88 |        79 |     65887 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10508 |      9439 |      9279 |      9167 |      8895 |      8167 |      6613 |      9012 |
|                  jbird                   |    111620 |     99199 |     97599 |     96831 |     95679 |     75519 |     26608 |     74899 |
|                    Δ                     |    101112 |     89760 |     88320 |     87664 |     86784 |     67352 |     19995 |     65887 |
|              Improvement %               |       962 |       951 |       952 |       956 |       976 |       825 |       302 |     65887 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9012 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     74899 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65887 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65887 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9012 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     74899 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65887 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65887 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9012 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     74899 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65887 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     65887 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      9012 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     74899 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     65887 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     65887 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        71 |        71 |        71 |        71 |        71 |        71 |      9012 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     74899 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     65887 |
|              Improvement %               |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |     65887 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2040 |      2041 |      2041 |      2041 |      2046 |      2056 |      2080 |      9012 |
|                  jbird                   |       230 |       231 |       231 |       231 |       231 |       235 |       288 |     74899 |
|                    Δ                     |     -1810 |     -1810 |     -1810 |     -1810 |     -1815 |     -1821 |     -1792 |     65887 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        86 |     65887 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      9012 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     74899 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     65887 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     65887 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1978 |      2171 |      2185 |      2195 |      2218 |      2302 |      2347 |       457 |
|                  jbird                   |      1016 |      1106 |      1116 |      1127 |      1141 |      1217 |      1266 |       893 |
|                    Δ                     |      -962 |     -1065 |     -1069 |     -1068 |     -1077 |     -1085 |     -1081 |       436 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        47 |        46 |       436 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1980 |      2173 |      2185 |      2200 |      2218 |      2306 |      2351 |       457 |
|                  jbird                   |      1017 |      1107 |      1117 |      1128 |      1143 |      1218 |      1268 |       893 |
|                    Δ                     |      -963 |     -1066 |     -1068 |     -1072 |     -1075 |     -1088 |     -1083 |       436 |
|              Improvement %               |        49 |        49 |        49 |        49 |        48 |        47 |        46 |       436 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       506 |       461 |       458 |       456 |       451 |       435 |       426 |       457 |
|                  jbird                   |       985 |       905 |       896 |       888 |       877 |       822 |       790 |       893 |
|                    Δ                     |       479 |       444 |       438 |       432 |       426 |       387 |       364 |       436 |
|              Improvement %               |        95 |        96 |        96 |        95 |        94 |        89 |        85 |       436 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       457 |
|                  jbird                   |        32 |        37 |        37 |        37 |        37 |        37 |        37 |       893 |
|                    Δ                     |         0 |         5 |         5 |         5 |         5 |         5 |         5 |       436 |
|              Improvement %               |         0 |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       436 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       457 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       893 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       457 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       893 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       457 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       893 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       436 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       436 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |       457 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       893 |
|                    Δ                     |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |       436 |
|              Improvement %               |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |       436 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        43 |        43 |        43 |        43 |        43 |        43 |       457 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       893 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       -18 |       436 |
|              Improvement %               |        44 |        44 |        44 |        44 |        44 |        42 |        42 |       436 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       457 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       893 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       436 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       436 |

<p>
</details>

