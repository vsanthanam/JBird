## JBird vs Freddy

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2870 |      3131 |      3148 |      3164 |      3222 |      3346 |      3364 |       317 |
|                  jbird                   |      1259 |      1369 |      1380 |      1396 |      1437 |      1778 |      2432 |       715 |
|                    Δ                     |     -1611 |     -1762 |     -1768 |     -1768 |     -1785 |     -1568 |      -932 |       398 |
|              Improvement %               |        56 |        56 |        56 |        56 |        55 |        47 |        28 |       398 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2871 |      3135 |      3150 |      3166 |      3226 |      3348 |      3362 |       317 |
|                  jbird                   |      1260 |      1370 |      1382 |      1399 |      1439 |      1780 |      2439 |       715 |
|                    Δ                     |     -1611 |     -1765 |     -1768 |     -1767 |     -1787 |     -1568 |      -923 |       398 |
|              Improvement %               |        56 |        56 |        56 |        56 |        55 |        47 |        27 |       398 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       348 |       319 |       318 |       316 |       311 |       299 |       297 |       317 |
|                  jbird                   |       794 |       731 |       725 |       717 |       696 |       563 |       411 |       715 |
|                    Δ                     |       446 |       412 |       407 |       401 |       385 |       264 |       114 |       398 |
|              Improvement %               |       128 |       129 |       128 |       127 |       124 |        88 |        38 |       398 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       317 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       715 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       398 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       398 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       317 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       317 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       317 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       715 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       317 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       715 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       398 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       398 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        66 |        67 |       317 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        31 |        32 |       715 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -35 |       -35 |       398 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        52 |       398 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       317 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       715 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       398 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2946 |      3144 |      3172 |      3197 |      3238 |      3385 |      3409 |       315 |
|                  jbird                   |      1307 |      1422 |      1432 |      1445 |      1481 |      1569 |     11749 |       680 |
|                    Δ                     |     -1639 |     -1722 |     -1740 |     -1752 |     -1757 |     -1816 |      8340 |       365 |
|              Improvement %               |        56 |        55 |        55 |        55 |        54 |        54 |      -245 |       365 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2950 |      3148 |      3176 |      3201 |      3240 |      3389 |      3416 |       315 |
|                  jbird                   |      1308 |      1424 |      1434 |      1447 |      1483 |      1564 |      1615 |       680 |
|                    Δ                     |     -1642 |     -1724 |     -1742 |     -1754 |     -1757 |     -1825 |     -1801 |       365 |
|              Improvement %               |        56 |        55 |        55 |        55 |        54 |        54 |        53 |       365 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       339 |       318 |       315 |       313 |       309 |       296 |       293 |       315 |
|                  jbird                   |       765 |       703 |       699 |       692 |       675 |       638 |        85 |       680 |
|                    Δ                     |       426 |       385 |       384 |       379 |       366 |       342 |      -208 |       365 |
|              Improvement %               |       126 |       121 |       122 |       121 |       118 |       116 |       -71 |       365 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       315 |
|                  jbird                   |        34 |        36 |        39 |        39 |        39 |        39 |        39 |       680 |
|                    Δ                     |         1 |         3 |         6 |         6 |         6 |         6 |         6 |       365 |
|              Improvement %               |        -3 |        -9 |       -18 |       -18 |       -18 |       -18 |       -18 |       365 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       315 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       315 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       680 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       315 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       680 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       315 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       680 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       365 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       365 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        67 |        67 |        68 |       315 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       680 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -35 |       -35 |       -35 |       365 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |       365 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       315 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       680 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       365 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       689 |       764 |       770 |       776 |       787 |       865 |       900 |      1289 |
|                  jbird                   |       314 |       341 |       346 |       351 |       357 |       377 |       414 |      2857 |
|                    Δ                     |      -375 |      -423 |      -424 |      -425 |      -430 |      -488 |      -486 |      1568 |
|              Improvement %               |        54 |        55 |        55 |        55 |        55 |        56 |        54 |      1568 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       691 |       765 |       771 |       778 |       789 |       866 |       909 |      1289 |
|                  jbird                   |       316 |       343 |       347 |       353 |       359 |       379 |       407 |      2857 |
|                    Δ                     |      -375 |      -422 |      -424 |      -425 |      -430 |      -487 |      -502 |      1568 |
|              Improvement %               |        54 |        55 |        55 |        55 |        54 |        56 |        55 |      1568 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1451 |      1309 |      1300 |      1289 |      1271 |      1156 |      1111 |      1289 |
|                  jbird                   |      3181 |      2933 |      2895 |      2849 |      2807 |      2653 |      2415 |      2857 |
|                    Δ                     |      1730 |      1624 |      1595 |      1560 |      1536 |      1497 |      1304 |      1568 |
|              Improvement %               |       119 |       124 |       123 |       121 |       121 |       129 |       117 |      1568 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1289 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2857 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1568 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1568 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1289 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2857 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1568 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1568 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1289 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2857 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1568 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1568 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1289 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2857 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1568 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1568 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1289 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2857 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1568 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1568 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        17 |        17 |      1289 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2857 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |      1568 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        53 |        53 |      1568 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1289 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2857 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1568 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1568 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       714 |       782 |       787 |       794 |       803 |       882 |       907 |      1260 |
|                  jbird                   |       334 |       360 |       365 |       371 |       382 |       414 |       454 |      2699 |
|                    Δ                     |      -380 |      -422 |      -422 |      -423 |      -421 |      -468 |      -453 |      1439 |
|              Improvement %               |        53 |        54 |        54 |        53 |        52 |        53 |        50 |      1439 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       715 |       784 |       790 |       796 |       805 |       875 |       909 |      1260 |
|                  jbird                   |       335 |       361 |       366 |       373 |       384 |       415 |       451 |      2699 |
|                    Δ                     |      -380 |      -423 |      -424 |      -423 |      -421 |      -460 |      -458 |      1439 |
|              Improvement %               |        53 |        54 |        54 |        53 |        52 |        53 |        50 |      1439 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1400 |      1279 |      1270 |      1260 |      1246 |      1135 |      1102 |      1260 |
|                  jbird                   |      2998 |      2779 |      2745 |      2697 |      2617 |      2417 |      2201 |      2699 |
|                    Δ                     |      1598 |      1500 |      1475 |      1437 |      1371 |      1282 |      1099 |      1439 |
|              Improvement %               |       114 |       117 |       116 |       114 |       110 |       113 |       100 |      1439 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1260 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2699 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1439 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1439 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1260 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2699 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1439 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1439 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1260 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2699 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1439 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1439 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1260 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2699 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1439 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1439 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1260 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2699 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1439 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1439 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        17 |        17 |        17 |        17 |        17 |        17 |        17 |      1260 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2699 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |      1439 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        53 |      1439 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1260 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2699 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1439 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1439 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1392 |      1531 |      1540 |      1553 |      1575 |      1689 |      1761 |       646 |
|                  jbird                   |       626 |       686 |       694 |       702 |       712 |       765 |       811 |      1431 |
|                    Δ                     |      -766 |      -845 |      -846 |      -851 |      -863 |      -924 |      -950 |       785 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        54 |       785 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1394 |      1532 |      1542 |      1555 |      1578 |      1691 |      1763 |       646 |
|                  jbird                   |       627 |       688 |       695 |       704 |       714 |       766 |       816 |      1431 |
|                    Δ                     |      -767 |      -844 |      -847 |      -851 |      -864 |      -925 |      -947 |       785 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        54 |       785 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       718 |       654 |       649 |       644 |       635 |       592 |       568 |       646 |
|                  jbird                   |      1599 |      1458 |      1442 |      1425 |      1405 |      1308 |      1234 |      1431 |
|                    Δ                     |       881 |       804 |       793 |       781 |       770 |       716 |       666 |       785 |
|              Improvement %               |       123 |       123 |       122 |       121 |       121 |       121 |       117 |       785 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       646 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1431 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       785 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       785 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1431 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       785 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       785 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1431 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       785 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       785 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       646 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1431 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       785 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       785 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       646 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1431 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       785 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       785 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       646 |
|                  jbird                   |        15 |        15 |        15 |        15 |        16 |        16 |        16 |      1431 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -17 |       -17 |       -18 |       785 |
|              Improvement %               |        55 |        55 |        55 |        55 |        52 |        52 |        53 |       785 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       646 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1431 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       785 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       785 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1438 |      1574 |      1588 |      1601 |      1623 |      1746 |      1783 |       627 |
|                  jbird                   |       660 |       717 |       724 |       732 |       741 |       799 |       845 |      1372 |
|                    Δ                     |      -778 |      -857 |      -864 |      -869 |      -882 |      -947 |      -938 |       745 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        54 |        53 |       745 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1439 |      1576 |      1590 |      1604 |      1625 |      1748 |      1785 |       627 |
|                  jbird                   |       661 |       719 |       726 |       734 |       744 |       800 |       847 |      1372 |
|                    Δ                     |      -778 |      -857 |      -864 |      -870 |      -881 |      -948 |      -938 |       745 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        54 |        53 |       745 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       696 |       636 |       630 |       625 |       616 |       573 |       561 |       627 |
|                  jbird                   |      1515 |      1395 |      1382 |      1367 |      1349 |      1253 |      1184 |      1372 |
|                    Δ                     |       819 |       759 |       752 |       742 |       733 |       680 |       623 |       745 |
|              Improvement %               |       118 |       119 |       119 |       119 |       119 |       119 |       111 |       745 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       627 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1372 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       745 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       745 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       627 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       745 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       745 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       627 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       745 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       745 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       627 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1372 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       745 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       745 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       627 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1372 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       745 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       745 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        35 |       627 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1372 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -18 |       745 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        51 |       745 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       627 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1372 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       745 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       745 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         6 |         7 |         7 |         7 |         7 |         7 |         7 |       146 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        82 |
|              Improvement %               |        60 |        56 |        56 |        56 |        56 |        56 |        56 |        82 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         6 |         7 |         7 |         7 |         7 |         7 |         7 |       146 |
|                    Δ                     |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        82 |
|              Improvement %               |        60 |        56 |        56 |        56 |        56 |        56 |        56 |        82 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        64 |        63 |        63 |        62 |        61 |        61 |        64 |
|                  jbird                   |       155 |       147 |       145 |       144 |       143 |       139 |       139 |       146 |
|                    Δ                     |        89 |        83 |        82 |        81 |        81 |        78 |        78 |        82 |
|              Improvement %               |       135 |       130 |       130 |       129 |       131 |       128 |       128 |        82 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        56 |        58 |        58 |        76 |        76 |        76 |        76 |       146 |
|                    Δ                     |        12 |        13 |        13 |        31 |        31 |        31 |        31 |        82 |
|              Improvement %               |       -27 |       -29 |       -29 |       -69 |       -69 |       -69 |       -69 |        82 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       146 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       146 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       146 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        82 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        82 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       326 |       326 |       327 |       327 |       327 |       329 |       329 |        64 |
|                  jbird                   |       155 |       155 |       155 |       155 |       155 |       156 |       161 |       146 |
|                    Δ                     |      -171 |      -171 |      -172 |      -172 |      -172 |      -173 |      -168 |        82 |
|              Improvement %               |        52 |        52 |        53 |        53 |        53 |        53 |        51 |        82 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       146 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        82 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |        74 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        50 |        50 |        74 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -8 |        -8 |        74 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        50 |        50 |        74 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        64 |        63 |        62 |        62 |        61 |        61 |        64 |
|                  jbird                   |       148 |       139 |       138 |       137 |       135 |       133 |       133 |       138 |
|                    Δ                     |        83 |        75 |        75 |        75 |        73 |        72 |        72 |        74 |
|              Improvement %               |       128 |       117 |       119 |       121 |       118 |       118 |       118 |        74 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        56 |        58 |        58 |        58 |        58 |        58 |        58 |       138 |
|                    Δ                     |        12 |        13 |        13 |        13 |        13 |        13 |        13 |        74 |
|              Improvement %               |       -27 |       -29 |       -29 |       -29 |       -29 |       -29 |       -29 |        74 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        64 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        64 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       138 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        74 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        74 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       332 |       332 |       332 |       332 |       334 |       334 |        64 |
|                  jbird                   |       160 |       160 |       160 |       160 |       161 |       162 |       162 |       138 |
|                    Δ                     |      -172 |      -172 |      -172 |      -172 |      -171 |      -172 |      -172 |        74 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        51 |        51 |        74 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        64 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        74 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       175 |       190 |       196 |       198 |       203 |       230 |       273 |      5026 |
|                  jbird                   |        78 |        85 |        89 |        90 |        91 |       104 |       130 |     10974 |
|                    Δ                     |       -97 |      -105 |      -107 |      -108 |      -112 |      -126 |      -143 |      5948 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        52 |      5948 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       177 |       192 |       197 |       199 |       206 |       232 |       265 |      5026 |
|                  jbird                   |        80 |        86 |        90 |        91 |        92 |       106 |       128 |     10974 |
|                    Δ                     |       -97 |      -106 |      -107 |      -108 |      -114 |      -126 |      -137 |      5948 |
|              Improvement %               |        55 |        55 |        54 |        54 |        55 |        54 |        52 |      5948 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5703 |      5255 |      5115 |      5063 |      4919 |      4359 |      3666 |      5026 |
|                  jbird                   |     12780 |     11767 |     11295 |     11159 |     11023 |      9583 |      7722 |     10974 |
|                    Δ                     |      7077 |      6512 |      6180 |      6096 |      6104 |      5224 |      4056 |      5948 |
|              Improvement %               |       124 |       124 |       121 |       120 |       124 |       120 |       111 |      5948 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      5026 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10974 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5948 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5948 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5026 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10974 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5948 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5948 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5026 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10974 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5948 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5948 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5026 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10974 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5948 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5948 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      5026 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10974 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5948 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5948 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4067 |      4069 |      4069 |      4071 |      4086 |      4125 |      4331 |      5026 |
|                  jbird                   |      1936 |      1937 |      1938 |      1938 |      1942 |      1961 |      2070 |     10974 |
|                    Δ                     |     -2131 |     -2132 |     -2131 |     -2133 |     -2144 |     -2164 |     -2261 |      5948 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      5948 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      5026 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10974 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5948 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5948 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       177 |       194 |       198 |       202 |       207 |       225 |       318 |      4949 |
|                  jbird                   |        82 |        89 |        93 |        94 |        95 |       109 |       141 |     10477 |
|                    Δ                     |       -95 |      -105 |      -105 |      -108 |      -112 |      -116 |      -177 |      5528 |
|              Improvement %               |        54 |        54 |        53 |        53 |        54 |        52 |        56 |      5528 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       195 |       200 |       203 |       209 |       227 |       303 |      4949 |
|                  jbird                   |        84 |        91 |        95 |        95 |        97 |       111 |       143 |     10477 |
|                    Δ                     |       -94 |      -104 |      -105 |      -108 |      -112 |      -116 |      -160 |      5528 |
|              Improvement %               |        53 |        53 |        52 |        53 |        54 |        51 |        53 |      5528 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5652 |      5167 |      5047 |      4963 |      4827 |      4439 |      3148 |      4949 |
|                  jbird                   |     12121 |     11207 |     10759 |     10671 |     10487 |      9191 |      7082 |     10477 |
|                    Δ                     |      6469 |      6040 |      5712 |      5708 |      5660 |      4752 |      3934 |      5528 |
|              Improvement %               |       114 |       117 |       113 |       115 |       117 |       107 |       125 |      5528 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4949 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10477 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5528 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5528 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4949 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10477 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5528 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5528 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4949 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10477 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5528 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5528 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4949 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10477 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5528 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5528 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4949 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10477 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5528 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5528 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4135 |      4137 |      4137 |      4139 |      4153 |      4192 |      4218 |      4949 |
|                  jbird                   |      2005 |      2006 |      2007 |      2007 |      2010 |      2030 |      2125 |     10477 |
|                    Δ                     |     -2130 |     -2131 |     -2130 |     -2132 |     -2143 |     -2162 |     -2093 |      5528 |
|              Improvement %               |        52 |        52 |        51 |        52 |        52 |        52 |        50 |      5528 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4949 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10477 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5528 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5528 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        80 |        90 |        96 |       100 |       104 |       113 |       227 |     10064 |
|                  jbird                   |       108 |       122 |       125 |       128 |       134 |       147 |       172 |      7757 |
|                    Δ                     |        28 |        32 |        29 |        28 |        30 |        34 |       -55 |     -2307 |
|              Improvement %               |       -35 |       -36 |       -30 |       -28 |       -29 |       -30 |        24 |     -2307 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        81 |        92 |        97 |       102 |       106 |       115 |       194 |     10064 |
|                  jbird                   |       110 |       123 |       126 |       129 |       135 |       149 |       178 |      7757 |
|                    Δ                     |        29 |        31 |        29 |        27 |        29 |        34 |       -16 |     -2307 |
|              Improvement %               |       -36 |       -34 |       -30 |       -26 |       -27 |       -30 |         8 |     -2307 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         4 |     10064 |
|                  jbird                   |         9 |         8 |         8 |         8 |         7 |         7 |         6 |      7757 |
|                    Δ                     |        -3 |        -3 |        -2 |        -2 |        -3 |        -2 |         2 |     -2307 |
|              Improvement %               |       -25 |       -27 |       -20 |       -20 |       -30 |       -22 |        50 |     -2307 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        32 |        32 |     10064 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      7757 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         0 |         0 |     -2307 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |         0 |         0 |     -2307 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7757 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2307 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2307 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10064 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7757 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2307 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -2307 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10064 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7757 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -2307 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -2307 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       507 |       507 |       507 |       507 |       507 |       507 |       507 |     10064 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7757 |
|                    Δ                     |       651 |       651 |       651 |       651 |       651 |       651 |       651 |     -2307 |
|              Improvement %               |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |     -2307 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2646 |      2646 |      2646 |      2646 |      2646 |      2662 |      2846 |     10064 |
|                  jbird                   |      3571 |      3572 |      3572 |      3572 |      3574 |      3588 |      3991 |      7757 |
|                    Δ                     |       925 |       926 |       926 |       926 |       928 |       926 |      1145 |     -2307 |
|              Improvement %               |       -35 |       -35 |       -35 |       -35 |       -35 |       -35 |       -40 |     -2307 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10064 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7757 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -2307 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -2307 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      7951 |      8397 |      8479 |      8561 |      8634 |      9232 |     13039 |       118 |
|                  jbird                   |      5136 |      5399 |      5464 |      5501 |      5575 |      5706 |      5737 |       183 |
|                    Δ                     |     -2815 |     -2998 |     -3015 |     -3060 |     -3059 |     -3526 |     -7302 |        65 |
|              Improvement %               |        35 |        36 |        36 |        36 |        35 |        38 |        56 |        65 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      7948 |      8405 |      8487 |      8569 |      8643 |      9085 |      9232 |       118 |
|                  jbird                   |      5138 |      5399 |      5468 |      5505 |      5571 |      5710 |      5738 |       183 |
|                    Δ                     |     -2810 |     -3006 |     -3019 |     -3064 |     -3072 |     -3375 |     -3494 |        65 |
|              Improvement %               |        35 |        36 |        36 |        36 |        36 |        37 |        38 |        65 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       126 |       119 |       118 |       117 |       116 |       108 |        77 |       118 |
|                  jbird                   |       195 |       185 |       183 |       182 |       179 |       175 |       174 |       183 |
|                    Δ                     |        69 |        66 |        65 |        65 |        63 |        67 |        97 |        65 |
|              Improvement %               |        55 |        55 |        55 |        56 |        54 |        62 |       126 |        65 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        39 |        39 |        39 |        39 |        39 |        39 |       118 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       183 |
|                    Δ                     |        12 |        13 |        13 |        13 |        13 |        13 |        13 |        65 |
|              Improvement %               |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |        65 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       118 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        65 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        65 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       118 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       183 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        65 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        65 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       118 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        65 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        65 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       118 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       183 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |        65 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        65 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       209 |       209 |       209 |       209 |       209 |       210 |       211 |       118 |
|                  jbird                   |       153 |       153 |       153 |       153 |       153 |       154 |       154 |       183 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -56 |       -57 |        65 |
|              Improvement %               |        27 |        27 |        27 |        27 |        27 |        27 |        27 |        65 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       118 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       183 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        65 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        65 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        51 |        59 |        60 |        60 |        61 |        67 |        83 |     16024 |
|                  jbird                   |        28 |        29 |        32 |        32 |        32 |        40 |        83 |     29126 |
|                    Δ                     |       -23 |       -30 |       -28 |       -28 |       -29 |       -27 |         0 |     13102 |
|              Improvement %               |        45 |        51 |        47 |        47 |        48 |        40 |         0 |     13102 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        60 |        61 |        62 |        62 |        69 |        86 |     16024 |
|                  jbird                   |        29 |        31 |        33 |        33 |        34 |        42 |        69 |     29126 |
|                    Δ                     |       -24 |       -29 |       -28 |       -29 |       -28 |       -27 |       -17 |     13102 |
|              Improvement %               |        45 |        48 |        46 |        47 |        45 |        39 |        20 |     13102 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        19 |        17 |        17 |        17 |        17 |        15 |        12 |     16024 |
|                  jbird                   |        36 |        34 |        32 |        31 |        31 |        25 |        12 |     29126 |
|                    Δ                     |        17 |        17 |        15 |        14 |        14 |        10 |         0 |     13102 |
|              Improvement %               |        89 |       100 |        88 |        82 |        82 |        67 |         0 |     13102 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     16024 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     29126 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |     13102 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |     13102 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16024 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     29126 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13102 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13102 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     16024 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     29126 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13102 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13102 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     16024 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     29126 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |     13102 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     13102 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        36 |        36 |        36 |        36 |        36 |        36 |     16024 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     29126 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     13102 |
|              Improvement %               |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |     13102 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1575 |      1576 |      1576 |      1576 |      1576 |      1593 |      1642 |     16024 |
|                  jbird                   |       730 |       730 |       730 |       731 |       731 |       748 |       793 |     29126 |
|                    Δ                     |      -845 |      -846 |      -846 |      -845 |      -845 |      -845 |      -849 |     13102 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        53 |        52 |     13102 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     16024 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     29126 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |     13102 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     13102 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        95 |        96 |        96 |        99 |       115 |       135 |     10075 |
|                  jbird                   |        91 |        98 |       103 |       105 |       107 |       120 |       157 |      9484 |
|                    Δ                     |         6 |         3 |         7 |         9 |         8 |         5 |        22 |      -591 |
|              Improvement %               |        -7 |        -3 |        -7 |        -9 |        -8 |        -4 |       -16 |      -591 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        87 |        96 |        97 |        98 |       101 |       116 |       138 |     10075 |
|                  jbird                   |        92 |       100 |       104 |       106 |       109 |       122 |       158 |      9484 |
|                    Δ                     |         5 |         4 |         7 |         8 |         8 |         6 |        20 |      -591 |
|              Improvement %               |        -6 |        -4 |        -7 |        -8 |        -8 |        -5 |       -14 |      -591 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         7 |     10075 |
|                  jbird                   |        11 |        10 |        10 |        10 |         9 |         8 |         6 |      9484 |
|                    Δ                     |        -1 |        -1 |         0 |         0 |        -1 |        -1 |        -1 |      -591 |
|              Improvement %               |        -8 |        -9 |         0 |         0 |       -10 |       -11 |       -14 |      -591 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10075 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9484 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -591 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -591 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10075 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9484 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -591 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -591 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10075 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9484 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -591 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -591 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10075 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9484 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -591 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |      -591 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       522 |       522 |       522 |       522 |       522 |       522 |       522 |     10075 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9484 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       139 |      -591 |
|              Improvement %               |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |      -591 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2561 |      2562 |      2562 |      2562 |      2562 |      2605 |      2753 |     10075 |
|                  jbird                   |      2560 |      2560 |      2560 |      2562 |      2562 |      2578 |      2802 |      9484 |
|                    Δ                     |        -1 |        -2 |        -2 |         0 |         0 |       -27 |        49 |      -591 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         1 |        -2 |      -591 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10075 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9484 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -591 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |      -591 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        63 |        69 |        72 |        73 |        74 |        86 |       203 |     13387 |
|                  jbird                   |        59 |        66 |        68 |        71 |        74 |        83 |       132 |     13980 |
|                    Δ                     |        -4 |        -3 |        -4 |        -2 |         0 |        -3 |       -71 |       593 |
|              Improvement %               |         6 |         4 |         6 |         3 |         0 |         3 |        35 |       593 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        70 |        73 |        75 |        76 |        88 |       188 |     13387 |
|                  jbird                   |        60 |        67 |        70 |        72 |        75 |        86 |       133 |     13980 |
|                    Δ                     |        -5 |        -3 |        -3 |        -3 |        -1 |        -2 |       -55 |       593 |
|              Improvement %               |         8 |         4 |         4 |         4 |         1 |         2 |        29 |       593 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        15 |        14 |        14 |        13 |        12 |         5 |     13387 |
|                  jbird                   |        17 |        15 |        15 |        14 |        14 |        12 |         8 |     13980 |
|                    Δ                     |         1 |         0 |         1 |         0 |         1 |         0 |         3 |       593 |
|              Improvement %               |         6 |         0 |         7 |         0 |         8 |         0 |        60 |       593 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        31 |        31 |        31 |        31 |        31 |     13387 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13980 |
|                    Δ                     |         0 |         1 |         0 |         0 |         0 |         0 |         0 |       593 |
|              Improvement %               |         0 |        -3 |         0 |         0 |         0 |         0 |         0 |       593 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13387 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13980 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       593 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       593 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13387 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13980 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       593 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       593 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13387 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13980 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       593 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       593 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       245 |       245 |       245 |       245 |       245 |       245 |       245 |     13387 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13980 |
|                    Δ                     |        84 |        84 |        84 |        84 |        84 |        84 |        84 |       593 |
|              Improvement %               |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       593 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1552 |      1553 |      1553 |      1553 |      1553 |      1563 |      1639 |     13387 |
|                  jbird                   |      1551 |      1552 |      1552 |      1552 |      1552 |      1562 |      1686 |     13980 |
|                    Δ                     |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |        47 |       593 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -3 |       593 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13387 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13980 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       593 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       593 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (ns) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        95 |       106 |       109 |       111 |       115 |       131 |       270 |      8897 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        47 |     75900 |
|                    Δ                     |       -86 |       -96 |       -99 |      -101 |      -105 |      -118 |      -223 |     67003 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        90 |        83 |     67003 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        96 |       107 |       111 |       113 |       117 |       131 |       171 |      8897 |
|                  jbird                   |        10 |        11 |        12 |        12 |        12 |        15 |        40 |     75900 |
|                    Δ                     |       -86 |       -96 |       -99 |      -101 |      -105 |      -116 |      -131 |     67003 |
|              Improvement %               |        90 |        90 |        89 |        89 |        90 |        89 |        77 |     67003 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10526 |      9471 |      9159 |      9015 |      8695 |      7639 |      3700 |      8897 |
|                  jbird                   |    114286 |    103039 |     99647 |     98815 |     97983 |     77439 |     21108 |     75900 |
|                    Δ                     |    103760 |     93568 |     90488 |     89800 |     89288 |     69800 |     17408 |     67003 |
|              Improvement %               |       986 |       988 |       988 |       996 |      1027 |       914 |       470 |     67003 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8897 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     75900 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     67003 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     67003 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8897 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75900 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     67003 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     67003 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8897 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     75900 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     67003 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     67003 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8897 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75900 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     67003 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     67003 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        71 |        71 |        71 |        71 |        71 |        71 |      8897 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     75900 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     67003 |
|              Improvement %               |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |     67003 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2041 |      2042 |      2042 |      2042 |      2046 |      2059 |      2134 |      8897 |
|                  jbird                   |       230 |       230 |       230 |       230 |       230 |       235 |       278 |     75900 |
|                    Δ                     |     -1811 |     -1812 |     -1812 |     -1812 |     -1816 |     -1824 |     -1856 |     67003 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        87 |     67003 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8897 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     75900 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     67003 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     67003 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1970 |      2169 |      2181 |      2198 |      2241 |      2343 |      2383 |       456 |
|                  jbird                   |       951 |      1019 |      1027 |      1038 |      1060 |      1138 |      1205 |       965 |
|                    Δ                     |     -1019 |     -1150 |     -1154 |     -1160 |     -1181 |     -1205 |     -1178 |       509 |
|              Improvement %               |        52 |        53 |        53 |        53 |        53 |        51 |        49 |       509 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1971 |      2171 |      2183 |      2200 |      2245 |      2337 |      2384 |       456 |
|                  jbird                   |       953 |      1020 |      1029 |      1040 |      1061 |      1139 |      1208 |       965 |
|                    Δ                     |     -1018 |     -1151 |     -1154 |     -1160 |     -1184 |     -1198 |     -1176 |       509 |
|              Improvement %               |        52 |        53 |        53 |        53 |        53 |        51 |        49 |       509 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       508 |       461 |       459 |       455 |       447 |       427 |       420 |       456 |
|                  jbird                   |      1051 |       982 |       974 |       964 |       944 |       880 |       830 |       965 |
|                    Δ                     |       543 |       521 |       515 |       509 |       497 |       453 |       410 |       509 |
|              Improvement %               |       107 |       113 |       112 |       112 |       111 |       106 |        98 |       509 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       456 |
|                  jbird                   |        32 |        35 |        35 |        35 |        35 |        35 |        35 |       965 |
|                    Δ                     |         0 |         3 |         3 |         3 |         3 |         3 |         3 |       509 |
|              Improvement %               |         0 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       509 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       456 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       965 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       509 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       509 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       456 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       965 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       509 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       509 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       456 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       965 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       509 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       509 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |       456 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       965 |
|                    Δ                     |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |       509 |
|              Improvement %               |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |       509 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        43 |        43 |        43 |        43 |        43 |        43 |       456 |
|                  jbird                   |        22 |        22 |        22 |        22 |        22 |        23 |        23 |       965 |
|                    Δ                     |       -21 |       -21 |       -21 |       -21 |       -21 |       -20 |       -20 |       509 |
|              Improvement %               |        49 |        49 |        49 |        49 |        49 |        47 |        47 |       509 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       456 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       965 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       509 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       509 |

<p>
</details>

