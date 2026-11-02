
## Comparing results between 'freddy' and 'jbird'

```
Host 'Varuns-MacBook-Pro.local' with 16 'arm64' processors with 128 GB memory, running:
Darwin Kernel Version 27.0.0: Tue Aug 11 21:05:48 PDT 2026; root:xnu-13432.1.9~1/RELEASE_ARM64_T6041
```
## JBirdBenchmark

### Parse (1mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3036 |      3240 |      3273 |      3291 |      3312 |      3400 |      3445 |       306 |
|                  jbird                   |      1333 |      1454 |      1465 |      1483 |      1508 |      1938 |      2143 |       675 |
|                    Δ                     |     -1703 |     -1786 |     -1808 |     -1808 |     -1804 |     -1462 |     -1302 |       369 |
|              Improvement %               |        56 |        55 |        55 |        55 |        54 |        43 |        38 |       369 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3039 |      3242 |      3275 |      3293 |      3316 |      3406 |      3446 |       306 |
|                  jbird                   |      1334 |      1456 |      1468 |      1485 |      1509 |      1940 |      2145 |       675 |
|                    Δ                     |     -1705 |     -1786 |     -1807 |     -1808 |     -1807 |     -1466 |     -1301 |       369 |
|              Improvement %               |        56 |        55 |        55 |        55 |        54 |        43 |        38 |       369 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       309 |       306 |       304 |       302 |       294 |       290 |       306 |
|                  jbird                   |       750 |       688 |       682 |       675 |       663 |       516 |       467 |       675 |
|                    Δ                     |       421 |       379 |       376 |       371 |       361 |       222 |       177 |       369 |
|              Improvement %               |       128 |       123 |       123 |       122 |       120 |        76 |        61 |       369 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        34 |        34 |        34 |        34 |       306 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       675 |
|                    Δ                     |         1 |         3 |         3 |         2 |         2 |         2 |         2 |       369 |
|              Improvement %               |        -3 |        -9 |        -9 |        -6 |        -6 |        -6 |        -6 |       369 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       306 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       306 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       675 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       306 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       675 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       306 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       675 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       369 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       369 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        66 |        66 |        67 |       306 |
|                  jbird                   |        31 |        31 |        31 |        31 |        31 |        32 |        33 |       675 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -35 |       -34 |       -34 |       369 |
|              Improvement %               |        52 |        52 |        52 |        52 |        53 |        52 |        51 |       369 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       306 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       675 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       369 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3060 |      3234 |      3262 |      3281 |      3310 |      3361 |      3589 |       307 |
|                  jbird                   |      1361 |      1508 |      1520 |      1532 |      1550 |      1589 |      1661 |       656 |
|                    Δ                     |     -1699 |     -1726 |     -1742 |     -1749 |     -1760 |     -1772 |     -1928 |       349 |
|              Improvement %               |        56 |        53 |        53 |        53 |        53 |        53 |        54 |       349 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      3063 |      3236 |      3265 |      3285 |      3316 |      3363 |      3592 |       307 |
|                  jbird                   |      1363 |      1510 |      1521 |      1535 |      1554 |      1594 |      1663 |       656 |
|                    Δ                     |     -1700 |     -1726 |     -1744 |     -1750 |     -1762 |     -1769 |     -1929 |       349 |
|              Improvement %               |        56 |        53 |        53 |        53 |        53 |        53 |        54 |       349 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       327 |       309 |       307 |       305 |       302 |       298 |       279 |       307 |
|                  jbird                   |       735 |       663 |       658 |       653 |       645 |       629 |       602 |       656 |
|                    Δ                     |       408 |       354 |       351 |       348 |       343 |       331 |       323 |       349 |
|              Improvement %               |       125 |       115 |       114 |       114 |       114 |       111 |       116 |       349 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       307 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       656 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       349 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       349 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       307 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       307 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       656 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       307 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       656 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       307 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       656 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       349 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       349 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        67 |        67 |        68 |       307 |
|                  jbird                   |        32 |        32 |        32 |        32 |        33 |        33 |        34 |       656 |
|                    Δ                     |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       349 |
|              Improvement %               |        52 |        52 |        52 |        52 |        51 |        51 |        50 |       349 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       307 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       656 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       349 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       719 |       799 |       802 |       808 |       817 |       844 |       909 |      1238 |
|                  jbird                   |       331 |       364 |       367 |       372 |       377 |       398 |       447 |      2688 |
|                    Δ                     |      -388 |      -435 |      -435 |      -436 |      -440 |      -446 |      -462 |      1450 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        53 |        51 |      1450 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       720 |       800 |       804 |       810 |       820 |       846 |       903 |      1238 |
|                  jbird                   |       333 |       365 |       369 |       373 |       379 |       400 |       451 |      2688 |
|                    Δ                     |      -387 |      -435 |      -435 |      -437 |      -441 |      -446 |      -452 |      1450 |
|              Improvement %               |        54 |        54 |        54 |        54 |        54 |        53 |        50 |      1450 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1391 |      1252 |      1246 |      1238 |      1224 |      1185 |      1100 |      1238 |
|                  jbird                   |      3018 |      2751 |      2725 |      2693 |      2653 |      2513 |      2235 |      2688 |
|                    Δ                     |      1627 |      1499 |      1479 |      1455 |      1429 |      1328 |      1135 |      1450 |
|              Improvement %               |       117 |       120 |       119 |       118 |       117 |       112 |       103 |      1450 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1238 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2688 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1450 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1450 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1238 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2688 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1450 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1450 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1238 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2688 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1450 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1450 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1238 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2688 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1450 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1450 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1238 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2688 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1450 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1450 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     16335 |     16343 |     16343 |     16343 |     16392 |     16548 |     17117 |      1238 |
|                  jbird                   |      7841 |      7844 |      7848 |      7848 |      7860 |      7909 |      8285 |      2688 |
|                    Δ                     |     -8494 |     -8499 |     -8495 |     -8495 |     -8532 |     -8639 |     -8832 |      1450 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |      1450 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1238 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2688 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1450 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1450 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       726 |       807 |       810 |       815 |       827 |       850 |       871 |      1225 |
|                  jbird                   |       345 |       376 |       381 |       386 |       391 |       410 |       500 |      2597 |
|                    Δ                     |      -381 |      -431 |      -429 |      -429 |      -436 |      -440 |      -371 |      1372 |
|              Improvement %               |        52 |        53 |        53 |        53 |        53 |        52 |        43 |      1372 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       727 |       808 |       812 |       818 |       829 |       855 |       873 |      1225 |
|                  jbird                   |       347 |       378 |       383 |       388 |       393 |       413 |       487 |      2597 |
|                    Δ                     |      -380 |      -430 |      -429 |      -430 |      -436 |      -442 |      -386 |      1372 |
|              Improvement %               |        52 |        53 |        53 |        53 |        53 |        52 |        44 |      1372 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1378 |      1240 |      1235 |      1227 |      1210 |      1176 |      1148 |      1225 |
|                  jbird                   |      2898 |      2659 |      2623 |      2593 |      2557 |      2439 |      2001 |      2597 |
|                    Δ                     |      1520 |      1419 |      1388 |      1366 |      1347 |      1263 |       853 |      1372 |
|              Improvement %               |       110 |       114 |       112 |       111 |       111 |       107 |        74 |      1372 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1225 |
|                  jbird                   |        31 |        32 |        32 |        33 |        33 |        33 |        33 |      2597 |
|                    Δ                     |         0 |         1 |         1 |         2 |         2 |         2 |         2 |      1372 |
|              Improvement %               |         0 |        -3 |        -3 |        -6 |        -6 |        -6 |        -6 |      1372 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1225 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2597 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1225 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2597 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1225 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2597 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1372 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1225 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2597 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1372 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1372 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     16605 |     16613 |     16613 |     16622 |     16663 |     16810 |     16843 |      1225 |
|                  jbird                   |      8118 |      8122 |      8122 |      8122 |      8139 |      8192 |      8563 |      2597 |
|                    Δ                     |     -8487 |     -8491 |     -8491 |     -8500 |     -8524 |     -8618 |     -8280 |      1372 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        49 |      1372 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1225 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2597 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1372 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1372 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1468 |      1605 |      1612 |      1622 |      1638 |      1692 |      1727 |       618 |
|                  jbird                   |       653 |       717 |       723 |       730 |       742 |       769 |       825 |      1374 |
|                    Δ                     |      -815 |      -888 |      -889 |      -892 |      -896 |      -923 |      -902 |       756 |
|              Improvement %               |        56 |        55 |        55 |        55 |        55 |        55 |        52 |       756 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1469 |      1606 |      1614 |      1624 |      1640 |      1694 |      1729 |       618 |
|                  jbird                   |       655 |       719 |       726 |       732 |       743 |       770 |       827 |      1374 |
|                    Δ                     |      -814 |      -887 |      -888 |      -892 |      -897 |      -924 |      -902 |       756 |
|              Improvement %               |        55 |        55 |        55 |        55 |        55 |        55 |        52 |       756 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       681 |       624 |       621 |       617 |       610 |       591 |       579 |       618 |
|                  jbird                   |      1531 |      1395 |      1382 |      1370 |      1349 |      1302 |      1213 |      1374 |
|                    Δ                     |       850 |       771 |       761 |       753 |       739 |       711 |       634 |       756 |
|              Improvement %               |       125 |       124 |       123 |       122 |       121 |       120 |       109 |       756 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       618 |
|                  jbird                   |        32 |        33 |        33 |        34 |        34 |        34 |        34 |      1374 |
|                    Δ                     |         0 |         1 |         1 |         2 |         2 |         2 |         2 |       756 |
|              Improvement %               |         0 |        -3 |        -3 |        -6 |        -6 |        -6 |        -6 |       756 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       618 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1374 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       756 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       756 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       618 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1374 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       756 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       756 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       618 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1374 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       756 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       756 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       618 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1374 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       756 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       756 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       618 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1374 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       756 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        50 |       756 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       618 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1374 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       756 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       756 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1495 |      1620 |      1630 |      1641 |      1659 |      1692 |      1724 |       612 |
|                  jbird                   |       676 |       750 |       758 |       766 |       776 |       806 |       832 |      1312 |
|                    Δ                     |      -819 |      -870 |      -872 |      -875 |      -883 |      -886 |      -892 |       700 |
|              Improvement %               |        55 |        54 |        53 |        53 |        53 |        52 |        52 |       700 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1497 |      1622 |      1633 |      1644 |      1661 |      1694 |      1725 |       612 |
|                  jbird                   |       677 |       751 |       759 |       769 |       778 |       809 |       840 |      1312 |
|                    Δ                     |      -820 |      -871 |      -874 |      -875 |      -883 |      -885 |      -885 |       700 |
|              Improvement %               |        55 |        54 |        54 |        53 |        53 |        52 |        51 |       700 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       669 |       618 |       614 |       609 |       603 |       591 |       580 |       612 |
|                  jbird                   |      1480 |      1335 |      1320 |      1305 |      1289 |      1240 |      1202 |      1312 |
|                    Δ                     |       811 |       717 |       706 |       696 |       686 |       649 |       622 |       700 |
|              Improvement %               |       121 |       116 |       115 |       114 |       114 |       110 |       107 |       700 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       612 |
|                  jbird                   |        32 |        33 |        33 |        34 |        34 |        34 |        34 |      1312 |
|                    Δ                     |         0 |         1 |         1 |         2 |         2 |         2 |         2 |       700 |
|              Improvement %               |         0 |        -3 |        -3 |        -6 |        -6 |        -6 |        -6 |       700 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       612 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1312 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       700 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       700 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       612 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1312 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       700 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       700 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       612 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1312 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       700 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       700 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       612 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1312 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       700 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       700 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        34 |        34 |       612 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1312 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -18 |       -17 |       700 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        53 |        50 |       700 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       612 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1312 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       700 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       700 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     15556 |     15974 |     16048 |     16138 |     16212 |     16584 |     16584 |        63 |
|                  jbird                   |      6908 |      7168 |      7266 |      7365 |      7414 |      7578 |      7596 |       138 |
|                    Δ                     |     -8648 |     -8806 |     -8782 |     -8773 |     -8798 |     -9006 |     -8988 |        75 |
|              Improvement %               |        56 |        55 |        55 |        54 |        54 |        54 |        54 |        75 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     15553 |     15983 |     16056 |     16138 |     16212 |     16591 |     16591 |        63 |
|                  jbird                   |      6901 |      7172 |      7266 |      7369 |      7422 |      7586 |      7606 |       138 |
|                    Δ                     |     -8652 |     -8811 |     -8790 |     -8769 |     -8790 |     -9005 |     -8985 |        75 |
|              Improvement %               |        56 |        55 |        55 |        54 |        54 |        54 |        54 |        75 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        63 |        62 |        62 |        62 |        60 |        60 |        63 |
|                  jbird                   |       145 |       140 |       138 |       136 |       135 |       132 |       132 |       138 |
|                    Δ                     |        81 |        77 |        76 |        74 |        73 |        72 |        72 |        75 |
|              Improvement %               |       127 |       122 |       123 |       119 |       118 |       120 |       120 |        75 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        63 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       138 |
|                    Δ                     |        12 |        14 |        14 |        14 |        14 |        14 |        14 |        75 |
|              Improvement %               |       -27 |       -31 |       -31 |       -31 |       -31 |       -31 |       -31 |        75 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        63 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        63 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       138 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        75 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        75 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       327 |       327 |       327 |       327 |       327 |       329 |       329 |        63 |
|                  jbird                   |       157 |       157 |       157 |       157 |       157 |       158 |       159 |       138 |
|                    Δ                     |      -170 |      -170 |      -170 |      -170 |      -170 |      -171 |      -170 |        75 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        52 |        75 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        63 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       138 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        75 |

