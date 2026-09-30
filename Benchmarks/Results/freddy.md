
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
|                  freddy                  |      2926 |      3172 |      3193 |      3228 |      3289 |      3793 |      4256 |       310 |
|                  jbird                   |      1295 |      1449 |      1462 |      1501 |      1550 |      1718 |      1782 |       671 |
|                    Δ                     |     -1631 |     -1723 |     -1731 |     -1727 |     -1739 |     -2075 |     -2474 |       361 |
|              Improvement %               |        56 |        54 |        54 |        54 |        53 |        55 |        58 |       361 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2930 |      3178 |      3199 |      3232 |      3297 |      3801 |      4267 |       310 |
|                  jbird                   |      1305 |      1453 |      1467 |      1505 |      1560 |      1722 |      1786 |       671 |
|                    Δ                     |     -1625 |     -1725 |     -1732 |     -1727 |     -1737 |     -2079 |     -2481 |       361 |
|              Improvement %               |        55 |        54 |        54 |        53 |        53 |        55 |        58 |       361 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       342 |       315 |       313 |       310 |       304 |       264 |       235 |       310 |
|                  jbird                   |       772 |       690 |       684 |       666 |       645 |       582 |       561 |       671 |
|                    Δ                     |       430 |       375 |       371 |       356 |       341 |       318 |       326 |       361 |
|              Improvement %               |       126 |       119 |       119 |       115 |       112 |       120 |       139 |       361 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       310 |
|                  jbird                   |        34 |        39 |        39 |        39 |        39 |        39 |        39 |       671 |
|                    Δ                     |         1 |         6 |         6 |         6 |         6 |         6 |         6 |       361 |
|              Improvement %               |        -3 |       -18 |       -18 |       -18 |       -18 |       -18 |       -18 |       361 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       310 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       671 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       310 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       671 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       310 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       671 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       310 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       671 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       361 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       361 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        65 |        65 |        65 |        65 |        65 |        66 |       310 |
|                  jbird                   |        32 |        32 |        32 |        32 |        32 |        32 |        33 |       671 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       361 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        50 |       361 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       310 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       671 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       361 |

<p>
</details>

### Parse (1mb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2968 |      3254 |      3303 |      3373 |      3508 |      3688 |      3700 |       299 |
|                  jbird                   |      1390 |      1530 |      1537 |      1547 |      1563 |      1602 |      1673 |       646 |
|                    Δ                     |     -1578 |     -1724 |     -1766 |     -1826 |     -1945 |     -2086 |     -2027 |       347 |
|              Improvement %               |        53 |        53 |        53 |        54 |        55 |        57 |        55 |       347 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2987 |      3260 |      3308 |      3377 |      3512 |      3693 |      3709 |       299 |
|                  jbird                   |      1394 |      1534 |      1542 |      1553 |      1567 |      1608 |      1676 |       646 |
|                    Δ                     |     -1593 |     -1726 |     -1766 |     -1824 |     -1945 |     -2085 |     -2033 |       347 |
|              Improvement %               |        53 |        53 |        53 |        54 |        55 |        56 |        55 |       347 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       337 |       307 |       303 |       297 |       285 |       271 |       270 |       299 |
|                  jbird                   |       719 |       654 |       651 |       646 |       640 |       625 |       598 |       646 |
|                    Δ                     |       382 |       347 |       348 |       349 |       355 |       354 |       328 |       347 |
|              Improvement %               |       113 |       113 |       115 |       118 |       125 |       131 |       121 |       347 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        33 |       299 |
|                  jbird                   |        34 |        36 |        36 |        36 |        36 |        36 |        36 |       646 |
|                    Δ                     |         1 |         3 |         3 |         3 |         3 |         3 |         3 |       347 |
|              Improvement %               |        -3 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |       347 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       299 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       299 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       646 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       299 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       646 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |      2518 |       299 |
|                  jbird                   |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |      5232 |       646 |
|                    Δ                     |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |      2714 |       347 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |       347 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        66 |        66 |        66 |        66 |        66 |        66 |        66 |       299 |
|                  jbird                   |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       646 |
|                    Δ                     |       -33 |       -33 |       -33 |       -33 |       -33 |       -33 |       -32 |       347 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        48 |       347 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       299 |
|                  jbird                   |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       646 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       347 |

<p>
</details>

### Parse (256kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       718 |       791 |       797 |       804 |       815 |       847 |     10969 |      1229 |
|                  jbird                   |       329 |       367 |       372 |       377 |       385 |       412 |       797 |      2623 |
|                    Δ                     |      -389 |      -424 |      -425 |      -427 |      -430 |      -435 |    -10172 |      1394 |
|              Improvement %               |        54 |        54 |        53 |        53 |        53 |        51 |        93 |      1394 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       722 |       795 |       801 |       808 |       820 |       851 |       907 |      1229 |
|                  jbird                   |       333 |       371 |       376 |       382 |       389 |       418 |       540 |      2623 |
|                    Δ                     |      -389 |      -424 |      -425 |      -426 |      -431 |      -433 |      -367 |      1394 |
|              Improvement %               |        54 |        53 |        53 |        53 |        53 |        51 |        40 |      1394 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1392 |      1264 |      1255 |      1244 |      1228 |      1181 |        91 |      1229 |
|                  jbird                   |      3036 |      2725 |      2689 |      2651 |      2603 |      2427 |      1254 |      2623 |
|                    Δ                     |      1644 |      1461 |      1434 |      1407 |      1375 |      1246 |      1163 |      1394 |
|              Improvement %               |       118 |       116 |       114 |       113 |       112 |       106 |      1278 |      1394 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1229 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2623 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1394 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1394 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1229 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2623 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1394 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1394 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1229 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2623 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1394 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1394 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1229 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2623 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1394 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1394 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1229 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2623 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1394 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1394 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1229 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         8 |      2623 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |      1394 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        53 |      1394 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1229 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2623 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1394 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1394 |

