## JBird vs Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2925 |      3176 |      3201 |      3219 |      3236 |      3480 |      3737 |       313 |
|                  jbird                   |      1251 |      1374 |      1390 |      1406 |      1428 |      1575 |      1946 |       716 |
|                    Δ                     |     -1674 |     -1802 |     -1811 |     -1813 |     -1808 |     -1905 |     -1791 |       403 |
|              Improvement %               |        57 |        57 |        57 |        56 |        56 |        55 |        48 |       403 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2931 |      3178 |      3203 |      3222 |      3240 |      3482 |      3744 |       313 |
|                  jbird                   |      1252 |      1376 |      1392 |      1408 |      1432 |      1577 |      1949 |       716 |
|                    Δ                     |     -1679 |     -1802 |     -1811 |     -1814 |     -1808 |     -1905 |     -1795 |       403 |
|              Improvement %               |        57 |        57 |        57 |        56 |        56 |        55 |        48 |       403 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       342 |       315 |       312 |       311 |       309 |       287 |       268 |       313 |
|                  jbird                   |       799 |       728 |       720 |       711 |       700 |       635 |       514 |       716 |
|                    Δ                     |       457 |       413 |       408 |       400 |       391 |       348 |       246 |       403 |
|              Improvement %               |       134 |       131 |       131 |       129 |       127 |       121 |        92 |       403 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       313 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       716 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       403 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       403 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       313 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       716 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       313 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       716 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       313 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       716 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       313 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       716 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       403 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       403 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        66 |        66 |       313 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        32 |        33 |       716 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -33 |       403 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        50 |       403 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       313 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       716 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       403 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2951 |      3172 |      3197 |      3213 |      3234 |      3281 |      3295 |       314 |
|                  jbird                   |      1301 |      1419 |      1434 |      1447 |      1459 |      1496 |      1592 |       698 |
|                    Δ                     |     -1650 |     -1753 |     -1763 |     -1766 |     -1775 |     -1785 |     -1703 |       384 |
|              Improvement %               |        56 |        55 |        55 |        55 |        55 |        54 |        52 |       384 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2953 |      3172 |      3199 |      3215 |      3232 |      3275 |      3297 |       314 |
|                  jbird                   |      1302 |      1420 |      1436 |      1448 |      1461 |      1498 |      1589 |       698 |
|                    Δ                     |     -1651 |     -1752 |     -1763 |     -1767 |     -1771 |     -1777 |     -1708 |       384 |
|              Improvement %               |        56 |        55 |        55 |        55 |        55 |        54 |        52 |       384 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       339 |       315 |       313 |       311 |       309 |       305 |       303 |       314 |
|                  jbird                   |       769 |       705 |       698 |       692 |       686 |       669 |       628 |       698 |
|                    Δ                     |       430 |       390 |       385 |       381 |       377 |       364 |       325 |       384 |
|              Improvement %               |       127 |       124 |       123 |       123 |       122 |       119 |       107 |       384 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       314 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       698 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       384 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       384 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       314 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       314 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       314 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       314 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       698 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       384 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       384 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        67 |        67 |        67 |       314 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       698 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -35 |       -35 |       -34 |       384 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |       384 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       314 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       384 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       707 |       781 |       788 |       798 |       808 |       835 |       868 |      1263 |
|                  jbird                   |       315 |       345 |       350 |       356 |       364 |       377 |       403 |      2824 |
|                    Δ                     |      -392 |      -436 |      -438 |      -442 |      -444 |      -458 |      -465 |      1561 |
|              Improvement %               |        55 |        56 |        56 |        55 |        55 |        55 |        54 |      1561 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       709 |       782 |       791 |       800 |       810 |       837 |       870 |      1263 |
|                  jbird                   |       316 |       346 |       351 |       358 |       366 |       379 |       407 |      2824 |
|                    Δ                     |      -393 |      -436 |      -440 |      -442 |      -444 |      -458 |      -463 |      1561 |
|              Improvement %               |        55 |        56 |        56 |        55 |        55 |        55 |        53 |      1561 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1414 |      1281 |      1268 |      1253 |      1237 |      1198 |      1151 |      1263 |
|                  jbird                   |      3176 |      2903 |      2859 |      2807 |      2749 |      2651 |      2482 |      2824 |
|                    Δ                     |      1762 |      1622 |      1591 |      1554 |      1512 |      1453 |      1331 |      1561 |
|              Improvement %               |       125 |       127 |       125 |       124 |       122 |       121 |       116 |      1561 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1263 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2824 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1561 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1561 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1263 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2824 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1561 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1561 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1263 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2824 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1561 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1561 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1263 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2824 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1561 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1561 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1263 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2824 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1561 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1561 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1263 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2824 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1561 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1561 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1263 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2824 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1561 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1561 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       714 |       786 |       794 |       803 |       814 |       844 |       867 |      1255 |
|                  jbird                   |       324 |       356 |       360 |       367 |       374 |       389 |       467 |      2746 |
|                    Δ                     |      -390 |      -430 |      -434 |      -436 |      -440 |      -455 |      -400 |      1491 |
|              Improvement %               |        55 |        55 |        55 |        54 |        54 |        54 |        46 |      1491 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       716 |       788 |       795 |       805 |       816 |       843 |       869 |      1255 |
|                  jbird                   |       325 |       357 |       362 |       368 |       375 |       391 |       434 |      2746 |
|                    Δ                     |      -391 |      -431 |      -433 |      -437 |      -441 |      -452 |      -435 |      1491 |
|              Improvement %               |        55 |        55 |        54 |        54 |        54 |        54 |        50 |      1491 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1400 |      1272 |      1260 |      1245 |      1229 |      1185 |      1154 |      1255 |
|                  jbird                   |      3088 |      2813 |      2777 |      2729 |      2679 |      2573 |      2140 |      2746 |
|                    Δ                     |      1688 |      1541 |      1517 |      1484 |      1450 |      1388 |       986 |      1491 |
|              Improvement %               |       121 |       121 |       120 |       119 |       118 |       117 |        85 |      1491 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1255 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        33 |        33 |      2746 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         2 |         2 |      1491 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -6 |        -6 |      1491 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1255 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2746 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1491 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1491 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1255 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2746 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1491 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1491 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1255 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2746 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1491 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1491 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1255 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2746 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1491 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1491 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1255 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2746 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |      1491 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        53 |      1491 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1255 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2746 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1491 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1491 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1430 |      1577 |      1588 |      1599 |      1614 |      1658 |      1727 |       629 |
|                  jbird                   |       629 |       689 |       699 |       708 |       717 |       737 |       770 |      1428 |
|                    Δ                     |      -801 |      -888 |      -889 |      -891 |      -897 |      -921 |      -957 |       799 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        55 |       799 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1431 |      1579 |      1590 |      1602 |      1616 |      1656 |      1729 |       629 |
|                  jbird                   |       631 |       690 |       700 |       710 |       718 |       735 |       772 |      1428 |
|                    Δ                     |      -800 |      -889 |      -890 |      -892 |      -898 |      -921 |      -957 |       799 |
|              Improvement %               |        56 |        56 |        56 |        56 |        56 |        56 |        55 |       799 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       699 |       634 |       630 |       625 |       620 |       603 |       579 |       629 |
|                  jbird                   |      1589 |      1452 |      1432 |      1413 |      1395 |      1357 |      1298 |      1428 |
|                    Δ                     |       890 |       818 |       802 |       788 |       775 |       754 |       719 |       799 |
|              Improvement %               |       127 |       129 |       127 |       126 |       125 |       125 |       124 |       799 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       629 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1428 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       799 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       799 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       629 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1428 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       629 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1428 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       629 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1428 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       799 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       629 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1428 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       799 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       799 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       629 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1428 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       799 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        48 |       799 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       629 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1428 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       799 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       799 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1432 |      1582 |      1594 |      1607 |      1621 |      1659 |      1687 |       628 |
|                  jbird                   |       648 |       709 |       718 |       726 |       734 |       751 |       856 |      1390 |
|                    Δ                     |      -784 |      -873 |      -876 |      -881 |      -887 |      -908 |      -831 |       762 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        49 |       762 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1434 |      1583 |      1596 |      1609 |      1622 |      1660 |      1689 |       628 |
|                  jbird                   |       649 |       711 |       719 |       727 |       736 |       751 |       859 |      1390 |
|                    Δ                     |      -785 |      -872 |      -877 |      -882 |      -886 |      -909 |      -830 |       762 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        49 |       762 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       698 |       632 |       627 |       622 |       617 |       603 |       593 |       628 |
|                  jbird                   |      1544 |      1410 |      1393 |      1378 |      1363 |      1332 |      1169 |      1390 |
|                    Δ                     |       846 |       778 |       766 |       756 |       746 |       729 |       576 |       762 |
|              Improvement %               |       121 |       123 |       122 |       122 |       121 |       121 |        97 |       762 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       628 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1390 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       762 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       762 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       628 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       762 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       762 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       628 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1390 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       762 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       762 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       628 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1390 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       762 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       762 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       628 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1390 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       762 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       762 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       628 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1390 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       762 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       762 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       628 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1390 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       762 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       762 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       144 |
|                    Δ                     |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        80 |
|              Improvement %               |        53 |        53 |        56 |        56 |        56 |        56 |        56 |        80 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        15 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         7 |       144 |
|                    Δ                     |        -8 |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        80 |
|              Improvement %               |        53 |        53 |        56 |        56 |        56 |        56 |        56 |        80 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        65 |        64 |        63 |        63 |        62 |        62 |        64 |
|                  jbird                   |       152 |       145 |       143 |       142 |       142 |       140 |       140 |       144 |
|                    Δ                     |        86 |        80 |        79 |        79 |        79 |        78 |        78 |        80 |
|              Improvement %               |       130 |       123 |       123 |       125 |       125 |       126 |       126 |        80 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       144 |
|                    Δ                     |        11 |        13 |        13 |        13 |        13 |        13 |        13 |        80 |
|              Improvement %               |       -25 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |        80 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       144 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       144 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       144 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       144 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        80 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        80 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       326 |       326 |       326 |       326 |       327 |       328 |       328 |        64 |
|                  jbird                   |       157 |       157 |       157 |       157 |       157 |       158 |       159 |       144 |
|                    Δ                     |      -169 |      -169 |      -169 |      -169 |      -170 |      -170 |      -169 |        80 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |        80 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       144 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        80 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       140 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        76 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        56 |        50 |        76 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       140 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        76 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        56 |        50 |        76 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        64 |        63 |        63 |        62 |        62 |        62 |        64 |
|                  jbird                   |       150 |       142 |       139 |       137 |       137 |       135 |       131 |       140 |
|                    Δ                     |        84 |        78 |        76 |        74 |        75 |        73 |        69 |        76 |
|              Improvement %               |       127 |       122 |       121 |       117 |       121 |       118 |       111 |        76 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       140 |
|                    Δ                     |        11 |        13 |        13 |        13 |        13 |        13 |        13 |        76 |
|              Improvement %               |       -25 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |        76 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       140 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       140 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       140 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       140 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        76 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        76 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       332 |       332 |       332 |       332 |       334 |       334 |        64 |
|                  jbird                   |       160 |       160 |       160 |       160 |       160 |       161 |       162 |       140 |
|                    Δ                     |      -172 |      -172 |      -172 |      -172 |      -172 |      -173 |      -172 |        76 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |        76 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       140 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        76 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       175 |       192 |       197 |       199 |       206 |       220 |       270 |      5012 |
|                  jbird                   |        79 |        85 |        89 |        91 |        93 |       106 |       124 |     10859 |
|                    Δ                     |       -96 |      -107 |      -108 |      -108 |      -113 |      -114 |      -146 |      5847 |
|              Improvement %               |        55 |        56 |        55 |        54 |        55 |        52 |        54 |      5847 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       176 |       194 |       198 |       200 |       207 |       220 |       271 |      5012 |
|                  jbird                   |        81 |        87 |        91 |        92 |        95 |       105 |       124 |     10859 |
|                    Δ                     |       -95 |      -107 |      -107 |      -108 |      -112 |      -115 |      -147 |      5847 |
|              Improvement %               |        54 |        55 |        54 |        54 |        54 |        52 |        54 |      5847 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5713 |      5215 |      5091 |      5031 |      4863 |      4551 |      3711 |      5012 |
|                  jbird                   |     12618 |     11719 |     11215 |     11047 |     10767 |      9447 |      8092 |     10859 |
|                    Δ                     |      6905 |      6504 |      6124 |      6016 |      5904 |      4896 |      4381 |      5847 |
|              Improvement %               |       121 |       125 |       120 |       120 |       121 |       108 |       118 |      5847 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      5012 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10859 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5847 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5847 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5012 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10859 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5847 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5847 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5012 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10859 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5847 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5847 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5012 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10859 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5847 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5847 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      5012 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10859 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5847 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5847 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4067 |      4069 |      4069 |      4069 |      4086 |      4127 |      4150 |      5012 |
|                  jbird                   |      1960 |      1961 |      1962 |      1962 |      1965 |      1979 |      2090 |     10859 |
|                    Δ                     |     -2107 |     -2108 |     -2107 |     -2107 |     -2121 |     -2148 |     -2060 |      5847 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        50 |      5847 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5012 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10859 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5847 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5847 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       176 |       193 |       198 |       201 |       207 |       221 |       293 |      4975 |
|                  jbird                   |        82 |        89 |        92 |        94 |        96 |       108 |       127 |     10517 |
|                    Δ                     |       -94 |      -104 |      -106 |      -107 |      -111 |      -113 |      -166 |      5542 |
|              Improvement %               |        53 |        54 |        54 |        53 |        54 |        51 |        57 |      5542 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       177 |       195 |       199 |       202 |       209 |       221 |       280 |      4975 |
|                  jbird                   |        83 |        90 |        94 |        95 |        98 |       109 |       131 |     10517 |
|                    Δ                     |       -94 |      -105 |      -105 |      -107 |      -111 |      -112 |      -149 |      5542 |
|              Improvement %               |        53 |        54 |        53 |        53 |        53 |        51 |        53 |      5542 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5685 |      5175 |      5059 |      4983 |      4831 |      4535 |      3416 |      4975 |
|                  jbird                   |     12226 |     11279 |     10831 |     10695 |     10391 |      9295 |      7892 |     10517 |
|                    Δ                     |      6541 |      6104 |      5772 |      5712 |      5560 |      4760 |      4476 |      5542 |
|              Improvement %               |       115 |       118 |       114 |       115 |       115 |       105 |       131 |      5542 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4975 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10517 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5542 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5542 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4975 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10517 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5542 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5542 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4975 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10517 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5542 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5542 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4975 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10517 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5542 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5542 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4975 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10517 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5542 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5542 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4135 |      4137 |      4137 |      4137 |      4153 |      4194 |      4218 |      4975 |
|                  jbird                   |      2004 |      2006 |      2007 |      2007 |      2010 |      2026 |      2123 |     10517 |
|                    Δ                     |     -2131 |     -2131 |     -2130 |     -2130 |     -2143 |     -2168 |     -2095 |      5542 |
|              Improvement %               |        52 |        52 |        51 |        51 |        52 |        52 |        50 |      5542 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4975 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10517 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5542 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5542 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        80 |        90 |        90 |        93 |       102 |       112 |       132 |     10529 |
|                  jbird                   |       110 |       126 |       128 |       136 |       142 |       155 |       208 |      7459 |
|                    Δ                     |        30 |        36 |        38 |        43 |        40 |        43 |        76 |     -3070 |
|              Improvement %               |       -38 |       -40 |       -42 |       -46 |       -39 |       -38 |       -58 |     -3070 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        81 |        91 |        91 |        94 |       103 |       112 |       130 |     10529 |
|                  jbird                   |       112 |       127 |       130 |       138 |       144 |       156 |       207 |      7459 |
|                    Δ                     |        31 |        36 |        39 |        44 |        41 |        44 |        77 |     -3070 |
|              Improvement %               |       -38 |       -40 |       -43 |       -47 |       -40 |       -39 |       -59 |     -3070 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        11 |        11 |        11 |        10 |         9 |         8 |     10529 |
|                  jbird                   |         9 |         8 |         8 |         7 |         7 |         6 |         5 |      7459 |
|                    Δ                     |        -4 |        -3 |        -3 |        -4 |        -3 |        -3 |        -3 |     -3070 |
|              Improvement %               |       -31 |       -27 |       -27 |       -36 |       -30 |       -33 |       -38 |     -3070 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10529 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      7459 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |     -3070 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |     -3070 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10529 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7459 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -3070 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -3070 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10529 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7459 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -3070 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -3070 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10529 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7459 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -3070 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -3070 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       507 |       507 |       507 |       507 |       507 |       507 |       507 |     10529 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7459 |
|                    Δ                     |       651 |       651 |       651 |       651 |       651 |       651 |       651 |     -3070 |
|              Improvement %               |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |     -3070 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2646 |      2646 |      2646 |      2646 |      2646 |      2662 |      2865 |     10529 |
|                  jbird                   |      3651 |      3652 |      3652 |      3652 |      3654 |      3668 |      4098 |      7459 |
|                    Δ                     |      1005 |      1006 |      1006 |      1006 |      1008 |      1006 |      1233 |     -3070 |
|              Improvement %               |       -38 |       -38 |       -38 |       -38 |       -38 |       -38 |       -43 |     -3070 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10529 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7459 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -3070 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -3070 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8172 |      8405 |      8544 |      8643 |      8774 |      8946 |      9009 |       117 |
|                  jbird                   |      5260 |      5521 |      5566 |      5616 |      5652 |      5722 |      5730 |       180 |
|                    Δ                     |     -2912 |     -2884 |     -2978 |     -3027 |     -3122 |     -3224 |     -3279 |        63 |
|              Improvement %               |        36 |        34 |        35 |        35 |        36 |        36 |        36 |        63 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8165 |      8405 |      8544 |      8643 |      8782 |      8946 |      9015 |       117 |
|                  jbird                   |      5245 |      5526 |      5571 |      5620 |      5657 |      5726 |      5732 |       180 |
|                    Δ                     |     -2920 |     -2879 |     -2973 |     -3023 |     -3125 |     -3220 |     -3283 |        63 |
|              Improvement %               |        36 |        34 |        35 |        35 |        36 |        36 |        36 |        63 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       122 |       119 |       117 |       116 |       114 |       112 |       111 |       117 |
|                  jbird                   |       190 |       181 |       180 |       178 |       177 |       175 |       175 |       180 |
|                    Δ                     |        68 |        62 |        63 |        62 |        63 |        63 |        64 |        63 |
|              Improvement %               |        56 |        52 |        54 |        53 |        55 |        56 |        58 |        63 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       117 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       180 |
|                    Δ                     |        12 |        14 |        14 |        14 |        14 |        14 |        14 |        63 |
|              Improvement %               |       -33 |       -37 |       -37 |       -37 |       -37 |       -37 |       -37 |        63 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       117 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       180 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       117 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       180 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       117 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       180 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        63 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        63 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       117 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       180 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |        63 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        63 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       209 |       209 |       209 |       209 |       209 |       210 |       210 |       117 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       155 |       156 |       180 |
|                    Δ                     |       -55 |       -55 |       -55 |       -55 |       -55 |       -55 |       -54 |        63 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        26 |        63 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       117 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       180 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        63 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        63 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        51 |        57 |        59 |        60 |        62 |        72 |        93 |     16091 |
|                  jbird                   |        51 |        52 |        57 |        58 |        59 |        69 |        99 |     16912 |
|                    Δ                     |         0 |        -5 |        -2 |        -2 |        -3 |        -3 |         6 |       821 |
|              Improvement %               |         0 |         9 |         3 |         3 |         5 |         4 |        -6 |       821 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        59 |        61 |        61 |        63 |        73 |        91 |     16091 |
|                  jbird                   |        52 |        54 |        58 |        59 |        60 |        71 |       104 |     16912 |
|                    Δ                     |        -1 |        -5 |        -3 |        -2 |        -3 |        -2 |        13 |       821 |
|              Improvement %               |         2 |         8 |         5 |         3 |         5 |         3 |       -14 |       821 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        19 |        17 |        17 |        17 |        16 |        14 |        11 |     16091 |
|                  jbird                   |        20 |        19 |        18 |        17 |        17 |        14 |        10 |     16912 |
|                    Δ                     |         1 |         2 |         1 |         0 |         1 |         0 |        -1 |       821 |
|              Improvement %               |         5 |        12 |         6 |         0 |         6 |         0 |        -9 |       821 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        31 |        31 |        31 |        31 |     16091 |
|                  jbird                   |        30 |        30 |        30 |        30 |        31 |        31 |        31 |     16912 |
|                    Δ                     |         0 |         0 |         0 |        -1 |         0 |         0 |         0 |       821 |
|              Improvement %               |         0 |         0 |         0 |         3 |         0 |         0 |         0 |       821 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16091 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16912 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       821 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       821 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16091 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16912 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       821 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       821 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     16091 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     16912 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |       821 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       821 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        36 |        36 |        36 |        36 |        36 |        36 |     16091 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     16912 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |       821 |
|              Improvement %               |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |       821 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1579 |      1579 |      1579 |      1580 |      1580 |      1596 |      1638 |     16091 |
|                  jbird                   |      1353 |      1355 |      1355 |      1355 |      1355 |      1372 |      1434 |     16912 |
|                    Δ                     |      -226 |      -224 |      -224 |      -225 |      -225 |      -224 |      -204 |       821 |
|              Improvement %               |        14 |        14 |        14 |        14 |        14 |        14 |        12 |       821 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     16091 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     16912 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |       821 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |       821 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        83 |        93 |        96 |        97 |       100 |       109 |       126 |     10091 |
|                  jbird                   |        96 |       103 |       108 |       111 |       115 |       127 |       167 |      8994 |
|                    Δ                     |        13 |        10 |        12 |        14 |        15 |        18 |        41 |     -1097 |
|              Improvement %               |       -16 |       -11 |       -12 |       -14 |       -15 |       -17 |       -33 |     -1097 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        94 |        98 |        98 |       102 |       111 |       129 |     10091 |
|                  jbird                   |        98 |       105 |       110 |       113 |       116 |       127 |       168 |      8994 |
|                    Δ                     |        14 |        11 |        12 |        15 |        14 |        16 |        39 |     -1097 |
|              Improvement %               |       -17 |       -12 |       -12 |       -15 |       -14 |       -14 |       -30 |     -1097 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         8 |     10091 |
|                  jbird                   |        10 |        10 |         9 |         9 |         9 |         8 |         6 |      8994 |
|                    Δ                     |        -2 |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |     -1097 |
|              Improvement %               |       -17 |        -9 |       -10 |       -10 |       -10 |       -11 |       -25 |     -1097 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10091 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8994 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1097 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1097 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10091 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8994 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1097 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1097 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10091 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8994 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1097 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1097 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10091 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8994 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |     -1097 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |     -1097 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       522 |       522 |       522 |       522 |       522 |       522 |       522 |     10091 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      8994 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       139 |     -1097 |
|              Improvement %               |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |     -1097 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2561 |      2562 |      2562 |      2562 |      2562 |      2605 |      2763 |     10091 |
|                  jbird                   |      2605 |      2607 |      2607 |      2607 |      2607 |      2623 |      2848 |      8994 |
|                    Δ                     |        44 |        45 |        45 |        45 |        45 |        18 |        85 |     -1097 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -1 |        -3 |     -1097 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10091 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      8994 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |     -1097 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |     -1097 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        69 |        71 |        72 |        75 |        83 |       104 |     13471 |
|                  jbird                   |        60 |        66 |        68 |        72 |        78 |        88 |       119 |     13744 |
|                    Δ                     |        -3 |        -3 |        -3 |         0 |         3 |         5 |        15 |       273 |
|              Improvement %               |         5 |         4 |         4 |         0 |        -4 |        -6 |       -14 |       273 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        71 |        73 |        74 |        76 |        86 |       104 |     13471 |
|                  jbird                   |        62 |        67 |        70 |        74 |        79 |        89 |       123 |     13744 |
|                    Δ                     |        -2 |        -4 |        -3 |         0 |         3 |         3 |        19 |       273 |
|              Improvement %               |         3 |         6 |         4 |         0 |        -4 |        -3 |       -18 |       273 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        14 |        14 |        14 |        13 |        12 |        10 |     13471 |
|                  jbird                   |        17 |        15 |        15 |        14 |        13 |        11 |         8 |     13744 |
|                    Δ                     |         1 |         1 |         1 |         0 |         0 |        -1 |        -2 |       273 |
|              Improvement %               |         6 |         7 |         7 |         0 |         0 |        -8 |       -20 |       273 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13471 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13744 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       273 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       273 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13471 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13744 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       273 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       273 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13471 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13744 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       273 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       273 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13471 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13744 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       273 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       273 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       245 |       245 |       245 |       245 |       245 |       245 |       245 |     13471 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13744 |
|                    Δ                     |        84 |        84 |        84 |        84 |        84 |        84 |        84 |       273 |
|              Improvement %               |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       273 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1553 |      1553 |      1553 |      1553 |      1553 |      1561 |      1630 |     13471 |
|                  jbird                   |      1574 |      1574 |      1574 |      1575 |      1575 |      1586 |      1708 |     13744 |
|                    Δ                     |        21 |        21 |        21 |        22 |        22 |        25 |        78 |       273 |
|              Improvement %               |        -1 |        -1 |        -1 |        -1 |        -1 |        -2 |        -5 |       273 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13471 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13744 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       273 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       273 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        96 |       108 |       110 |       113 |       117 |       126 |       148 |      8784 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        36 |     75316 |
|                    Δ                     |       -87 |       -98 |      -100 |      -103 |      -107 |      -113 |      -112 |     66532 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        90 |        76 |     66532 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        97 |       110 |       112 |       115 |       118 |       128 |       143 |      8784 |
|                  jbird                   |        10 |        11 |        12 |        12 |        12 |        15 |        34 |     75316 |
|                    Δ                     |       -87 |       -99 |      -100 |      -103 |      -106 |      -113 |      -109 |     66532 |
|              Improvement %               |        90 |        90 |        89 |        90 |        90 |        88 |        76 |     66532 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10453 |      9255 |      9079 |      8871 |      8591 |      7947 |      6762 |      8784 |
|                  jbird                   |    114286 |    103039 |     99583 |     97215 |     95999 |     76223 |     27397 |     75316 |
|                    Δ                     |    103833 |     93784 |     90504 |     88344 |     87408 |     68276 |     20635 |     66532 |
|              Improvement %               |       993 |      1013 |       997 |       996 |      1017 |       859 |       305 |     66532 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8784 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     75316 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66532 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66532 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8784 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75316 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66532 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66532 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8784 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75316 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66532 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     66532 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8784 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75316 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     66532 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     66532 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        71 |        71 |        71 |        71 |        71 |        71 |      8784 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     75316 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     66532 |
|              Improvement %               |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |     66532 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2041 |      2041 |      2041 |      2041 |      2046 |      2058 |      2080 |      8784 |
|                  jbird                   |       230 |       230 |       230 |       230 |       231 |       236 |       291 |     75316 |
|                    Δ                     |     -1811 |     -1811 |     -1811 |     -1811 |     -1815 |     -1822 |     -1789 |     66532 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        86 |     66532 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8784 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75316 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     66532 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     66532 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1992 |      2189 |      2206 |      2224 |      2249 |      2306 |      2346 |       452 |
|                  jbird                   |       955 |      1038 |      1052 |      1064 |      1078 |      1126 |      1200 |       949 |
|                    Δ                     |     -1037 |     -1151 |     -1154 |     -1160 |     -1171 |     -1180 |     -1146 |       497 |
|              Improvement %               |        52 |        53 |        52 |        52 |        52 |        51 |        49 |       497 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1993 |      2189 |      2208 |      2226 |      2253 |      2304 |      2347 |       452 |
|                  jbird                   |       956 |      1039 |      1053 |      1066 |      1079 |      1128 |      1203 |       949 |
|                    Δ                     |     -1037 |     -1150 |     -1155 |     -1160 |     -1174 |     -1176 |     -1144 |       497 |
|              Improvement %               |        52 |        53 |        52 |        52 |        52 |        51 |        49 |       497 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       502 |       457 |       454 |       450 |       445 |       434 |       426 |       452 |
|                  jbird                   |      1047 |       964 |       951 |       940 |       927 |       888 |       833 |       949 |
|                    Δ                     |       545 |       507 |       497 |       490 |       482 |       454 |       407 |       497 |
|              Improvement %               |       109 |       111 |       109 |       109 |       108 |       105 |        96 |       497 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       452 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       949 |
|                    Δ                     |         0 |         3 |         3 |         3 |         3 |         3 |         3 |       497 |
|              Improvement %               |         0 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       497 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       452 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       949 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       497 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       497 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       452 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       949 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       497 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       497 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       452 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       949 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       497 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       497 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |       452 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       949 |
|                    Δ                     |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |       497 |
|              Improvement %               |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |       497 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        43 |        43 |        43 |        43 |        43 |        43 |       452 |
|                  jbird                   |        23 |        23 |        23 |        23 |        23 |        23 |        24 |       949 |
|                    Δ                     |       -20 |       -20 |       -20 |       -20 |       -20 |       -20 |       -19 |       497 |
|              Improvement %               |        47 |        47 |        47 |        47 |        47 |        47 |        44 |       497 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       452 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       949 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       497 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       497 |

<p>
</details>