<p>
</details>

### Parse (5mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     15602 |     16081 |     16130 |     16245 |     16318 |     16451 |     16451 |        62 |
|                  jbird                   |      7061 |      7516 |      7574 |      7627 |      7696 |      8143 |      8284 |       132 |
|                    Δ                     |     -8541 |     -8565 |     -8556 |     -8618 |     -8622 |     -8308 |     -8167 |        70 |
|              Improvement %               |        55 |        53 |        53 |        53 |        53 |        51 |        50 |        70 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     15603 |     16097 |     16138 |     16253 |     16327 |     16459 |     16459 |        62 |
|                  jbird                   |      7062 |      7520 |      7578 |      7635 |      7700 |      8151 |      8291 |       132 |
|                    Δ                     |     -8541 |     -8577 |     -8560 |     -8618 |     -8627 |     -8308 |     -8168 |        70 |
|              Improvement %               |        55 |        53 |        53 |        53 |        53 |        50 |        50 |        70 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        62 |        62 |        62 |        61 |        61 |        61 |        62 |
|                  jbird                   |       142 |       133 |       132 |       131 |       130 |       123 |       121 |       132 |
|                    Δ                     |        78 |        71 |        70 |        69 |        69 |        62 |        60 |        70 |
|              Improvement %               |       122 |       115 |       113 |       111 |       113 |       102 |        98 |        70 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        45 |        45 |        45 |        45 |        45 |        45 |        62 |
|                  jbird                   |        56 |        59 |        59 |        59 |        59 |        59 |        59 |       132 |
|                    Δ                     |        12 |        14 |        14 |        14 |        14 |        14 |        14 |        70 |
|              Improvement %               |       -27 |       -31 |       -31 |       -31 |       -31 |       -31 |       -31 |        70 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        62 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        62 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        62 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        62 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       132 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        70 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        70 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       332 |       332 |       332 |       332 |       333 |       334 |       334 |        62 |
|                  jbird                   |       162 |       162 |       163 |       163 |       163 |       164 |       164 |       132 |
|                    Δ                     |      -170 |      -170 |      -169 |      -169 |      -170 |      -170 |      -170 |        70 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        70 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        62 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       132 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        70 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       176 |       199 |       200 |       202 |       206 |       220 |       235 |      4898 |
|                  jbird                   |        83 |        91 |        94 |        95 |        96 |       108 |       138 |     10341 |
|                    Δ                     |       -93 |      -108 |      -106 |      -107 |      -110 |      -112 |       -97 |      5443 |
|              Improvement %               |        53 |        54 |        53 |        53 |        53 |        51 |        41 |      5443 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       200 |       202 |       204 |       208 |       221 |       236 |      4898 |
|                  jbird                   |        85 |        93 |        96 |        96 |        98 |       110 |       141 |     10341 |
|                    Δ                     |       -93 |      -107 |      -106 |      -108 |      -110 |      -111 |       -95 |      5443 |
|              Improvement %               |        52 |        54 |        52 |        53 |        53 |        50 |        40 |      5443 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5667 |      5035 |      4999 |      4955 |      4863 |      4547 |      4261 |      4898 |
|                  jbird                   |     12000 |     10983 |     10647 |     10551 |     10423 |      9311 |      7220 |     10341 |
|                    Δ                     |      6333 |      5948 |      5648 |      5596 |      5560 |      4764 |      2959 |      5443 |
|              Improvement %               |       112 |       118 |       113 |       113 |       114 |       105 |        69 |      5443 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4898 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10341 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5443 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5443 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4898 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10341 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5443 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5443 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4898 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10341 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5443 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5443 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4898 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10341 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5443 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5443 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4898 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10341 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5443 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5443 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4072 |      4073 |      4076 |      4076 |      4090 |      4133 |      4287 |      4898 |
|                  jbird                   |      1962 |      1963 |      1964 |      1964 |      1967 |      1986 |      2081 |     10341 |
|                    Δ                     |     -2110 |     -2110 |     -2112 |     -2112 |     -2123 |     -2147 |     -2206 |      5443 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        51 |      5443 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4898 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10341 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5443 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5443 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       180 |       201 |       202 |       203 |       208 |       223 |       263 |      4851 |
|                  jbird                   |        86 |        95 |        97 |        97 |        99 |       110 |       134 |     10040 |
|                    Δ                     |       -94 |      -106 |      -105 |      -106 |      -109 |      -113 |      -129 |      5189 |
|              Improvement %               |        52 |        53 |        52 |        52 |        52 |        51 |        49 |      5189 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       181 |       203 |       204 |       205 |       210 |       224 |       265 |      4851 |
|                  jbird                   |        88 |        96 |        98 |        99 |       101 |       112 |       137 |     10040 |
|                    Δ                     |       -93 |      -107 |      -106 |      -106 |      -109 |      -112 |      -128 |      5189 |
|              Improvement %               |        51 |        53 |        52 |        52 |        52 |        50 |        48 |      5189 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5570 |      4979 |      4955 |      4923 |      4815 |      4495 |      3797 |      4851 |
|                  jbird                   |     11617 |     10583 |     10351 |     10271 |     10119 |      9079 |      7447 |     10040 |
|                    Δ                     |      6047 |      5604 |      5396 |      5348 |      5304 |      4584 |      3650 |      5189 |
|              Improvement %               |       109 |       113 |       109 |       109 |       110 |       102 |        96 |      5189 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4851 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10040 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5189 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5189 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4851 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10040 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5189 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5189 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4851 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10040 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5189 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5189 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4851 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10040 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5189 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5189 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4851 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |     10040 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5189 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5189 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4138 |      4139 |      4141 |      4141 |      4155 |      4198 |      4351 |      4851 |
|                  jbird                   |      2031 |      2032 |      2033 |      2034 |      2037 |      2052 |      2180 |     10040 |
|                    Δ                     |     -2107 |     -2107 |     -2108 |     -2107 |     -2118 |     -2146 |     -2171 |      5189 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        50 |      5189 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4851 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |     10040 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5189 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5189 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        80 |        90 |        97 |       100 |       100 |       110 |       139 |     10140 |
|                  jbird                   |       102 |       114 |       114 |       118 |       120 |       131 |       181 |      8377 |
|                    Δ                     |        22 |        24 |        17 |        18 |        20 |        21 |        42 |     -1763 |
|              Improvement %               |       -28 |       -27 |       -18 |       -18 |       -20 |       -19 |       -30 |     -1763 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        82 |        91 |        99 |       101 |       102 |       112 |       142 |     10140 |
|                  jbird                   |       103 |       116 |       116 |       119 |       122 |       133 |       184 |      8377 |
|                    Δ                     |        21 |        25 |        17 |        18 |        20 |        21 |        42 |     -1763 |
|              Improvement %               |       -26 |       -27 |       -17 |       -18 |       -20 |       -19 |       -30 |     -1763 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     12494 |     11167 |     10279 |     10023 |      9999 |      9087 |      7205 |     10140 |
|                  jbird                   |      9824 |      8783 |      8759 |      8511 |      8335 |      7627 |      5530 |      8377 |
|                    Δ                     |     -2670 |     -2384 |     -1520 |     -1512 |     -1664 |     -1460 |     -1675 |     -1763 |
|              Improvement %               |       -21 |       -21 |       -15 |       -15 |       -17 |       -16 |       -23 |     -1763 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10140 |
|                  jbird                   |        30 |        32 |        32 |        32 |        32 |        32 |        32 |      8377 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |     -1763 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |     -1763 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10140 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8377 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1763 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1763 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10140 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8377 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1763 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1763 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10140 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8377 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -1763 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -1763 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       507 |       507 |       507 |       507 |       507 |       507 |       507 |     10140 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      8377 |
|                    Δ                     |       651 |       651 |       651 |       651 |       651 |       651 |       651 |     -1763 |
|              Improvement %               |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |     -1763 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2646 |      2646 |      2646 |      2646 |      2646 |      2662 |      2833 |     10140 |
|                  jbird                   |      3329 |      3330 |      3330 |      3330 |      3332 |      3346 |      3765 |      8377 |
|                    Δ                     |       683 |       684 |       684 |       684 |       686 |       684 |       932 |     -1763 |
|              Improvement %               |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |       -33 |     -1763 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     10140 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      8377 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -1763 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -1763 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8360 |      8692 |      8774 |      8831 |      8929 |      9093 |      9122 |       114 |
|                  jbird                   |      5615 |      5911 |      5980 |      6050 |      6119 |      6238 |      6281 |       167 |
|                    Δ                     |     -2745 |     -2781 |     -2794 |     -2781 |     -2810 |     -2855 |     -2841 |        53 |
|              Improvement %               |        33 |        32 |        32 |        31 |        31 |        31 |        31 |        53 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8367 |      8700 |      8782 |      8839 |      8937 |      9101 |      9124 |       114 |
|                  jbird                   |      5617 |      5915 |      5980 |      6058 |      6128 |      6238 |      6287 |       167 |
|                    Δ                     |     -2750 |     -2785 |     -2802 |     -2781 |     -2809 |     -2863 |     -2837 |        53 |
|              Improvement %               |        33 |        32 |        32 |        31 |        31 |        31 |        31 |        53 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       120 |       115 |       114 |       113 |       112 |       110 |       110 |       114 |
|                  jbird                   |       178 |       169 |       167 |       165 |       163 |       160 |       159 |       167 |
|                    Δ                     |        58 |        54 |        53 |        52 |        51 |        50 |        49 |        53 |
|              Improvement %               |        48 |        47 |        46 |        46 |        46 |        45 |        45 |        53 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        38 |        39 |        39 |        39 |        39 |        39 |       114 |
|                  jbird                   |        48 |        52 |        52 |        52 |        52 |        52 |        52 |       167 |
|                    Δ                     |        12 |        14 |        13 |        13 |        13 |        13 |        13 |        53 |
|              Improvement %               |       -33 |       -37 |       -33 |       -33 |       -33 |       -33 |       -33 |        53 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       114 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        53 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        53 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       114 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       167 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        53 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        53 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       114 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       167 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        53 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        53 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       114 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       167 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |        53 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        53 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       210 |       210 |       210 |       210 |       210 |       211 |       211 |       114 |
|                  jbird                   |       158 |       158 |       158 |       158 |       158 |       159 |       160 |       167 |
|                    Δ                     |       -52 |       -52 |       -52 |       -52 |       -52 |       -52 |       -51 |        53 |
|              Improvement %               |        25 |        25 |        25 |        25 |        25 |        25 |        24 |        53 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       114 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       167 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        53 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        53 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        51 |        59 |        60 |        60 |        61 |        70 |        95 |     15776 |
|                  jbird                   |        29 |        32 |        33 |        33 |        33 |        40 |        61 |     27786 |
|                    Δ                     |       -22 |       -27 |       -27 |       -27 |       -28 |       -30 |       -34 |     12010 |
|              Improvement %               |        43 |        46 |        45 |        45 |        46 |        43 |        36 |     12010 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        61 |        61 |        62 |        63 |        72 |        88 |     15776 |
|                  jbird                   |        30 |        34 |        34 |        35 |        35 |        42 |        56 |     27786 |
|                    Δ                     |       -23 |       -27 |       -27 |       -27 |       -28 |       -30 |       -32 |     12010 |
|              Improvement %               |        43 |        44 |        44 |        44 |        44 |        42 |        36 |     12010 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        20 |        17 |        17 |        17 |        16 |        14 |        11 |     15776 |
|                  jbird                   |        35 |        31 |        31 |        30 |        30 |        25 |        16 |     27786 |
|                    Δ                     |        15 |        14 |        14 |        13 |        14 |        11 |         5 |     12010 |
|              Improvement %               |        75 |        82 |        82 |        76 |        88 |        79 |        45 |     12010 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     15776 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     27786 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12010 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12010 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     15776 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     27786 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12010 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12010 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     15776 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     27786 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12010 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12010 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     15776 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     27786 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |     12010 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     12010 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        36 |        36 |        36 |        36 |        36 |        36 |     15776 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     27786 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     12010 |
|              Improvement %               |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |     12010 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1579 |      1579 |      1579 |      1579 |      1579 |      1596 |      1655 |     15776 |
|                  jbird                   |       739 |       739 |       739 |       739 |       739 |       757 |       804 |     27786 |
|                    Δ                     |      -840 |      -840 |      -840 |      -840 |      -840 |      -839 |      -851 |     12010 |
|              Improvement %               |        53 |        53 |        53 |        53 |        53 |        53 |        51 |     12010 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     15776 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     27786 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |     12010 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |     12010 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        94 |        95 |        97 |        98 |       109 |       142 |     10045 |
|                  jbird                   |        87 |        97 |        97 |        99 |       100 |       111 |       153 |      9878 |
|                    Δ                     |         3 |         3 |         2 |         2 |         2 |         2 |        11 |      -167 |
|              Improvement %               |        -4 |        -3 |        -2 |        -2 |        -2 |        -2 |        -8 |      -167 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        85 |        95 |        97 |        99 |       100 |       111 |       146 |     10045 |
|                  jbird                   |        88 |        99 |        99 |       100 |       102 |       113 |       156 |      9878 |
|                    Δ                     |         3 |         4 |         2 |         1 |         2 |         2 |        10 |      -167 |
|              Improvement %               |        -4 |        -4 |        -2 |        -1 |        -2 |        -2 |        -7 |      -167 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         7 |     10045 |
|                  jbird                   |        12 |        10 |        10 |        10 |        10 |         9 |         7 |      9878 |
|                    Δ                     |         0 |        -1 |         0 |         0 |         0 |         0 |         0 |      -167 |
|              Improvement %               |         0 |        -9 |         0 |         0 |         0 |         0 |         0 |      -167 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     10045 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9878 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -167 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10045 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9878 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -167 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     10045 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9878 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -167 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -167 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10045 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9878 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -167 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |      -167 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       522 |       522 |       522 |       522 |       522 |       522 |       522 |     10045 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9878 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       139 |      -167 |
|              Improvement %               |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |      -167 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2562 |      2564 |      2564 |      2564 |      2564 |      2607 |      2764 |     10045 |
|                  jbird                   |      2575 |      2576 |      2576 |      2576 |      2578 |      2589 |      2817 |      9878 |
|                    Δ                     |        13 |        12 |        12 |        12 |        14 |       -18 |        53 |      -167 |
|              Improvement %               |        -1 |         0 |         0 |         0 |        -1 |         1 |        -2 |      -167 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |     10045 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9878 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -167 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |      -167 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        72 |        73 |        74 |        74 |        84 |       116 |     13087 |
|                  jbird                   |        58 |        65 |        66 |        67 |        70 |        78 |       209 |     14338 |
|                    Δ                     |        -7 |        -7 |        -7 |        -7 |        -4 |        -6 |        93 |      1251 |
|              Improvement %               |        11 |        10 |        10 |         9 |         5 |         7 |       -80 |      1251 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        74 |        75 |        76 |        76 |        87 |       119 |     13087 |
|                  jbird                   |        60 |        67 |        68 |        69 |        71 |        80 |       197 |     14338 |
|                    Δ                     |        -6 |        -7 |        -7 |        -7 |        -5 |        -7 |        78 |      1251 |
|              Improvement %               |         9 |         9 |         9 |         9 |         7 |         8 |       -66 |      1251 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        14 |        14 |        14 |        13 |        12 |         9 |     13087 |
|                  jbird                   |        17 |        15 |        15 |        15 |        14 |        13 |         5 |     14338 |
|                    Δ                     |         2 |         1 |         1 |         1 |         1 |         1 |        -4 |      1251 |
|              Improvement %               |        13 |         7 |         7 |         7 |         8 |         8 |       -44 |      1251 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     13087 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     14338 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1251 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1251 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13087 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14338 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1251 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1251 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     13087 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14338 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1251 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1251 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13087 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14338 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1251 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      1251 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       245 |       245 |       245 |       245 |       245 |       245 |       245 |     13087 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     14338 |
|                    Δ                     |        84 |        84 |        84 |        84 |        84 |        84 |        84 |      1251 |
|              Improvement %               |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |      1251 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1552 |      1553 |      1553 |      1553 |      1553 |      1563 |      1659 |     13087 |
|                  jbird                   |      1588 |      1588 |      1588 |      1589 |      1589 |      1595 |      1750 |     14338 |
|                    Δ                     |        36 |        35 |        35 |        36 |        36 |        32 |        91 |      1251 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -5 |      1251 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     13087 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     14338 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1251 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      1251 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        97 |       109 |       110 |       111 |       113 |       124 |       146 |      8801 |
|                  jbird                   |         9 |        10 |        10 |        10 |        10 |        13 |        40 |     72754 |
|                    Δ                     |       -88 |       -99 |      -100 |      -101 |      -103 |      -111 |      -106 |     63953 |
|              Improvement %               |        91 |        91 |        91 |        91 |        91 |        90 |        73 |     63953 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        98 |       111 |       112 |       113 |       115 |       126 |       150 |      8801 |
|                  jbird                   |        10 |        12 |        12 |        12 |        12 |        15 |        38 |     72754 |
|                    Δ                     |       -88 |       -99 |      -100 |      -101 |      -103 |      -111 |      -112 |     63953 |
|              Improvement %               |        90 |        89 |        89 |        89 |        90 |        88 |        75 |     63953 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10349 |      9183 |      9095 |      9007 |      8847 |      8059 |      6836 |      8801 |
|                  jbird                   |    111620 |     98367 |     97599 |     96831 |     95679 |     76927 |     24870 |     72754 |
|                    Δ                     |    101271 |     89184 |     88504 |     87824 |     86832 |     68868 |     18034 |     63953 |
|              Improvement %               |       979 |       971 |       973 |       975 |       981 |       855 |       264 |     63953 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8801 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |     72754 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63953 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63953 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8801 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     72754 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63953 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63953 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8801 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     72754 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63953 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     63953 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8801 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     72754 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     63953 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     63953 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        71 |        71 |        71 |        71 |        71 |        71 |      8801 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     72754 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     63953 |
|              Improvement %               |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |     63953 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2041 |      2042 |      2042 |      2042 |      2047 |      2057 |      2117 |      8801 |
|                  jbird                   |       231 |       231 |       231 |       231 |       232 |       236 |       319 |     72754 |
|                    Δ                     |     -1810 |     -1811 |     -1811 |     -1811 |     -1815 |     -1821 |     -1798 |     63953 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        85 |     63953 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8801 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     72754 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     63953 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     63953 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2085 |      2222 |      2234 |      2249 |      2271 |      2341 |      2409 |       446 |
|                  jbird                   |      1045 |      1125 |      1137 |      1148 |      1162 |      1204 |      1293 |       876 |
|                    Δ                     |     -1040 |     -1097 |     -1097 |     -1101 |     -1109 |     -1137 |     -1116 |       430 |
|              Improvement %               |        50 |        49 |        49 |        49 |        49 |        49 |        46 |       430 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2087 |      2224 |      2236 |      2251 |      2275 |      2343 |      2411 |       446 |
|                  jbird                   |      1047 |      1127 |      1139 |      1150 |      1164 |      1204 |      1295 |       876 |
|                    Δ                     |     -1040 |     -1097 |     -1097 |     -1101 |     -1111 |     -1139 |     -1116 |       430 |
|              Improvement %               |        50 |        49 |        49 |        49 |        49 |        49 |        46 |       430 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       480 |       450 |       448 |       445 |       440 |       427 |       415 |       446 |
|                  jbird                   |       957 |       889 |       880 |       872 |       861 |       831 |       773 |       876 |
|                    Δ                     |       477 |       439 |       432 |       427 |       421 |       404 |       358 |       430 |
|              Improvement %               |        99 |        98 |        96 |        96 |        96 |        95 |        86 |       430 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        33 |        33 |        33 |        33 |        33 |        33 |       446 |
|                  jbird                   |        33 |        35 |        35 |        35 |        35 |        35 |        35 |       876 |
|                    Δ                     |         1 |         2 |         2 |         2 |         2 |         2 |         2 |       430 |
|              Improvement %               |        -3 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |       430 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       446 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       876 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       430 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       430 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       446 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       876 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       430 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       430 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       446 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       876 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       430 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       430 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |       446 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       876 |
|                    Δ                     |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |       430 |
|              Improvement %               |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |       430 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        43 |        43 |        43 |        43 |        43 |        43 |        43 |       446 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       876 |
|                    Δ                     |       -19 |       -19 |       -19 |       -19 |       -19 |       -18 |       -18 |       430 |
|              Improvement %               |        44 |        44 |        44 |        44 |        44 |        42 |        42 |       430 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       446 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       876 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       430 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       430 |

<p>
</details>