<p>
</details>

### Parse (256kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       727 |       799 |       804 |       812 |       822 |       856 |       925 |      1230 |
|                  jbird                   |       344 |       384 |       389 |       395 |       402 |       426 |       460 |      2514 |
|                    Δ                     |      -383 |      -415 |      -415 |      -417 |      -420 |      -430 |      -465 |      1284 |
|              Improvement %               |        53 |        52 |        52 |        51 |        51 |        50 |        50 |      1284 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       730 |       802 |       808 |       816 |       827 |       858 |       929 |      1230 |
|                  jbird                   |       348 |       388 |       392 |       399 |       407 |       430 |       465 |      2514 |
|                    Δ                     |      -382 |      -414 |      -416 |      -417 |      -420 |      -428 |      -464 |      1284 |
|              Improvement %               |        52 |        52 |        51 |        51 |        51 |        50 |        50 |      1284 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1376 |      1252 |      1243 |      1232 |      1216 |      1168 |      1081 |      1230 |
|                  jbird                   |      2903 |      2607 |      2573 |      2533 |      2487 |      2349 |      2172 |      2514 |
|                    Δ                     |      1527 |      1355 |      1330 |      1301 |      1271 |      1181 |      1091 |      1284 |
|              Improvement %               |       111 |       108 |       107 |       106 |       105 |       101 |       101 |      1284 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        31 |        31 |        31 |        31 |        31 |        31 |      1230 |
|                  jbird                   |        31 |        32 |        32 |        32 |        32 |        32 |        32 |      2514 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |      1284 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      1284 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1230 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2514 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1284 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1284 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1230 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      2514 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1284 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1284 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1230 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2514 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1284 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1284 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       627 |       627 |       627 |       627 |       627 |       627 |       627 |      1230 |
|                  jbird                   |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      1374 |      2514 |
|                    Δ                     |       747 |       747 |       747 |       747 |       747 |       747 |       747 |      1284 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      1284 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        16 |        16 |        16 |        17 |        17 |        17 |      1230 |
|                  jbird                   |         8 |         8 |         8 |         8 |         8 |         8 |         9 |      2514 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -9 |        -9 |        -8 |      1284 |
|              Improvement %               |        50 |        50 |        50 |        50 |        53 |        53 |        47 |      1284 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      2650 |      1230 |
|                  jbird                   |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2642 |      2514 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |        -8 |      1284 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1284 |

<p>
</details>

### Parse (512kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1426 |      1561 |      1577 |      1592 |      1607 |      1650 |      1698 |       631 |
|                  jbird                   |       653 |       722 |       729 |       737 |       759 |       825 |       896 |      1350 |
|                    Δ                     |      -773 |      -839 |      -848 |      -855 |      -848 |      -825 |      -802 |       719 |
|              Improvement %               |        54 |        54 |        54 |        54 |        53 |        50 |        47 |       719 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1431 |      1566 |      1581 |      1596 |      1612 |      1655 |      1701 |       631 |
|                  jbird                   |       657 |       726 |       733 |       741 |       763 |       829 |       901 |      1350 |
|                    Δ                     |      -774 |      -840 |      -848 |      -855 |      -849 |      -826 |      -800 |       719 |
|              Improvement %               |        54 |        54 |        54 |        54 |        53 |        50 |        47 |       719 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       701 |       641 |       634 |       628 |       623 |       607 |       589 |       631 |
|                  jbird                   |      1530 |      1386 |      1373 |      1357 |      1317 |      1212 |      1116 |      1350 |
|                    Δ                     |       829 |       745 |       739 |       729 |       694 |       605 |       527 |       719 |
|              Improvement %               |       118 |       116 |       117 |       116 |       111 |       100 |        89 |       719 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       631 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1350 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       719 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       719 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       631 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1350 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       719 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       719 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       631 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1350 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       719 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       719 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       631 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1350 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       719 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       719 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       631 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1350 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       719 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       719 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        33 |        33 |       631 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1350 |
|                    Δ                     |       -16 |       -16 |       -16 |       -16 |       -16 |       -17 |       -16 |       719 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        52 |        48 |       719 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       631 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1350 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       719 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       719 |

<p>
</details>

