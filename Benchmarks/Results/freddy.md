
## Comparing results between 'freddy' and 'jbird'

```
Host 'vsanthanam-HK4PYT74LG' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 25.6.0: Fri Jul 31 19:17:26 PDT 2026; root:xnu-12377.161.14~5/RELEASE_ARM64_T6041
```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2965 |      3142 |      3158 |      3185 |      3244 |      3662 |      3967 |       314 |
|                  jbird                   |      1301 |      1432 |      1443 |      1457 |      1481 |      1745 |      2072 |       685 |
|                    Δ                     |     -1664 |     -1710 |     -1715 |     -1728 |     -1763 |     -1917 |     -1895 |       371 |
|              Improvement %               |        56 |        54 |        54 |        54 |        54 |        52 |        48 |       371 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2969 |      3146 |      3162 |      3191 |      3250 |      3674 |      3976 |       314 |
|                  jbird                   |      1305 |      1436 |      1448 |      1462 |      1487 |      1749 |      2083 |       685 |
|                    Δ                     |     -1664 |     -1710 |     -1714 |     -1729 |     -1763 |     -1925 |     -1893 |       371 |
|              Improvement %               |        56 |        54 |        54 |        54 |        54 |        52 |        48 |       371 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       337 |       318 |       317 |       314 |       308 |       273 |       252 |       314 |
|                  jbird                   |       769 |       699 |       693 |       686 |       676 |       573 |       483 |       685 |
|                    Δ                     |       432 |       381 |       376 |       372 |       368 |       300 |       231 |       371 |
|              Improvement %               |       128 |       120 |       119 |       118 |       119 |       110 |        92 |       371 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       314 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       685 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       371 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       371 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       314 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       685 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       314 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       685 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       314 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       685 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       314 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       685 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       371 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       371 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        65 |        66 |       314 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       685 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       371 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        50 |       371 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       314 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       685 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       371 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2953 |      3172 |      3193 |      3211 |      3240 |      3308 |      3328 |       313 |
|                  jbird                   |      1352 |      1480 |      1490 |      1504 |      1521 |      1565 |      1646 |       667 |
|                    Δ                     |     -1601 |     -1692 |     -1703 |     -1707 |     -1719 |     -1743 |     -1682 |       354 |
|              Improvement %               |        54 |        53 |        53 |        53 |        53 |        53 |        51 |       354 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2964 |      3176 |      3199 |      3215 |      3248 |      3312 |      3331 |       313 |
|                  jbird                   |      1356 |      1483 |      1495 |      1510 |      1525 |      1569 |      1650 |       667 |
|                    Δ                     |     -1608 |     -1693 |     -1704 |     -1705 |     -1723 |     -1743 |     -1681 |       354 |
|              Improvement %               |        54 |        53 |        53 |        53 |        53 |        53 |        50 |       354 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       339 |       315 |       313 |       312 |       309 |       302 |       300 |       313 |
|                  jbird                   |       740 |       676 |       671 |       665 |       658 |       639 |       608 |       667 |
|                    Δ                     |       401 |       361 |       358 |       353 |       349 |       337 |       308 |       354 |
|              Improvement %               |       118 |       115 |       114 |       113 |       113 |       112 |       103 |       354 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        34 |        34 |        34 |       313 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       667 |
|                    Δ                     |         1 |         6 |         6 |         6 |         5 |         5 |         5 |       354 |
|              Improvement %               |        -3 |       -18 |       -18 |       -18 |       -15 |       -15 |       -15 |       354 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       313 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       667 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       313 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       667 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       313 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       667 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       313 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       667 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       354 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       354 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        66 |        67 |       313 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       667 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       354 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        49 |       354 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       313 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       667 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       354 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       706 |       773 |       780 |       788 |       798 |       834 |       923 |      1269 |
|                  jbird                   |       324 |       355 |       360 |       368 |       380 |       416 |       457 |      2698 |
|                    Δ                     |      -382 |      -418 |      -420 |      -420 |      -418 |      -418 |      -466 |      1429 |
|              Improvement %               |        54 |        54 |        54 |        53 |        52 |        50 |        50 |      1429 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       709 |       777 |       784 |       793 |       803 |       839 |       927 |      1269 |
|                  jbird                   |       327 |       359 |       364 |       373 |       384 |       420 |       460 |      2698 |
|                    Δ                     |      -382 |      -418 |      -420 |      -420 |      -419 |      -419 |      -467 |      1429 |
|              Improvement %               |        54 |        54 |        54 |        53 |        52 |        50 |        50 |      1429 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1417 |      1294 |      1282 |      1269 |      1253 |      1199 |      1083 |      1269 |
|                  jbird                   |      3090 |      2817 |      2775 |      2717 |      2631 |      2405 |      2188 |      2698 |
|                    Δ                     |      1673 |      1523 |      1493 |      1448 |      1378 |      1206 |      1105 |      1429 |
|              Improvement %               |       118 |       118 |       116 |       114 |       110 |       101 |       102 |      1429 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1269 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2698 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1429 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1429 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1269 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1429 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1269 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2698 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1429 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1269 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2698 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1429 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1269 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2698 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1429 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1429 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1269 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2698 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |      1429 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        53 |      1429 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1269 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2698 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1429 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1429 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       707 |       777 |       783 |       789 |       800 |       834 |       873 |      1264 |
|                  jbird                   |       346 |       380 |       385 |       392 |       403 |       421 |       457 |      2535 |
|                    Δ                     |      -361 |      -397 |      -398 |      -397 |      -397 |      -413 |      -416 |      1271 |
|              Improvement %               |        51 |        51 |        51 |        50 |        50 |        50 |        48 |      1271 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       710 |       781 |       787 |       793 |       804 |       839 |       883 |      1264 |
|                  jbird                   |       350 |       384 |       389 |       396 |       407 |       424 |       469 |      2535 |
|                    Δ                     |      -360 |      -397 |      -398 |      -397 |      -397 |      -415 |      -414 |      1271 |
|              Improvement %               |        51 |        51 |        51 |        50 |        49 |        49 |        47 |      1271 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1415 |      1288 |      1278 |      1268 |      1251 |      1200 |      1145 |      1264 |
|                  jbird                   |      2886 |      2631 |      2599 |      2555 |      2485 |      2379 |      2190 |      2535 |
|                    Δ                     |      1471 |      1343 |      1321 |      1287 |      1234 |      1179 |      1045 |      1271 |
|              Improvement %               |       104 |       104 |       103 |       101 |        99 |        98 |        91 |      1271 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1264 |
|                  jbird                   |        31 |        32 |        32 |        33 |        33 |        33 |        33 |      2535 |
|                    Δ                     |         0 |         1 |         1 |         2 |         2 |         2 |         2 |      1271 |
|              Improvement %               |         0 |        -3 |        -3 |        -6 |        -6 |        -6 |        -6 |      1271 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1264 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2535 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1271 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1271 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1264 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2535 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1271 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1271 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1264 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2535 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1271 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1271 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1264 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2535 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1271 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1271 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |      1264 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2535 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -8 |      1271 |
|              Improvement %               |        50 |        50 |        50 |        50 |        53 |        53 |        47 |      1271 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1264 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2535 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1271 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1271 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1429 |      1560 |      1569 |      1581 |      1602 |      1649 |      1693 |       634 |
|                  jbird                   |       665 |       726 |       732 |       739 |       748 |       784 |       838 |      1349 |
|                    Δ                     |      -764 |      -834 |      -837 |      -842 |      -854 |      -865 |      -855 |       715 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        52 |        51 |       715 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1433 |      1563 |      1573 |      1586 |      1607 |      1652 |      1697 |       634 |
|                  jbird                   |       669 |       730 |       736 |       743 |       753 |       789 |       841 |      1349 |
|                    Δ                     |      -764 |      -833 |      -837 |      -843 |      -854 |      -863 |      -856 |       715 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        52 |        50 |       715 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       700 |       642 |       638 |       633 |       625 |       607 |       591 |       634 |
|                  jbird                   |      1503 |      1378 |      1367 |      1354 |      1338 |      1276 |      1194 |      1349 |
|                    Δ                     |       803 |       736 |       729 |       721 |       713 |       669 |       603 |       715 |
|              Improvement %               |       115 |       115 |       114 |       114 |       114 |       110 |       102 |       715 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       634 |
|                  jbird                   |        32 |        34 |        34 |        34 |        34 |        35 |        35 |      1349 |
|                    Δ                     |         0 |         2 |         2 |         2 |         2 |         3 |         3 |       715 |
|              Improvement %               |         0 |        -6 |        -6 |        -6 |        -6 |        -9 |        -9 |       715 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       634 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       634 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1349 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       634 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1349 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       715 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       634 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1349 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       715 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       715 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       634 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1349 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -17 |       -16 |       715 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        52 |        48 |       715 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       634 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1349 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       715 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       715 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1436 |      1582 |      1590 |      1603 |      1623 |      1666 |      1708 |       625 |
|                  jbird                   |       689 |       756 |       760 |       765 |       772 |       800 |       828 |      1301 |
|                    Δ                     |      -747 |      -826 |      -830 |      -838 |      -851 |      -866 |      -880 |       676 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |       676 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1440 |      1586 |      1594 |      1608 |      1627 |      1672 |      1712 |       625 |
|                  jbird                   |       692 |       759 |       764 |       770 |       777 |       803 |       832 |      1301 |
|                    Δ                     |      -748 |      -827 |      -830 |      -838 |      -850 |      -869 |      -880 |       676 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |       676 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       697 |       632 |       629 |       624 |       616 |       601 |       585 |       625 |
|                  jbird                   |      1452 |      1324 |      1315 |      1307 |      1296 |      1251 |      1207 |      1301 |
|                    Δ                     |       755 |       692 |       686 |       683 |       680 |       650 |       622 |       676 |
|              Improvement %               |       108 |       109 |       109 |       109 |       110 |       108 |       106 |       676 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       625 |
|                  jbird                   |        32 |        34 |        34 |        34 |        34 |        34 |        34 |      1301 |
|                    Δ                     |         0 |         2 |         2 |         2 |         2 |         2 |         2 |       676 |
|              Improvement %               |         0 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       676 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       625 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1301 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       676 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       676 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       625 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1301 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       676 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       676 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       625 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1301 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       676 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       676 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       625 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1301 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       676 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       676 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       625 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1301 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -16 |       676 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        48 |       676 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       625 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1301 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       676 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       676 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       138 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        74 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        56 |        50 |        74 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        16 |        16 |        64 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         7 |         8 |       138 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -8 |        74 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        56 |        50 |        74 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        64 |        63 |        63 |        63 |        63 |        63 |        64 |
|                  jbird                   |       146 |       139 |       138 |       138 |       137 |       135 |       133 |       138 |
|                    Δ                     |        81 |        75 |        75 |        75 |        74 |        72 |        70 |        74 |
|              Improvement %               |       125 |       117 |       119 |       119 |       117 |       114 |       111 |        74 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        64 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       138 |
|                    Δ                     |        12 |        14 |        14 |        14 |        14 |        14 |        14 |        74 |
|              Improvement %               |       -27 |       -31 |       -31 |       -31 |       -31 |       -31 |       -31 |        74 |

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
|                  freddy                  |       324 |       324 |       324 |       324 |       324 |       325 |       325 |        64 |
|                  jbird                   |       157 |       158 |       158 |       158 |       158 |       158 |       159 |       138 |
|                    Δ                     |      -167 |      -166 |      -166 |      -166 |      -166 |      -167 |      -166 |        74 |
|              Improvement %               |        52 |        51 |        51 |        51 |        51 |        51 |        51 |        74 |

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

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        20 |        20 |        20 |        59 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       130 |
|                    Δ                     |        -9 |        -8 |        -8 |        -9 |       -12 |       -12 |       -12 |        71 |
|              Improvement %               |        56 |        50 |        50 |        53 |        60 |        60 |        60 |        71 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        17 |        20 |        20 |        20 |        59 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         8 |       130 |
|                    Δ                     |        -9 |        -8 |        -8 |        -9 |       -12 |       -12 |       -12 |        71 |
|              Improvement %               |        56 |        50 |        50 |        53 |        60 |        60 |        60 |        71 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        62 |        61 |        59 |        51 |        50 |        50 |        59 |
|                  jbird                   |       136 |       131 |       130 |       129 |       128 |       127 |       127 |       130 |
|                    Δ                     |        72 |        69 |        69 |        70 |        77 |        77 |        77 |        71 |
|              Improvement %               |       112 |       111 |       113 |       119 |       151 |       154 |       154 |        71 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        46 |        46 |        46 |        46 |        46 |        59 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       130 |
|                    Δ                     |        12 |        14 |        13 |        13 |        13 |        13 |        13 |        71 |
|              Improvement %               |       -27 |       -31 |       -28 |       -28 |       -28 |       -28 |       -28 |        71 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        59 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       130 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        59 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       130 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        59 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       130 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        59 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       130 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        71 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        71 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       329 |       329 |       329 |       330 |       330 |       330 |        59 |
|                  jbird                   |       163 |       163 |       163 |       163 |       163 |       164 |       165 |       130 |
|                    Δ                     |      -166 |      -166 |      -166 |      -166 |      -167 |      -166 |      -165 |        71 |
|              Improvement %               |        50 |        50 |        50 |        50 |        51 |        50 |        50 |        71 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        59 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       130 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        71 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       197 |       201 |       202 |       205 |       214 |       232 |      4819 |
|                  jbird                   |        84 |        94 |        95 |        96 |        99 |       114 |       128 |      9773 |
|                    Δ                     |       -96 |      -103 |      -106 |      -106 |      -106 |      -100 |      -104 |      4954 |
|              Improvement %               |        53 |        52 |        53 |        52 |        52 |        47 |        45 |      4954 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       184 |       201 |       204 |       206 |       209 |       219 |       236 |      4819 |
|                  jbird                   |        87 |        98 |        99 |       100 |       104 |       118 |       131 |      9773 |
|                    Δ                     |       -97 |      -103 |      -105 |      -106 |      -105 |      -101 |      -105 |      4954 |
|              Improvement %               |        53 |        51 |        51 |        51 |        50 |        46 |        44 |      4954 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5543 |      5071 |      4987 |      4943 |      4879 |      4667 |      4307 |      4819 |
|                  jbird                   |     11905 |     10655 |     10543 |     10439 |     10087 |      8791 |      7835 |      9773 |
|                    Δ                     |      6362 |      5584 |      5556 |      5496 |      5208 |      4124 |      3528 |      4954 |
|              Improvement %               |       115 |       110 |       111 |       111 |       107 |        88 |        82 |      4954 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4819 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9773 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4954 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4954 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4819 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9773 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4954 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4954 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4819 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9773 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4954 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4954 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4819 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9773 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4954 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4954 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4819 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9773 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      4954 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      4954 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4033 |      4043 |      4045 |      4045 |      4057 |      4096 |      4128 |      4819 |
|                  jbird                   |      1976 |      1977 |      1978 |      1979 |      1982 |      2009 |      2090 |      9773 |
|                    Δ                     |     -2057 |     -2066 |     -2067 |     -2066 |     -2075 |     -2087 |     -2038 |      4954 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        49 |      4954 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4819 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9773 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4954 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4954 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       183 |       200 |       203 |       205 |       207 |       217 |      9457 |      4720 |
|                  jbird                   |        87 |        98 |       100 |       101 |       104 |       122 |       266 |      9302 |
|                    Δ                     |       -96 |      -102 |      -103 |      -104 |      -103 |       -95 |     -9191 |      4582 |
|              Improvement %               |        52 |        51 |        51 |        51 |        50 |        44 |        97 |      4582 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       187 |       204 |       207 |       209 |       212 |       222 |       249 |      4720 |
|                  jbird                   |        90 |       102 |       103 |       105 |       109 |       125 |       245 |      9302 |
|                    Δ                     |       -97 |      -102 |      -104 |      -104 |      -103 |       -97 |        -4 |      4582 |
|              Improvement %               |        52 |        50 |        50 |        50 |        49 |        44 |         2 |      4582 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5455 |      4995 |      4927 |      4887 |      4823 |      4607 |       106 |      4720 |
|                  jbird                   |     11489 |     10199 |     10055 |      9911 |      9591 |      8231 |      3766 |      9302 |
|                    Δ                     |      6034 |      5204 |      5128 |      5024 |      4768 |      3624 |      3660 |      4582 |
|              Improvement %               |       111 |       104 |       104 |       103 |        99 |        79 |      3453 |      4582 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4720 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9302 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4582 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4582 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4720 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9302 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4582 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4582 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4720 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9302 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4582 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4582 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4720 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9302 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4582 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4582 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4720 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9302 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      4582 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      4582 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4108 |      4110 |      4110 |      4112 |      4123 |      4149 |      4207 |      4720 |
|                  jbird                   |      2039 |      2047 |      2048 |      2049 |      2051 |      2079 |      2159 |      9302 |
|                    Δ                     |     -2069 |     -2063 |     -2062 |     -2063 |     -2072 |     -2070 |     -2048 |      4582 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        49 |      4582 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4720 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9302 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4582 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4582 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        88 |       101 |       103 |       104 |       106 |       113 |       138 |      9132 |
|                  jbird                   |       101 |       114 |       114 |       118 |       119 |       124 |       254 |      8165 |
|                    Δ                     |        13 |        13 |        11 |        14 |        13 |        11 |       116 |      -967 |
|              Improvement %               |       -15 |       -13 |       -11 |       -13 |       -12 |       -10 |       -84 |      -967 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        94 |       104 |       107 |       108 |       110 |       118 |       177 |      9132 |
|                  jbird                   |       104 |       117 |       118 |       122 |       122 |       130 |       243 |      8165 |
|                    Δ                     |        10 |        13 |        11 |        14 |        12 |        12 |        66 |      -967 |
|              Improvement %               |       -11 |       -12 |       -10 |       -13 |       -11 |       -10 |       -37 |      -967 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     11342 |      9951 |      9703 |      9591 |      9471 |      8847 |      7264 |      9132 |
|                  jbird                   |      9946 |      8799 |      8759 |      8471 |      8431 |      8071 |      3937 |      8165 |
|                    Δ                     |     -1396 |     -1152 |      -944 |     -1120 |     -1040 |      -776 |     -3327 |      -967 |
|              Improvement %               |       -12 |       -12 |       -10 |       -12 |       -11 |        -9 |       -46 |      -967 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9132 |
|                  jbird                   |        30 |        32 |        32 |        33 |        33 |        33 |        33 |      8165 |
|                    Δ                     |         0 |         1 |         1 |         2 |         2 |         2 |         2 |      -967 |
|              Improvement %               |         0 |        -3 |        -3 |        -6 |        -6 |        -6 |        -6 |      -967 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9132 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8165 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -967 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -967 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9132 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8165 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -967 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -967 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      9132 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8165 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      -967 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -967 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       507 |       507 |       507 |       507 |       507 |       507 |       507 |      9132 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8165 |
|                    Δ                     |       651 |       651 |       651 |       651 |       651 |       651 |       651 |      -967 |
|              Improvement %               |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -967 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2636 |      2638 |      2638 |      2638 |      2638 |      2648 |      2854 |      9132 |
|                  jbird                   |      3311 |      3322 |      3322 |      3322 |      3324 |      3340 |      3744 |      8165 |
|                    Δ                     |       675 |       684 |       684 |       684 |       686 |       692 |       890 |      -967 |
|              Improvement %               |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |       -31 |      -967 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      9132 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8165 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      -967 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -967 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8334 |      8700 |      8831 |      8937 |      9077 |     10084 |     10627 |       113 |
|                  jbird                   |      5604 |      5849 |      5935 |      6001 |      6115 |      6324 |      6538 |       168 |
|                    Δ                     |     -2730 |     -2851 |     -2896 |     -2936 |     -2962 |     -3760 |     -4089 |        55 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        37 |        38 |        55 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8347 |      8708 |      8831 |      8946 |      9085 |     10101 |     10643 |       113 |
|                  jbird                   |      5608 |      5857 |      5939 |      6005 |      6119 |      6328 |      6551 |       168 |
|                    Δ                     |     -2739 |     -2851 |     -2892 |     -2941 |     -2966 |     -3773 |     -4092 |        55 |
|              Improvement %               |        33 |        33 |        33 |        33 |        33 |        37 |        38 |        55 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       120 |       115 |       113 |       112 |       110 |        99 |        94 |       113 |
|                  jbird                   |       178 |       171 |       169 |       167 |       164 |       158 |       153 |       168 |
|                    Δ                     |        58 |        56 |        56 |        55 |        54 |        59 |        59 |        55 |
|              Improvement %               |        48 |        49 |        50 |        49 |        49 |        60 |        63 |        55 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       113 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       168 |
|                    Δ                     |        12 |        14 |        14 |        14 |        14 |        14 |        14 |        55 |
|              Improvement %               |       -33 |       -37 |       -37 |       -37 |       -37 |       -37 |       -37 |        55 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       113 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       113 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       168 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        55 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       113 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       168 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        55 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        55 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       113 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       168 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |        55 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        55 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       215 |       215 |       215 |       215 |       215 |       215 |       216 |       113 |
|                  jbird                   |       159 |       159 |       159 |       159 |       159 |       160 |       160 |       168 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -55 |       -56 |        55 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        26 |        26 |        55 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       113 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       168 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        55 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        55 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        61 |        61 |        62 |        62 |        70 |       175 |     14639 |
|                  jbird                   |        29 |        33 |        33 |        34 |        35 |        42 |       108 |     24621 |
|                    Δ                     |       -24 |       -28 |       -28 |       -28 |       -27 |       -28 |       -67 |      9982 |
|              Improvement %               |        45 |        46 |        46 |        45 |        44 |        40 |        38 |      9982 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        57 |        64 |        65 |        65 |        66 |        75 |       163 |     14639 |
|                  jbird                   |        32 |        36 |        37 |        38 |        40 |        47 |       106 |     24621 |
|                    Δ                     |       -25 |       -28 |       -28 |       -27 |       -26 |       -28 |       -57 |      9982 |
|              Improvement %               |        44 |        44 |        43 |        42 |        39 |        37 |        35 |      9982 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        19 |        16 |        16 |        16 |        16 |        14 |         6 |     14639 |
|                  jbird                   |        35 |        31 |        30 |        30 |        28 |        24 |         9 |     24621 |
|                    Δ                     |        16 |        15 |        14 |        14 |        12 |        10 |         3 |      9982 |
|              Improvement %               |        84 |        94 |        88 |        88 |        75 |        71 |        50 |      9982 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     14639 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     24621 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9982 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9982 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14639 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24621 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9982 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9982 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14639 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24621 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9982 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9982 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     14639 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24621 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      9982 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      9982 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        36 |        36 |        36 |        36 |        36 |        36 |     14639 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     24621 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      9982 |
|              Improvement %               |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      9982 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1579 |      1587 |      1587 |      1587 |      1587 |      1617 |      1657 |     14639 |
|                  jbird                   |       726 |       739 |       739 |       739 |       739 |       757 |       816 |     24621 |
|                    Δ                     |      -853 |      -848 |      -848 |      -848 |      -848 |      -860 |      -841 |      9982 |
|              Improvement %               |        54 |        53 |        53 |        53 |        53 |        53 |        51 |      9982 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     14639 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24621 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      9982 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      9982 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        87 |        97 |        98 |        99 |       102 |       110 |       136 |      9458 |
|                  jbird                   |        88 |        98 |        99 |        99 |       101 |       111 |       148 |      9437 |
|                    Δ                     |         1 |         1 |         1 |         0 |        -1 |         1 |        12 |       -21 |
|              Improvement %               |        -1 |        -1 |        -1 |         0 |         1 |        -1 |        -9 |       -21 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        90 |       101 |       102 |       103 |       106 |       115 |       144 |      9458 |
|                  jbird                   |        91 |       102 |       102 |       103 |       105 |       115 |       154 |      9437 |
|                    Δ                     |         1 |         1 |         0 |         0 |        -1 |         0 |        10 |       -21 |
|              Improvement %               |        -1 |        -1 |         0 |         0 |         1 |         0 |        -7 |       -21 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        10 |        10 |        10 |        10 |         9 |         7 |      9458 |
|                  jbird                   |        11 |        10 |        10 |        10 |        10 |         9 |         7 |      9437 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9458 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9437 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9458 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9437 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9458 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9437 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       -21 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      9458 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9437 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       -21 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       -21 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       522 |       522 |       522 |       522 |       522 |       522 |       522 |      9458 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9437 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       139 |       -21 |
|              Improvement %               |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -21 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2563 |      2568 |      2568 |      2568 |      2568 |      2605 |      2759 |      9458 |
|                  jbird                   |      2571 |      2572 |      2572 |      2572 |      2572 |      2587 |      2840 |      9437 |
|                    Δ                     |         8 |         4 |         4 |         4 |         4 |       -18 |        81 |       -21 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         1 |        -3 |       -21 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      9458 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9437 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |       -21 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |       -21 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        72 |        73 |        76 |        77 |        82 |       106 |     12429 |
|                  jbird                   |        59 |        67 |        68 |        70 |        71 |        80 |       133 |     13311 |
|                    Δ                     |        -6 |        -5 |        -5 |        -6 |        -6 |        -2 |        27 |       882 |
|              Improvement %               |         9 |         7 |         7 |         8 |         8 |         2 |       -25 |       882 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        69 |        76 |        77 |        80 |        81 |        87 |       110 |     12429 |
|                  jbird                   |        62 |        71 |        72 |        73 |        75 |        84 |       148 |     13311 |
|                    Δ                     |        -7 |        -5 |        -5 |        -7 |        -6 |        -3 |        38 |       882 |
|              Improvement %               |        10 |         7 |         6 |         9 |         7 |         3 |       -35 |       882 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        14 |        14 |        13 |        13 |        12 |         9 |     12429 |
|                  jbird                   |        17 |        15 |        15 |        14 |        14 |        13 |         8 |     13311 |
|                    Δ                     |         2 |         1 |         1 |         1 |         1 |         1 |        -1 |       882 |
|              Improvement %               |        13 |         7 |         7 |         8 |         8 |         8 |       -11 |       882 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     12429 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13311 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       882 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       882 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12429 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13311 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       882 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       882 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12429 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13311 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       882 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       882 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     12429 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13311 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       882 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       882 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       245 |       245 |       245 |       245 |       245 |       245 |       245 |     12429 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     13311 |
|                    Δ                     |        84 |        84 |        84 |        84 |        84 |        84 |        84 |       882 |
|              Improvement %               |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       882 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1537 |      1550 |      1550 |      1550 |      1551 |      1558 |      1626 |     12429 |
|                  jbird                   |      1573 |      1586 |      1586 |      1586 |      1586 |      1593 |      1733 |     13311 |
|                    Δ                     |        36 |        36 |        36 |        36 |        35 |        35 |       107 |       882 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -7 |       882 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     12429 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     13311 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       882 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |       882 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        96 |       109 |       111 |       113 |       115 |       125 |       188 |      8499 |
|                  jbird                   |        10 |        11 |        11 |        11 |        11 |        14 |        36 |     56325 |
|                    Δ                     |       -86 |       -98 |      -100 |      -102 |      -104 |      -111 |      -152 |     47826 |
|              Improvement %               |        90 |        90 |        90 |        90 |        90 |        89 |        81 |     47826 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       100 |       112 |       115 |       116 |       119 |       130 |       242 |      8499 |
|                  jbird                   |        13 |        15 |        15 |        15 |        15 |        19 |        42 |     56325 |
|                    Δ                     |       -87 |       -97 |      -100 |      -101 |      -104 |      -111 |      -200 |     47826 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        85 |        83 |     47826 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10376 |      9191 |      9015 |      8871 |      8695 |      7979 |      5307 |      8499 |
|                  jbird                   |    103896 |     91647 |     90943 |     90239 |     88255 |     71871 |     27397 |     56325 |
|                    Δ                     |     93520 |     82456 |     81928 |     81368 |     79560 |     63892 |     22090 |     47826 |
|              Improvement %               |       901 |       897 |       909 |       917 |       915 |       801 |       416 |     47826 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8499 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     56325 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     47826 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     47826 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8499 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     56325 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     47826 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     47826 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8499 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     56325 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     47826 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     47826 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8499 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     56325 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     47826 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     47826 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        71 |        71 |        71 |        71 |        71 |        71 |      8499 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     56325 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     47826 |
|              Improvement %               |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |     47826 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2031 |      2045 |      2045 |      2045 |      2048 |      2074 |      2184 |      8499 |
|                  jbird                   |       225 |       234 |       234 |       234 |       234 |       238 |       296 |     56325 |
|                    Δ                     |     -1806 |     -1811 |     -1811 |     -1811 |     -1814 |     -1836 |     -1888 |     47826 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        86 |     47826 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8499 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     56325 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     47826 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     47826 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2052 |      2173 |      2189 |      2224 |      2314 |      2376 |      2438 |       451 |
|                  jbird                   |      1026 |      1111 |      1117 |      1126 |      1145 |      1190 |      1285 |       887 |
|                    Δ                     |     -1026 |     -1062 |     -1072 |     -1098 |     -1169 |     -1186 |     -1153 |       436 |
|              Improvement %               |        50 |        49 |        49 |        49 |        51 |        50 |        47 |       436 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2056 |      2177 |      2195 |      2228 |      2320 |      2384 |      2426 |       451 |
|                  jbird                   |      1029 |      1114 |      1121 |      1132 |      1150 |      1189 |      1288 |       887 |
|                    Δ                     |     -1027 |     -1063 |     -1074 |     -1096 |     -1170 |     -1195 |     -1138 |       436 |
|              Improvement %               |        50 |        49 |        49 |        49 |        50 |        50 |        47 |       436 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       487 |       460 |       457 |       450 |       432 |       421 |       410 |       451 |
|                  jbird                   |       975 |       901 |       895 |       888 |       874 |       841 |       778 |       887 |
|                    Δ                     |       488 |       441 |       438 |       438 |       442 |       420 |       368 |       436 |
|              Improvement %               |       100 |        96 |        96 |        97 |       102 |       100 |        90 |       436 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |       451 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       887 |
|                    Δ                     |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       436 |
|              Improvement %               |        -3 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       436 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       451 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       887 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       451 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       887 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       436 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       451 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       887 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       436 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       436 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |       451 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       887 |
|                    Δ                     |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |       436 |
|              Improvement %               |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |       436 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        42 |        42 |        42 |        42 |        43 |        43 |        43 |       451 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       887 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -19 |       -18 |       -18 |       436 |
|              Improvement %               |        43 |        43 |        43 |        43 |        44 |        42 |        42 |       436 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       451 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       887 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       436 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       436 |

<p>
</details>