### Parse (512kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1443 |      1586 |      1595 |      1617 |      1664 |      1722 |      1747 |       620 |
|                  jbird                   |       689 |       759 |       765 |       777 |       796 |       825 |       926 |      1286 |
|                    Δ                     |      -754 |      -827 |      -830 |      -840 |      -868 |      -897 |      -821 |       666 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        47 |       666 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1447 |      1590 |      1602 |      1622 |      1670 |      1732 |      1779 |       620 |
|                  jbird                   |       692 |       763 |       770 |       781 |       800 |       829 |       930 |      1286 |
|                    Δ                     |      -755 |      -827 |      -832 |      -841 |      -870 |      -903 |      -849 |       666 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        48 |       666 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       693 |       631 |       627 |       619 |       601 |       581 |       572 |       620 |
|                  jbird                   |      1451 |      1317 |      1306 |      1288 |      1257 |      1212 |      1080 |      1286 |
|                    Δ                     |       758 |       686 |       679 |       669 |       656 |       631 |       508 |       666 |
|              Improvement %               |       109 |       109 |       108 |       108 |       109 |       109 |        89 |       666 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        31 |        32 |        32 |        32 |        32 |        32 |        32 |       620 |
|                  jbird                   |        31 |        33 |        33 |        33 |        33 |        33 |        33 |      1286 |
|                    Δ                     |         0 |         1 |         1 |         1 |         1 |         1 |         1 |       666 |
|              Improvement %               |         0 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       666 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       620 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1286 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       666 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       666 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       620 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      1286 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       666 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       666 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       620 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1286 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       666 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       666 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |      1252 |       620 |
|                  jbird                   |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      2748 |      1286 |
|                    Δ                     |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |      1496 |       666 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |       666 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        33 |        33 |        33 |        33 |        33 |        33 |        34 |       620 |
|                  jbird                   |        16 |        16 |        16 |        16 |        16 |        16 |        17 |      1286 |
|                    Δ                     |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       -17 |       666 |
|              Improvement %               |        52 |        52 |        52 |        52 |        52 |        52 |        50 |       666 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |      5279 |       620 |
|                  jbird                   |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      5276 |      1286 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |       666 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       666 |

<p>
</details>

### Parse (5mb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        63 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        75 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        53 |        53 |        75 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        63 |
|                  jbird                   |         7 |         7 |         7 |         7 |         7 |         8 |         8 |       138 |
|                    Δ                     |        -8 |        -9 |        -9 |        -9 |        -9 |        -9 |        -9 |        75 |
|              Improvement %               |        53 |        56 |        56 |        56 |        56 |        53 |        53 |        75 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        63 |        63 |        62 |        62 |        58 |        58 |        63 |
|                  jbird                   |       147 |       140 |       138 |       137 |       134 |       128 |       127 |       138 |
|                    Δ                     |        82 |        77 |        75 |        75 |        72 |        70 |        69 |        75 |
|              Improvement %               |       126 |       122 |       119 |       121 |       116 |       121 |       119 |        75 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        44 |        44 |        44 |        44 |        44 |        44 |        63 |
|                  jbird                   |        55 |        58 |        58 |        58 |        58 |        58 |        58 |       138 |
|                    Δ                     |        11 |        14 |        14 |        14 |        14 |        14 |        14 |        75 |
|              Improvement %               |       -25 |       -32 |       -32 |       -32 |       -32 |       -32 |       -32 |        75 |

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
|                  freddy                  |       324 |       324 |       324 |       324 |       324 |       325 |       325 |        63 |
|                  jbird                   |       157 |       158 |       158 |       158 |       158 |       159 |       159 |       138 |
|                    Δ                     |      -167 |      -166 |      -166 |      -166 |      -166 |      -166 |      -166 |        75 |
|              Improvement %               |        52 |        51 |        51 |        51 |        51 |        51 |        51 |        75 |

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
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        63 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         9 |       129 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -8 |        66 |
|              Improvement %               |        53 |        50 |        50 |        50 |        50 |        53 |        47 |        66 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        15 |        16 |        16 |        16 |        16 |        17 |        17 |        63 |
|                  jbird                   |         7 |         8 |         8 |         8 |         8 |         8 |         9 |       129 |
|                    Δ                     |        -8 |        -8 |        -8 |        -8 |        -8 |        -9 |        -8 |        66 |
|              Improvement %               |        53 |        50 |        50 |        50 |        50 |        53 |        47 |        66 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        65 |        63 |        63 |        62 |        62 |        60 |        60 |        63 |
|                  jbird                   |       138 |       131 |       130 |       128 |       125 |       122 |       115 |       129 |
|                    Δ                     |        73 |        68 |        67 |        66 |        63 |        62 |        55 |        66 |
|              Improvement %               |       112 |       108 |       106 |       106 |       102 |       103 |        92 |        66 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        44 |        44 |        44 |        44 |        44 |        44 |        44 |        63 |
|                  jbird                   |        55 |        76 |        76 |        76 |        76 |        76 |        76 |       129 |
|                    Δ                     |        11 |        32 |        32 |        32 |        32 |        32 |        32 |        66 |
|              Improvement %               |       -25 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        66 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       129 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        63 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       129 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        63 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       129 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        12 |        12 |        12 |        12 |        12 |        12 |        63 |
|                  jbird                   |        25 |        25 |        25 |        25 |        25 |        25 |        25 |       129 |
|                    Δ                     |        13 |        13 |        13 |        13 |        13 |        13 |        13 |        66 |
|              Improvement %               |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |      -108 |        66 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       329 |       329 |       329 |       329 |       330 |       331 |       331 |        63 |
|                  jbird                   |       163 |       163 |       163 |       163 |       163 |       165 |       170 |       129 |
|                    Δ                     |      -166 |      -166 |      -166 |      -166 |      -167 |      -166 |      -161 |        66 |
|              Improvement %               |        50 |        50 |        50 |        50 |        51 |        50 |        49 |        66 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        53 |        53 |        53 |        53 |        53 |        53 |        63 |
|                  jbird                   |        53 |        53 |        53 |        53 |        53 |        53 |        53 |       129 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        66 |

<p>
</details>

### Parse (64kb) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       195 |       200 |       204 |       213 |       235 |       267 |      4802 |
|                  jbird                   |        83 |        92 |        94 |        94 |        97 |       109 |       149 |      9938 |
|                    Δ                     |       -95 |      -103 |      -106 |      -110 |      -116 |      -126 |      -118 |      5136 |
|              Improvement %               |        53 |        53 |        53 |        54 |        54 |        54 |        44 |      5136 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       182 |       199 |       203 |       207 |       217 |       239 |       272 |      4802 |
|                  jbird                   |        86 |        96 |        97 |        98 |       101 |       113 |       143 |      9938 |
|                    Δ                     |       -96 |      -103 |      -106 |      -109 |      -116 |      -126 |      -129 |      5136 |
|              Improvement %               |        53 |        52 |        52 |        53 |        53 |        53 |        47 |      5136 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5615 |      5127 |      5011 |      4919 |      4695 |      4267 |      3739 |      4802 |
|                  jbird                   |     12091 |     10823 |     10703 |     10591 |     10303 |      9175 |      6698 |      9938 |
|                    Δ                     |      6476 |      5696 |      5692 |      5672 |      5608 |      4908 |      2959 |      5136 |
|              Improvement %               |       115 |       111 |       114 |       115 |       119 |       115 |        79 |      5136 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4802 |
|                  jbird                   |        30 |        30 |        30 |        31 |        31 |        31 |        31 |      9938 |
|                    Δ                     |         0 |        -1 |        -1 |         0 |         0 |         0 |         0 |      5136 |
|              Improvement %               |         0 |         3 |         3 |         0 |         0 |         0 |         0 |      5136 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4802 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9938 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5136 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5136 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4802 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9938 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5136 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      5136 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4802 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9938 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5136 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5136 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4802 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9938 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      5136 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      5136 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4043 |      4045 |      4045 |      4045 |      4057 |      4096 |      4254 |      4802 |
|                  jbird                   |      1979 |      1979 |      1980 |      1980 |      1982 |      2010 |      2119 |      9938 |
|                    Δ                     |     -2064 |     -2066 |     -2065 |     -2065 |     -2075 |     -2086 |     -2135 |      5136 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        50 |      5136 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4802 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9938 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      5136 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      5136 |

<p>
</details>

### Parse (64kb-pretty) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       178 |       194 |       199 |       201 |       205 |       227 |       320 |      4865 |
|                  jbird                   |        87 |        97 |        99 |       102 |       106 |       116 |       189 |      9332 |
|                    Δ                     |       -91 |       -97 |      -100 |       -99 |       -99 |      -111 |      -131 |      4467 |
|              Improvement %               |        51 |        50 |        50 |        49 |        48 |        49 |        41 |      4467 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       181 |       198 |       203 |       205 |       209 |       230 |       309 |      4865 |
|                  jbird                   |        90 |       101 |       103 |       106 |       111 |       121 |       188 |      9332 |
|                    Δ                     |       -91 |       -97 |      -100 |       -99 |       -98 |      -109 |      -121 |      4467 |
|              Improvement %               |        50 |        49 |        49 |        48 |        47 |        47 |        39 |      4467 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      5627 |      5147 |      5031 |      4975 |      4883 |      4415 |      3120 |      4865 |
|                  jbird                   |     11500 |     10311 |     10127 |      9847 |      9431 |      8591 |      5297 |      9332 |
|                    Δ                     |      5873 |      5164 |      5096 |      4872 |      4548 |      4176 |      2177 |      4467 |
|              Improvement %               |       104 |       100 |       101 |        98 |        93 |        95 |        70 |      4467 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      4865 |
|                  jbird                   |        30 |        30 |        31 |        31 |        31 |        31 |        31 |      9332 |
|                    Δ                     |         0 |        -1 |         0 |         0 |         0 |         0 |         0 |      4467 |
|              Improvement %               |         0 |         3 |         0 |         0 |         0 |         0 |         0 |      4467 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4865 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9332 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4467 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4467 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4865 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9332 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4467 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      4467 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4865 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9332 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4467 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4467 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       157 |       157 |       157 |       157 |       157 |       157 |       157 |      4865 |
|                  jbird                   |       344 |       344 |       344 |       344 |       344 |       344 |       344 |      9332 |
|                    Δ                     |       187 |       187 |       187 |       187 |       187 |       187 |       187 |      4467 |
|              Improvement %               |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      -119 |      4467 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      4108 |      4110 |      4110 |      4110 |      4123 |      4162 |      4354 |      4865 |
|                  jbird                   |      2047 |      2048 |      2048 |      2049 |      2051 |      2078 |      2161 |      9332 |
|                    Δ                     |     -2061 |     -2062 |     -2062 |     -2061 |     -2072 |     -2084 |     -2193 |      4467 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      4467 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       674 |       674 |       674 |       674 |       674 |       674 |       674 |      4865 |
|                  jbird                   |       668 |       668 |       668 |       668 |       668 |       668 |       668 |      9332 |
|                    Δ                     |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |        -6 |      4467 |
|              Improvement %               |         1 |         1 |         1 |         1 |         1 |         1 |         1 |      4467 |

<p>
</details>

### Parse (array) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        81 |        91 |        97 |        98 |       102 |       112 |       140 |      9707 |
|                  jbird                   |       101 |       113 |       117 |       123 |       128 |       138 |       182 |      7937 |
|                    Δ                     |        20 |        22 |        20 |        25 |        26 |        26 |        42 |     -1770 |
|              Improvement %               |       -25 |       -24 |       -21 |       -26 |       -25 |       -23 |       -30 |     -1770 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        95 |       101 |       102 |       106 |       116 |       146 |      9707 |
|                  jbird                   |       104 |       117 |       121 |       127 |       132 |       143 |       187 |      7937 |
|                    Δ                     |        20 |        22 |        20 |        25 |        26 |        27 |        41 |     -1770 |
|              Improvement %               |       -24 |       -23 |       -20 |       -25 |       -25 |       -23 |       -28 |     -1770 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         7 |      9707 |
|                  jbird                   |        10 |         9 |         9 |         8 |         8 |         7 |         5 |      7937 |
|                    Δ                     |        -2 |        -2 |        -1 |        -2 |        -2 |        -2 |        -2 |     -1770 |
|              Improvement %               |       -17 |       -18 |       -10 |       -20 |       -20 |       -22 |       -29 |     -1770 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9707 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      7937 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1770 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1770 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9707 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7937 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1770 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1770 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9707 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      7937 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1770 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     -1770 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      9707 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7937 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -1770 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -1770 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       507 |       507 |       507 |       507 |       507 |       507 |       507 |      9707 |
|                  jbird                   |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      1158 |      7937 |
|                    Δ                     |       651 |       651 |       651 |       651 |       651 |       651 |       651 |     -1770 |
|              Improvement %               |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |      -128 |     -1770 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2636 |      2638 |      2638 |      2638 |      2638 |      2652 |      2834 |      9707 |
|                  jbird                   |      3320 |      3322 |      3322 |      3322 |      3324 |      3351 |      3774 |      7937 |
|                    Δ                     |       684 |       684 |       684 |       684 |       686 |       699 |       940 |     -1770 |
|              Improvement %               |       -26 |       -26 |       -26 |       -26 |       -26 |       -26 |       -33 |     -1770 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        14 |        14 |        14 |        14 |        14 |        14 |        14 |      9707 |
|                  jbird                   |        28 |        28 |        28 |        28 |        28 |        28 |        28 |      7937 |
|                    Δ                     |        14 |        14 |        14 |        14 |        14 |        14 |        14 |     -1770 |
|              Improvement %               |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |      -100 |     -1770 |

<p>
</details>

### Parse (canada) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8069 |      8479 |      8536 |      8618 |      8708 |      8880 |      8888 |       117 |
|                  jbird                   |      5824 |      5951 |      6107 |      6271 |      6390 |      6857 |      6884 |       163 |
|                    Δ                     |     -2245 |     -2528 |     -2429 |     -2347 |     -2318 |     -2023 |     -2004 |        46 |
|              Improvement %               |        28 |        30 |        28 |        27 |        27 |        23 |        23 |        46 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8082 |      8487 |      8544 |      8626 |      8716 |      8897 |      8897 |       117 |
|                  jbird                   |      5835 |      5960 |      6111 |      6279 |      6406 |      6861 |      6899 |       163 |
|                    Δ                     |     -2247 |     -2527 |     -2433 |     -2347 |     -2310 |     -2036 |     -1998 |        46 |
|              Improvement %               |        28 |        30 |        28 |        27 |        27 |        23 |        22 |        46 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       124 |       118 |       117 |       116 |       115 |       113 |       113 |       117 |
|                  jbird                   |       172 |       168 |       164 |       159 |       157 |       146 |       145 |       163 |
|                    Δ                     |        48 |        50 |        47 |        43 |        42 |        33 |        32 |        46 |
|              Improvement %               |        39 |        42 |        40 |        37 |        37 |        29 |        28 |        46 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        38 |        38 |        38 |        38 |        38 |        38 |       117 |
|                  jbird                   |        48 |        71 |        72 |        72 |        72 |        72 |        72 |       163 |
|                    Δ                     |        12 |        33 |        34 |        34 |        34 |        34 |        34 |        46 |
|              Improvement %               |       -33 |       -87 |       -89 |       -89 |       -89 |       -89 |       -89 |        46 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       117 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       163 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        46 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        46 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       117 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       163 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        46 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |        46 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|           Malloc (total) (K) *           |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       117 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       163 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        46 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        46 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (M) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        11 |        11 |        11 |        11 |        11 |        11 |        11 |       117 |
|                  jbird                   |        19 |        19 |        19 |        19 |        19 |        19 |        19 |       163 |
|                    Δ                     |         8 |         8 |         8 |         8 |         8 |         8 |         8 |        46 |
|              Improvement %               |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |       -73 |        46 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       215 |       215 |       215 |       215 |       215 |       216 |       217 |       117 |
|                  jbird                   |       159 |       159 |       159 |       159 |       159 |       161 |       164 |       163 |
|                    Δ                     |       -56 |       -56 |       -56 |       -56 |       -56 |       -55 |       -53 |        46 |
|              Improvement %               |        26 |        26 |        26 |        26 |        26 |        25 |        24 |        46 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|            Free (total) (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       114 |       114 |       114 |       114 |       114 |       114 |       114 |       117 |
|                  jbird                   |        56 |        56 |        56 |        56 |        56 |        56 |        56 |       163 |
|                    Δ                     |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |       -58 |        46 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |        46 |

<p>
</details>

### Parse (deeply-nested) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        53 |        60 |        60 |        61 |        62 |        70 |        93 |     14773 |
|                  jbird                   |        29 |        33 |        33 |        34 |        36 |        42 |        64 |     24709 |
|                    Δ                     |       -24 |       -27 |       -27 |       -27 |       -26 |       -28 |       -29 |      9936 |
|              Improvement %               |        45 |        45 |        45 |        44 |        42 |        40 |        31 |      9936 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        56 |        64 |        64 |        65 |        66 |        75 |        91 |     14773 |
|                  jbird                   |        32 |        36 |        37 |        38 |        40 |        47 |        66 |     24709 |
|                    Δ                     |       -24 |       -28 |       -27 |       -27 |       -26 |       -28 |       -25 |      9936 |
|              Improvement %               |        43 |        44 |        42 |        42 |        39 |        37 |        27 |      9936 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        19 |        17 |        17 |        16 |        16 |        14 |        11 |     14773 |
|                  jbird                   |        35 |        31 |        30 |        30 |        28 |        24 |        16 |     24709 |
|                    Δ                     |        16 |        14 |        13 |        14 |        12 |        10 |         5 |      9936 |
|              Improvement %               |        84 |        82 |        76 |        88 |        75 |        71 |        45 |      9936 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     14773 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     24709 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9936 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9936 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14773 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24709 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9936 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9936 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     14773 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     24709 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9936 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9936 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     14773 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24709 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      9936 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      9936 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        36 |        36 |        36 |        36 |        36 |        36 |        36 |     14773 |
|                  jbird                   |        91 |        91 |        91 |        91 |        91 |        91 |        91 |     24709 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |      9936 |
|              Improvement %               |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      -153 |      9936 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1586 |      1587 |      1587 |      1588 |      1588 |      1617 |      1692 |     14773 |
|                  jbird                   |       735 |       739 |       739 |       739 |       739 |       757 |       832 |     24709 |
|                    Δ                     |      -851 |      -848 |      -848 |      -849 |      -849 |      -860 |      -860 |      9936 |
|              Improvement %               |        54 |        53 |        53 |        53 |        53 |        53 |        51 |      9936 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       308 |       308 |       308 |       308 |       308 |       308 |       308 |     14773 |
|                  jbird                   |       154 |       154 |       154 |       154 |       154 |       154 |       154 |     24709 |
|                    Δ                     |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      -154 |      9936 |
|              Improvement %               |        50 |        50 |        50 |        50 |        50 |        50 |        50 |      9936 |

<p>
</details>

### Parse (integers) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        84 |        95 |        96 |        97 |        99 |       108 |       144 |      9685 |
|                  jbird                   |        87 |        98 |        99 |       104 |       107 |       119 |       149 |      9223 |
|                    Δ                     |         3 |         3 |         3 |         7 |         8 |        11 |         5 |      -462 |
|              Improvement %               |        -4 |        -3 |        -3 |        -7 |        -8 |       -10 |        -3 |      -462 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        88 |        99 |       100 |       101 |       103 |       113 |       150 |      9685 |
|                  jbird                   |        91 |       102 |       103 |       108 |       111 |       123 |       153 |      9223 |
|                    Δ                     |         3 |         3 |         3 |         7 |         8 |        10 |         3 |      -462 |
|              Improvement %               |        -3 |        -3 |        -3 |        -7 |        -8 |        -9 |        -2 |      -462 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        12 |        11 |        10 |        10 |        10 |         9 |         7 |      9685 |
|                  jbird                   |        11 |        10 |        10 |        10 |         9 |         8 |         7 |      9223 |
|                    Δ                     |        -1 |        -1 |         0 |         0 |        -1 |        -1 |         0 |      -462 |
|              Improvement %               |        -8 |        -9 |         0 |         0 |       -10 |       -11 |         0 |      -462 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9685 |
|                  jbird                   |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      9223 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -462 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -462 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9685 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9223 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -462 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -462 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9685 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      9223 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -462 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -462 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      9685 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9223 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -462 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |      -462 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       522 |       522 |       522 |       522 |       522 |       522 |       522 |      9685 |
|                  jbird                   |       661 |       661 |       661 |       661 |       661 |       661 |       661 |      9223 |
|                    Δ                     |       139 |       139 |       139 |       139 |       139 |       139 |       139 |      -462 |
|              Improvement %               |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |       -27 |      -462 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2566 |      2568 |      2568 |      2568 |      2568 |      2605 |      2761 |      9685 |
|                  jbird                   |      2571 |      2572 |      2572 |      2572 |      2574 |      2601 |      2813 |      9223 |
|                    Δ                     |         5 |         4 |         4 |         4 |         6 |        -4 |        52 |      -462 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |        -2 |      -462 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       216 |       216 |       216 |       216 |       216 |       216 |       216 |      9685 |
|                  jbird                   |        18 |        18 |        18 |        18 |        18 |        18 |        18 |      9223 |
|                    Δ                     |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -198 |      -462 |
|              Improvement %               |        92 |        92 |        92 |        92 |        92 |        92 |        92 |      -462 |

<p>
</details>

### Parse (numeric) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        64 |        71 |        72 |        76 |        76 |        86 |       159 |     12526 |
|                  jbird                   |        58 |        74 |        79 |        82 |        84 |        90 |       160 |     11618 |
|                    Δ                     |        -6 |         3 |         7 |         6 |         8 |         4 |         1 |      -908 |
|              Improvement %               |         9 |        -4 |       -10 |        -8 |       -11 |        -5 |        -1 |      -908 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        68 |        75 |        76 |        79 |        80 |        90 |       153 |     12526 |
|                  jbird                   |        61 |        78 |        84 |        86 |        89 |        95 |       157 |     11618 |
|                    Δ                     |        -7 |         3 |         8 |         7 |         9 |         5 |         4 |      -908 |
|              Improvement %               |        10 |        -4 |       -11 |        -9 |       -11 |        -6 |        -3 |      -908 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        16 |        14 |        14 |        13 |        13 |        12 |         6 |     12526 |
|                  jbird                   |        17 |        13 |        13 |        12 |        12 |        11 |         6 |     11618 |
|                    Δ                     |         1 |        -1 |        -1 |        -1 |        -1 |        -1 |         0 |      -908 |
|              Improvement %               |         6 |        -7 |        -7 |        -8 |        -8 |        -8 |         0 |      -908 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     12526 |
|                  jbird                   |        30 |        30 |        30 |        30 |        31 |        31 |        31 |     11618 |
|                    Δ                     |         0 |         0 |         0 |         0 |         1 |         1 |         1 |      -908 |
|              Improvement %               |         0 |         0 |         0 |         0 |        -3 |        -3 |        -3 |      -908 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12526 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11618 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -908 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -908 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     12526 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     11618 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -908 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      -908 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     12526 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11618 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      -908 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      -908 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       245 |       245 |       245 |       245 |       245 |       245 |       245 |     12526 |
|                  jbird                   |       329 |       329 |       329 |       329 |       329 |       329 |       329 |     11618 |
|                    Δ                     |        84 |        84 |        84 |        84 |        84 |        84 |        84 |      -908 |
|              Improvement %               |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |       -34 |      -908 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1544 |      1551 |      1551 |      1551 |      1551 |      1558 |      1663 |     12526 |
|                  jbird                   |      1582 |      1586 |      1586 |      1586 |      1589 |      1595 |      1732 |     11618 |
|                    Δ                     |        38 |        35 |        35 |        35 |        38 |        37 |        69 |      -908 |
|              Improvement %               |        -2 |        -2 |        -2 |        -2 |        -2 |        -2 |        -4 |      -908 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     12526 |
|                  jbird                   |        10 |        10 |        10 |        10 |        10 |        10 |        10 |     11618 |
|                    Δ                     |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |        -3 |      -908 |
|              Improvement %               |        23 |        23 |        23 |        23 |        23 |        23 |        23 |      -908 |

<p>
</details>

### Parse (strings) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        95 |       108 |       111 |       114 |       120 |       132 |       155 |      8406 |
|                  jbird                   |        10 |        11 |        11 |        11 |        12 |        14 |        39 |     53959 |
|                    Δ                     |       -85 |       -97 |      -100 |      -103 |      -108 |      -118 |      -116 |     45553 |
|              Improvement %               |        89 |        90 |        90 |        90 |        90 |        89 |        75 |     45553 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        99 |       112 |       115 |       118 |       124 |       137 |       157 |      8406 |
|                  jbird                   |        13 |        15 |        15 |        15 |        16 |        19 |        36 |     53959 |
|                    Δ                     |       -86 |       -97 |      -100 |      -103 |      -108 |      -118 |      -121 |     45553 |
|              Improvement %               |        87 |        87 |        87 |        87 |        87 |        86 |        77 |     45553 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (K)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |     10490 |      9231 |      9007 |      8751 |      8359 |      7563 |      6457 |      8406 |
|                  jbird                   |    102124 |     90239 |     88895 |     87295 |     82815 |     69183 |     25451 |     53959 |
|                    Δ                     |     91634 |     81008 |     79888 |     78544 |     74456 |     61620 |     18994 |     45553 |
|              Improvement %               |       874 |       878 |       887 |       898 |       891 |       815 |       294 |     45553 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        30 |        31 |        31 |        31 |        31 |        31 |        31 |      8406 |
|                  jbird                   |        30 |        30 |        30 |        30 |        30 |        30 |        30 |     53959 |
|                    Δ                     |         0 |        -1 |        -1 |        -1 |        -1 |        -1 |        -1 |     45553 |
|              Improvement %               |         0 |         3 |         3 |         3 |         3 |         3 |         3 |     45553 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8406 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     53959 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45553 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45553 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |      8406 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     53959 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45553 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |     45553 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8406 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     53959 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     45553 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     45553 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        71 |        71 |        71 |        71 |        71 |        71 |        71 |      8406 |
|                  jbird                   |       126 |       126 |       126 |       126 |       126 |       126 |       126 |     53959 |
|                    Δ                     |        55 |        55 |        55 |        55 |        55 |        55 |        55 |     45553 |
|              Improvement %               |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |       -77 |     45553 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (K) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2043 |      2044 |      2044 |      2044 |      2048 |      2074 |      2184 |      8406 |
|                  jbird                   |       223 |       234 |       234 |       234 |       234 |       238 |       296 |     53959 |
|                    Δ                     |     -1820 |     -1810 |     -1810 |     -1810 |     -1814 |     -1836 |     -1888 |     45553 |
|              Improvement %               |        89 |        89 |        89 |        89 |        89 |        89 |        86 |     45553 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        89 |        89 |        89 |        89 |        89 |        89 |        89 |      8406 |
|                  jbird                   |        77 |        77 |        77 |        77 |        77 |        77 |        77 |     53959 |
|                    Δ                     |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |       -12 |     45553 |
|              Improvement %               |        13 |        13 |        13 |        13 |        13 |        13 |        13 |     45553 |

<p>
</details>

### Parse (twitter) metrics

<details><summary>Time (wall clock): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (wall clock) (μs) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2062 |      2226 |      2290 |      2351 |      2439 |      2599 |      2649 |       432 |
|                  jbird                   |      1056 |      1133 |      1146 |      1199 |      1241 |      1316 |      1390 |       851 |
|                    Δ                     |     -1006 |     -1093 |     -1144 |     -1152 |     -1198 |     -1283 |     -1259 |       419 |
|              Improvement %               |        49 |        49 |        50 |        49 |        49 |        49 |        48 |       419 |

<p>
</details>

<details><summary>Time (total CPU): results within specified thresholds, fold down for details.</summary>
<p>

|         Time (total CPU) (μs) *          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      2066 |      2230 |      2296 |      2357 |      2443 |      2595 |      2664 |       432 |
|                  jbird                   |      1060 |      1137 |      1150 |      1203 |      1246 |      1317 |      1395 |       851 |
|                    Δ                     |     -1006 |     -1093 |     -1146 |     -1154 |     -1197 |     -1278 |     -1269 |       419 |
|              Improvement %               |        49 |        49 |        50 |        49 |        49 |        49 |        48 |       419 |

<p>
</details>

<details><summary>Throughput (# / s): results within specified thresholds, fold down for details.</summary>
<p>

|          Throughput (# / s) (#)          |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |       485 |       449 |       437 |       425 |       410 |       385 |       377 |       432 |
|                  jbird                   |       947 |       883 |       873 |       835 |       806 |       760 |       720 |       851 |
|                    Δ                     |       462 |       434 |       436 |       410 |       396 |       375 |       343 |       419 |
|              Improvement %               |        95 |        97 |       100 |        96 |        97 |        97 |        91 |       419 |

<p>
</details>

<details><summary>Memory (resident peak): results within specified thresholds, fold down for details.</summary>
<p>

|        Memory (resident peak) (M)        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        32 |        32 |        32 |        32 |        32 |        32 |        32 |       432 |
|                  jbird                   |        32 |        37 |        37 |        37 |        37 |        37 |        37 |       851 |
|                    Δ                     |         0 |         5 |         5 |         5 |         5 |         5 |         5 |       419 |
|              Improvement %               |         0 |       -16 |       -16 |       -16 |       -16 |       -16 |       -16 |       419 |

<p>
</details>

<details><summary>Malloc / free Δ (bytes): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc / free Δ (bytes) *         |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       432 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       851 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       419 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       419 |

<p>
</details>

<details><summary>Malloc / free Δ: results within specified thresholds, fold down for details.</summary>
<p>

|            Malloc / free Δ *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       432 |
|                  jbird                   |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       851 |
|                    Δ                     |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       419 |
|              Improvement %               |         0 |         0 |         0 |         0 |         0 |         0 |         0 |       419 |

<p>
</details>

<details><summary>Malloc (total): results within specified thresholds, fold down for details.</summary>
<p>

|             Malloc (total) *             |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       432 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       851 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       419 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       419 |

<p>
</details>

<details><summary>Malloc (bytes total): results within specified thresholds, fold down for details.</summary>
<p>

|        Malloc (bytes total) (K) *        |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |      1550 |       432 |
|                  jbird                   |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |      3911 |       851 |
|                    Δ                     |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |      2361 |       419 |
|              Improvement %               |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |      -152 |       419 |

<p>
</details>

<details><summary>Instructions: results within specified thresholds, fold down for details.</summary>
<p>

|            Instructions (M) *            |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |        42 |        42 |        42 |        42 |        43 |        43 |        43 |       432 |
|                  jbird                   |        24 |        24 |        24 |        24 |        24 |        25 |        25 |       851 |
|                    Δ                     |       -18 |       -18 |       -18 |       -18 |       -19 |       -18 |       -18 |       419 |
|              Improvement %               |        43 |        43 |        43 |        43 |        44 |        42 |        42 |       419 |

<p>
</details>

<details><summary>Free (total): results within specified thresholds, fold down for details.</summary>
<p>

|              Free (total) *              |        p0 |       p25 |       p50 |       p75 |       p90 |       p99 |      p100 |   Samples |
|:----------------------------------------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|----------:|
|                  freddy                  |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |      8187 |       432 |
|                  jbird                   |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |      4051 |       851 |
|                    Δ                     |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |     -4136 |       419 |
|              Improvement %               |        51 |        51 |        51 |        51 |        51 |        51 |        51 |       419 |

<p>
</details>

